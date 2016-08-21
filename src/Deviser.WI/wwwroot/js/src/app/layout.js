﻿(function () {

    var app = angular.module('deviserLayout', [
    'ui.router',
    'ui.bootstrap',
    'dndLists',
    'sd.sdlib',
    'deviser.services',
    'deviser.config'
    ]);

    app.controller('LayoutCtrl', ['$scope', '$timeout', '$filter', '$q', 'globals', 'sdUtil', 'layoutService', 'pageService',
        'layoutTypeService', 'pageContentService', 'moduleService', 'pageModuleService', layoutCtrl]);


    ////////////////////////////////
    /*Function declarations only*/

    function layoutCtrl($scope, $timeout, $filter, $q, globals, sdUtil, layoutService, pageService,
        layoutTypeService, pageContentService, moduleService, pageModuleService) {
        var vm = this;

        SYS_ERROR_MSG = globals.appSettings.systemErrorMsg;
        vm.alerts = [];
        vm.pageLayout = {};
        vm.selectedItem = {}
        vm.deletedElements = [];
        vm.layoutAllowedTypes = ["9341f92e-83d8-4afe-ad4a-a95deeda9ae3", "5a0a5884-da84-4922-a02f-5828b55d5c92"] //Id of container and wrapper;

        //Function binding
        vm.newGuid = sdUtil.getGuid;
        vm.dragoverCallback = dragoverCallback;
        vm.dropCallback = dropCallback;
        vm.logListEvent = logListEvent;
        vm.logEvent = logEvent;
        vm.newLayout = newLayout;
        vm.selectLayout = selectLayout;
        vm.copyLayout = copyLayout;
        vm.saveLayout = saveLayout;
        vm.deleteLayout = deleteLayout;
        vm.selectItem = selectItem;
        vm.itemMoved = itemMoved;
        vm.deleteElement = deleteElement;

        //Init
        init();

        /////////////////////////////////////////////
        /*Function declarations only*/
        function init() {
            $q.all([
            getCurrentPage(),
            getLayouts(),
            getLayoutTypes()
            ]).then(function () {
                processLayoutTypes(vm.layoutTypes);
                if (vm.currentPage.layoutId) {
                    var selectedLayout = _.find(vm.layouts, function (layout) {
                        return layout.id === vm.currentPage.layoutId;
                    });
                    if (selectedLayout) {
                        selectLayout(selectedLayout);
                    }
                    else {
                        newLayout();
                    }
                }
            });
        }

        function getCurrentPage() {
            var defer = $q.defer();
            pageService.get(pageContext.currentPageId)
            .then(function (data) {
                vm.currentPage = data;
                defer.resolve('data received!');
            }, function (error) {
                showMessage("error", SYS_ERROR_MSG);
                defer.reject(SYS_ERROR_MSG);
            });
            return defer.promise;
        }

        function getLayouts() {
            var defer = $q.defer();
            layoutService.get()
            .then(function (layouts) {
                console.log(layouts);
                //Processing the data
                layouts = _.filter(layouts, { isDeleted: false });
                _.forEach(layouts, function (item) {
                    if (item && !item.placeHolders) {
                        item.placeHolders = [];
                    }
                });
                vm.layouts = layouts;
                defer.resolve('data received!');
            }, function (error) {
                showMessage("error", SYS_ERROR_MSG);
                defer.reject(SYS_ERROR_MSG);
            });
            return defer.promise;
        }

        function getLayoutTypes() {
            var defer = $q.defer();
            layoutTypeService.get()
            .then(function (data) {
                vm.layoutTypes = data;
                defer.resolve('data received!');
            }, function (error) {
                showMessage("error", SYS_ERROR_MSG);
                defer.reject(SYS_ERROR_MSG);
            });
            return defer.promise;
        }

        function processLayoutTypes(layoutTypes) {
            if (layoutTypes) {
                _.forEach(layoutTypes, function (layoutType) {
                    layoutType.layoutTypeId = layoutType.id;
                    layoutType.id = sdUtil.getGuid();
                    layoutType.placeHolders = [];
                    layoutType.layoutTypeIds = layoutType.layoutTypeIds.replace(/\s+/g, '');
                    layoutType.allowedTypes = (layoutType.layoutTypeIds) ? layoutType.layoutTypeIds.split(",") : "";
                    layoutType.type = layoutType.name;
                    if (layoutType.type === "column") {
                        layoutType.layoutTemplate = "column";
                    }
                    else if (layoutType.type === "container") {
                        layoutType.layoutTemplate = "container";
                    }
                    else if (layoutType.type === "row") {
                        layoutType.layoutTemplate = "row";
                    }
                    else {
                        layoutType.layoutTemplate = "repeater";
                    }
                });
            }
        }

        function newLayout() {
            vm.pageLayout = {};
            vm.pageLayout.id = undefined;
            vm.pageLayout.name = "";
            vm.pageLayout.isChanged = false;
            vm.pageLayout.placeHolders = [];
        }

        function selectLayout(layout) {
            vm.pageLayout = layout;
            vm.pageLayout.isChanged = true;
            processplaceHolders(vm.pageLayout.placeHolders);
        }

        function copyLayout() {
            vm.pageLayout.id = undefined;
            vm.pageLayout.name = "";
            vm.pageLayout.isChanged = true;
        }

        function saveLayout() {
            processplaceHolders(vm.pageLayout.placeHolders);

            //vm.pageLayout.config = JSON.stringify(vm.pageLayout.placeHolders);
            vm.pageLayout.pageId = pageContext.currentPageId;
            if (vm.pageLayout.id) {
                //Update layout
                layoutService.put(vm.pageLayout)
                .then(function (data) {
                    //console.log(data);
                    vm.pageLayout.id = data.id;
                    vm.pageLayout.placeHolders = data.placeHolders;
                    vm.pageLayout.isChanged = false;
                    showMessage("success", "Layout has been saved");
                    processplaceHolders(vm.pageLayout.placeHolders);
                }, function (error) {
                    showMessage("error", SYS_ERROR_MSG);
                });
            }
            else {
                //Create new layout
                layoutService.post(vm.pageLayout)
                .then(function (data) {
                    console.log(data);
                    vm.pageLayout.id = data.id;
                    vm.pageLayout.placeHolders = data.placeHolders;
                    vm.pageLayout.isChanged = false;
                    showMessage("success", "Layout has been saved");
                    getLayouts().then(function () {
                        processplaceHolders(vm.pageLayout.placeHolders);
                    });
                }, function (error) {
                    showMessage("error", SYS_ERROR_MSG);
                });
            }
        }

        function processplaceHolders(placeHolders) {
            if (placeHolders) {
                _.forEach(placeHolders, function (item, index) {
                    console.log(item)
                    var masterLayout = _.find(vm.layoutTypes, { layoutTypeId: item.layoutTypeId });
                    if (masterLayout) {
                        item.label = masterLayout.label;
                    }
                    
                    item.sortOrder = index + 1;

                    if (item.placeHolders) {
                        processplaceHolders(item.placeHolders);
                    }
                });
            }
        }

        function deleteLayout() {
            layoutService.remove(vm.pageLayout.id).then(function (data) {
                console.log(data);
                showMessage("success", "Layout has been removed");
                getLayouts();
                newLayout();
            }, function (error) {
                showMessage("error", SYS_ERROR_MSG);
            });
        }

        function selectItem(item) {
            var propertiesValue = item.properties;
            var masterLayout = _.find(vm.layoutTypes, { layoutTypeId: item.layoutTypeId });
            var masterProperties = masterLayout.properties;
            _.forEach(masterProperties, function (prop) {
                if (prop) {
                    var propVal = _.find(propertiesValue, { id: prop.id });
                    if (propVal) {
                        //Property exist, update property label
                        propVal.label = prop.label;
                        if (prop.propertyOptionList && prop.propertyOptionList.list) {
                            propVal.propertyOptionList = angular.fromJson(prop.propertyOptionList);
                        }
                    }
                    else {
                        //Property not exist, add the property
                        item.properties.push(angular.copy(prop));
                    }
                }
            });
            vm.selectedItem = item;
        }

        function dragoverCallback(event, index, item) {
            console.log(item)
            return index > 0;
        }

        function dropCallback(event, index, item) {
            //createElement(item);
            return item;
        }

        function deleteElement(event, index, item) {
            //deleteItem(item);
            return item;
        }

        function itemMoved(item, index) {
            item.placeHolders.splice(index, 1);
        }

        function logListEvent(action, event, index, external, type) {
            var message = external ? 'External ' : '';
            message += type + ' element is ' + action + ' position ' + index;
            vm.logEvent(message, event);
        }

        function logEvent(message, event) {
            console.log(message, '(triggered by the following', event.type, 'event)');
            console.log(event);
        }

        function showMessage(messageType, messageContent) {
            vm.message = {
                messageType: messageType,
                content: messageContent
            }

            $timeout(function () {
                vm.message = {
                    messageType: "",
                    content: ""
                };
            }, globals.appSettings.alertLifeTime);
        }

    }

}());
