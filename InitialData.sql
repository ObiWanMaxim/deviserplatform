USE [DeviserWI]
GO

INSERT [dbo].[Language] ([Id], [CreatedDate], [CultureCode], [EnglishName], [FallbackCulture], [IsActive], [LastModifiedDate], [NativeName]) VALUES (N'388b34ed-803a-48ad-6618-08d360bcd031', CAST(N'2016-04-09 23:20:37.487' AS DateTime), N'de-CH', N'German (Switzerland)', N'en-US', 1, CAST(N'2016-04-09 23:20:37.487' AS DateTime), N'Deutsch (Schweiz)')
GO
INSERT [dbo].[Language] ([Id], [CreatedDate], [CultureCode], [EnglishName], [FallbackCulture], [IsActive], [LastModifiedDate], [NativeName]) VALUES (N'1350c0b2-634e-4e81-6619-08d360bcd031', CAST(N'2016-04-09 23:24:04.597' AS DateTime), N'fr-CH', N'French (Switzerland)', N'en-US', 1, CAST(N'2016-04-09 23:24:04.597' AS DateTime), N'français (Suisse)')
GO
INSERT [dbo].[Language] ([Id], [CreatedDate], [CultureCode], [EnglishName], [FallbackCulture], [IsActive], [LastModifiedDate], [NativeName]) VALUES (N'4a8a96c4-b125-433a-b0b7-e8ddbcfaa381', NULL, N'en-US', N'English (United States)', N'en-US', 1, NULL, N'English (United States)')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'bc5c0288-2798-4c64-92f0-3210af2cd993', N'LoginPageId', N'62328d72-ad82-4de2-9a98-c954e5b30b28')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'b39359e5-f92d-4db0-8e67-39c9edc32796', N'SiteDesctiption', N'Modern pet shop')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'fcc0377f-1860-4ffc-956c-3b8d13acd63b', N'DefaultAdminTheme', N'[G]Skins/Skyline/Home.cshtml')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'd9187b0c-fdce-4a8f-9fbf-447a1b445207', N'SMTPPassword', N'SgSkyDev2016!')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'2ba57644-7a61-455b-986b-44deba9c3dec', N'SMTPServerAndPort', N'smtp.sendgrid.net:587')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'e90697bd-4932-4be0-9f55-4f9003aaa00e', N'DefaultLayoutId', N'd6471f27-716c-4f6f-a10b-4acef3fa4da3')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'b0b844c3-9ea6-4b39-81a3-50f886439bb8', N'SMTPUsername', N'azure_688fbdd4abe35655f5310f126dcc5fb8@azure.com')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'4adfa2cb-dfda-4395-b45f-6b899e5a860a', N'RegistrationPageId', N'51a79e31-9bb1-4fa7-4da6-08d3c2d166ce')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'3ff5cff7-3183-4f03-9d64-83778edb92dd', N'SiteName', N'Pet Shop')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'fd5b0a57-6876-47ea-b237-94951390061a', N'ConnectionLimit', NULL)
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'2b38fc22-a935-42c2-bc03-a0c5bccf4118', N'SiteAdminEmail', N'noreply@deviser.com')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'08c40572-06c6-4c12-932d-a1ba4a36710b', N'HomePageId', N'd5d5a9fd-511b-4025-b495-8908fb70c762')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'7161c7f6-53e3-492e-8075-a38fecb4a1fa', N'MaxIdleTime', NULL)
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'0a3bbfaf-e27e-48a6-b015-aa5d395a7a06', N'SMTPAuthentication', N'Basic')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'2806bd6b-6dec-4385-a568-af20a51d241c', N'DefaultAdminLayoutId', N'af8ecc7d-e300-41af-b55a-deeb097836d2')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'ebd27836-16b2-4135-86ec-cfbd5234f704', N'SiteRoot', N'/')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'f585c969-117b-42cd-8ca0-d1aa65cb3d77', N'SMTPEnableSSL', N'false')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'9062b696-4abe-484d-8e6d-d9bf3863cbbb', N'RedirectAfterLogout', N'62328d72-ad82-4de2-9a98-c954e5b30b28')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'2ef47dba-8872-41ff-88be-df8862e4a037', N'RedirectAfterLogin', N'd5d5a9fd-511b-4025-b495-8908fb70c762')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'a843912d-7238-49bd-b54e-ec295035bc7b', N'RegistrationEnabled', N'true')
GO
INSERT [dbo].[SiteSetting] ([Id], [SettingName], [SettingValue]) VALUES (N'b09c118d-d2d2-4825-bc6c-f51efe93b3a2', N'DefaultTheme', N'[G]Skins/Skyline/Admin.cshtml')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[ContentDataType] ([Id], [Label], [Name]) VALUES (N'903ac568-10b9-4aba-beca-2d9c5c15d8af', N'Object', N'object')
GO
INSERT [dbo].[ContentDataType] ([Id], [Label], [Name]) VALUES (N'8efbe559-c5b9-4889-a926-49872a11b654', N'Array', N'array')
GO
INSERT [dbo].[ContentDataType] ([Id], [Label], [Name]) VALUES (N'cdcc92ce-48f8-42d0-989c-62f5aacd7dc2', N'String', N'string')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[Property] ([Id], [Label], [Name], [PropertyOptionListId]) VALUES (N'f5031c31-778b-45dd-bd33-eeb2a088d2bc', N'Css Class', N'cssclass', NULL)
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'a7bbfc37-b496-4c8f-b481-309ec38fbac0', N'cdcc92ce-48f8-42d0-989c-62f5aacd7dc2', CAST(N'2016-08-20 15:19:37.9516595' AS DateTime2), N'fa fa-code', NULL, 1, N'Rich Text', CAST(N'2016-08-21 09:49:00.1108719' AS DateTime2), N'richtext', 0)
GO
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'978bd890-7dbd-4ee0-9d86-8356dfadf4e6', N'8efbe559-c5b9-4889-a926-49872a11b654', CAST(N'2016-08-21 09:45:20.7037754' AS DateTime2), N'fa fa-clone', NULL, 1, N'Teaser Box', CAST(N'2016-08-21 09:45:20.7037754' AS DateTime2), N'teaserbox', 0)
GO
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'9b2ec6ac-8fdf-4cb5-ae60-90b73a6931fc', N'903ac568-10b9-4aba-beca-2d9c5c15d8af', CAST(N'2016-07-18 23:54:37.8886001' AS DateTime2), N'fa fa-video-camera', NULL, 1, N'Video', CAST(N'2016-08-21 09:49:26.7886147' AS DateTime2), N'video', 0)
GO
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'f2e91a21-0864-4b16-b3de-9be08888b91f', N'903ac568-10b9-4aba-beca-2d9c5c15d8af', NULL, N'fa fa-picture-o', NULL, 1, N'Image', CAST(N'2016-08-21 09:48:53.0240577' AS DateTime2), N'image', 2)
GO
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'8d878db7-c3e2-4c39-b359-bd0e39d87df9', N'8efbe559-c5b9-4889-a926-49872a11b654', CAST(N'2016-08-20 12:02:46.6497368' AS DateTime2), N'fa fa-folder-o', NULL, 1, N'Tabs', CAST(N'2016-08-21 09:49:10.5211712' AS DateTime2), N'tabs', 0)
GO
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'00332002-f2c7-401c-b59c-d0181eaf657b', N'cdcc92ce-48f8-42d0-989c-62f5aacd7dc2', NULL, N'fa fa-font', NULL, 1, N'Text', CAST(N'2016-07-21 23:25:20.7654703' AS DateTime2), N'text', 1)
GO
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'd8e458b3-daa2-4bc5-90a0-d56e9a78839e', N'8efbe559-c5b9-4889-a926-49872a11b654', CAST(N'2016-08-20 12:01:53.3041909' AS DateTime2), N'fa fa-bars', NULL, 1, N'Accordion', CAST(N'2016-08-21 09:48:39.1034595' AS DateTime2), N'accordion', 0)
GO
INSERT [dbo].[ContentType] ([Id], [ContentDataTypeId], [CreatedDate], [IconClass], [IconImage], [IsActive], [Label], [LastModifiedDate], [Name], [SortOrder]) VALUES (N'd2e62921-32f5-4c66-a9b3-e5b61d60b193', N'8efbe559-c5b9-4889-a926-49872a11b654', NULL, N'fa fa-caret-square-o-right', NULL, 1, N'Carousel', CAST(N'2016-08-21 09:48:48.8464405' AS DateTime2), N'carousel', 3)
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'493beae2-e71a-418b-e2ca-08d3c9971a42', N'978bd890-7dbd-4ee0-9d86-8356dfadf4e6', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'79ae95cb-3d59-45bd-e2cb-08d3c9971a42', N'd8e458b3-daa2-4bc5-90a0-d56e9a78839e', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'7809f786-4da7-4851-e2cc-08d3c9971a42', N'a7bbfc37-b496-4c8f-b481-309ec38fbac0', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'17c3d33c-14d3-4e8b-e2cd-08d3c9971a42', N'8d878db7-c3e2-4c39-b359-bd0e39d87df9', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'854e93d1-d881-4251-e2ce-08d3c9971a42', N'9b2ec6ac-8fdf-4cb5-ae60-90b73a6931fc', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'571623ec-88cb-46ac-8f35-378f88efbaf9', N'00332002-f2c7-401c-b59c-d0181eaf657b', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'efa572cd-df11-4cd8-8e3e-83531c4fb759', N'd2e62921-32f5-4c66-a9b3-e5b61d60b193', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[ContentTypeProperty] ([Id], [ConentTypeId], [PropertyId]) VALUES (N'8071b325-1712-4f55-8741-a7a9bf44491b', N'f2e91a21-0864-4b16-b3de-9be08888b91f', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[LayoutType] ([Id], [IconClass], [IconImage], [Label], [LayoutTypeIds], [Name]) VALUES (N'5a0a5884-da84-4922-a02f-5828b55d5c92', N'fa fa-square-o', NULL, N'Wrapper', N'9341f92e-83d8-4afe-ad4a-a95deeda9ae3, 43734210-943e-4f33-a161-f12260b8c001', N'wrapper')
GO
INSERT [dbo].[LayoutType] ([Id], [IconClass], [IconImage], [Label], [LayoutTypeIds], [Name]) VALUES (N'4c98f160-d676-40a2-9b88-79fd1343f333', N'fa fa-columns', NULL, N'Column', N'9341f92e-83d8-4afe-ad4a-a95deeda9ae3, 43734210-943e-4f33-a161-f12260b8c001', N'column')
GO
INSERT [dbo].[LayoutType] ([Id], [IconClass], [IconImage], [Label], [LayoutTypeIds], [Name]) VALUES (N'9341f92e-83d8-4afe-ad4a-a95deeda9ae3', N'fa fa-square-o', NULL, N'Container', N'9341f92e-83d8-4afe-ad4a-a95deeda9ae3, 43734210-943e-4f33-a161-f12260b8c001', N'container')
GO
INSERT [dbo].[LayoutType] ([Id], [IconClass], [IconImage], [Label], [LayoutTypeIds], [Name]) VALUES (N'43734210-943e-4f33-a161-f12260b8c001', N'fa fa-align-justify', NULL, N'Row', N'4c98f160-d676-40a2-9b88-79fd1343f333', N'row')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[LayoutTypeProperty] ([Id], [LayoutTypeId], [PropertyId]) VALUES (N'3d1a07ce-fa7f-4eea-93e7-a39c929f7036', N'4c98f160-d676-40a2-9b88-79fd1343f333', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[LayoutTypeProperty] ([Id], [LayoutTypeId], [PropertyId]) VALUES (N'fe7be0f0-5bc3-4da2-8254-e0221b8b919f', N'5a0a5884-da84-4922-a02f-5828b55d5c92', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[LayoutTypeProperty] ([Id], [LayoutTypeId], [PropertyId]) VALUES (N'21c85e09-737a-4596-8432-eab3797ebc91', N'9341f92e-83d8-4afe-ad4a-a95deeda9ae3', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
INSERT [dbo].[LayoutTypeProperty] ([Id], [LayoutTypeId], [PropertyId]) VALUES (N'47361d1e-dbdd-4b2f-8c0c-f03f2771c04d', N'43734210-943e-4f33-a161-f12260b8c001', N'f5031c31-778b-45dd-bd33-eeb2a088d2bc')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[Layout] ([Id], [Config], [IsDeleted], [Name]) VALUES (N'c4843750-1e7c-45f9-bf11-08d3a4535e73', N'[{"Id":"057b15a4-3d31-abad-b02b-2c92e73d590d","Type":"wrapper","LayoutTemplate":"repeater","SortOrder":1,"Module":null,"LayoutTypeId":"5a0a5884-da84-4922-a02f-5828b55d5c92","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":null}],"PlaceHolders":[{"Id":"f2945108-da52-7b3e-9f0c-baf6959c7815","Type":"row","LayoutTemplate":"row","SortOrder":1,"Module":null,"LayoutTypeId":"43734210-943e-4f33-a161-f12260b8c001","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":null}],"PlaceHolders":[]},{"Id":"889454b0-2d54-19f3-1662-455835d13f84","Type":"container","LayoutTemplate":"container","SortOrder":2,"Module":null,"LayoutTypeId":"9341f92e-83d8-4afe-ad4a-a95deeda9ae3","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":null}],"PlaceHolders":[]},{"Id":"f095ec67-ebf1-49ab-20d0-b68e4c0eeebe","Type":"row","LayoutTemplate":"row","SortOrder":3,"Module":null,"LayoutTypeId":"43734210-943e-4f33-a161-f12260b8c001","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":null}],"PlaceHolders":[]}]}]', 0, N'Contact Layout')
GO
INSERT [dbo].[Layout] ([Id], [Config], [IsDeleted], [Name]) VALUES (N'7d66a0bf-c4cf-40bb-9c64-08d3b2f1bec8', N'[{"Id":"c56363d6-8983-eadc-df07-226b36304771","Type":"container","LayoutTemplate":"container","SortOrder":1,"Module":null,"LayoutTypeId":"9341f92e-83d8-4afe-ad4a-a95deeda9ae3","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":null}],"PlaceHolders":[{"Id":"b7a747c7-9bfd-0d83-6f32-f26f76c39692","Type":"row","LayoutTemplate":"row","SortOrder":1,"Module":null,"LayoutTypeId":"43734210-943e-4f33-a161-f12260b8c001","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":null}],"PlaceHolders":[{"Id":"3f98d72d-f6d0-616c-f6f9-912f0dfe5c8d","Type":"column","LayoutTemplate":"column","SortOrder":1,"Module":null,"LayoutTypeId":"4c98f160-d676-40a2-9b88-79fd1343f333","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":"col-md-2"}],"PlaceHolders":[]}]}]}]', 1, N'Test Layout')
GO
INSERT [dbo].[Layout] ([Id], [Config], [IsDeleted], [Name]) VALUES (N'af7533aa-3e4b-4e29-b118-1841ab5a0a91', N'[{"Id":"06aab8db-4118-f83c-e9b0-8ee35f1c8212","Type":"container","LayoutTemplate":"container","SortOrder":1,"LayoutTypeId":"9341f92e-83d8-4afe-ad4a-a95deeda9ae3","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":null,"PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[{"Id":"2adfbd0a-dbed-84ee-8c7a-c296a48c483c","Type":"row","LayoutTemplate":"row","SortOrder":1,"LayoutTypeId":"43734210-943e-4f33-a161-f12260b8c001","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":"ere","PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[{"Id":"f26bfe84-7ebe-377c-67e3-a889545eaa31","Type":"column","LayoutTemplate":"column","SortOrder":2,"LayoutTypeId":"4c98f160-d676-40a2-9b88-79fd1343f333","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":"col-md-12","PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[]}]}]}]', 0, N'Login Layout')
GO
INSERT [dbo].[Layout] ([Id], [Config], [IsDeleted], [Name]) VALUES (N'd6471f27-716c-4f6f-a10b-4acef3fa4da3', N'[{"Id":"bc67cef1-a571-ad77-93e3-fab7a0d212b2","Type":"wrapper","LayoutTemplate":"repeater","SortOrder":1,"LayoutTypeId":"5a0a5884-da84-4922-a02f-5828b55d5c92","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":null,"Value":null,"PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":false}],"PlaceHolders":[]},{"Id":"c2245c7d-45d1-0aac-0855-1ae86b001c95","Type":"container","LayoutTemplate":"container","SortOrder":2,"LayoutTypeId":"9341f92e-83d8-4afe-ad4a-a95deeda9ae3","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":null,"Value":null,"PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":false}],"PlaceHolders":[{"Id":"17bb9a8f-8e26-e822-b37d-26b1acfa6757","Type":"row","LayoutTemplate":"row","SortOrder":1,"LayoutTypeId":"43734210-943e-4f33-a161-f12260b8c001","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":null,"Value":null,"PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":false}],"PlaceHolders":[{"Id":"7bb4d1af-616f-cc0b-00e5-a2564a6bfe20","Type":"column","LayoutTemplate":"column","SortOrder":1,"LayoutTypeId":"4c98f160-d676-40a2-9b88-79fd1343f333","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":"col-md-6","PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[]},{"Id":"13d6a3af-a95f-d02d-d312-9c41ed6e9f74","Type":"column","LayoutTemplate":"column","SortOrder":2,"LayoutTypeId":"4c98f160-d676-40a2-9b88-79fd1343f333","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":"col-md-6","PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":false}],"PlaceHolders":[]}]},{"Id":"2bc2c9cb-2513-b84e-d2fe-2878226a3acf","Type":"row","LayoutTemplate":"row","SortOrder":2,"LayoutTypeId":"43734210-943e-4f33-a161-f12260b8c001","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":null,"PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[{"Id":"d01c2312-53bb-3c2a-e437-e3b58c3e07dd","Type":"column","LayoutTemplate":"column","SortOrder":1,"LayoutTypeId":"4c98f160-d676-40a2-9b88-79fd1343f333","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":"col-md-6","PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[]}]},{"Id":"f4d81c80-712b-0c08-0f23-0a8e3fa03fe4","Type":"row","LayoutTemplate":"row","SortOrder":3,"LayoutTypeId":"43734210-943e-4f33-a161-f12260b8c001","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":null,"PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[{"Id":"e75bcaff-78fe-4250-323a-9c7f30786548","Type":"column","LayoutTemplate":"column","SortOrder":1,"LayoutTypeId":"4c98f160-d676-40a2-9b88-79fd1343f333","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Label":"Css Class","Value":"col-md-3","PropertyOptionListId":null,"PropertyOptionList":null,"IsActive":true}],"PlaceHolders":[]}]}]}]', 0, N'Home Page Layout')
GO
INSERT [dbo].[Layout] ([Id], [Config], [IsDeleted], [Name]) VALUES (N'af8ecc7d-e300-41af-b55a-deeb097836d2', N'[{"Id":"a2b3cf83-2533-27f9-b8fc-843681daa777","Type":"wrapper","LayoutTemplate":"repeater","SortOrder":1,"Module":null,"LayoutTypeId":"5a0a5884-da84-4922-a02f-5828b55d5c92","Properties":[{"Id":"f5031c31-778b-45dd-bd33-eeb2a088d2bc","Name":"cssclass","Value":null}],"PlaceHolders":[]}]', 0, N'Admin Layout')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'654f660d-9c71-48f9-8237-593a39a0dbc0', NULL, N'Security Roles', 1, N'Security Roles', NULL, N'SecurityRoles', N'00.01.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'e4792855-5df8-4186-ad32-69d6464c748f', NULL, N'Security Module', 1, N'Security Module', NULL, N'Security', N'00.01.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'e99086da-297e-4fdd-a84c-74c663baf9ae', NULL, N'Site Management', 1, N'Site Management', NULL, N'SiteManagement', N'00.01.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'f07dbddf-4937-42b8-9bee-9c0713128013', NULL, N'File Management', 1, N'File Management', NULL, N'FileManager', N'00.01.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'0c30609d-87f3-4d84-9269-cfba91e5c0b6', NULL, N'User Management', 1, N'User Management', NULL, N'UserManagement', N'00.01.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5', NULL, N'Content Management', 1, N'Content Management', NULL, N'ContentManagement', N'00.01.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'f271f063-aa57-4ee0-95a4-d1417fab15c4', NULL, N'Module Management', 1, N'Module Management', NULL, N'ModuleManagement', N'00.00.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'57813091-da9f-47e3-9d63-dd5c4df79f1d', NULL, N'Page Manag§ement', 1, N'Page Management', NULL, N'PageManagement', N'00.01.00')
INSERT [dbo].[Module] ([Id], [CreatedDate], [Description], [IsActive], [Label], [LastModifiedDate], [Name], [Version]) VALUES (N'73829a91-4a4a-4c22-885a-fb1215e37fdc', NULL, N'Language', 1, N'Language', NULL, N'Language', N'00.01.00')
-----------------------------------------------------------------------------------
INSERT [dbo].[ModuleActionType] ([Id], [ControlType]) VALUES (N'72366792-3740-4e6b-b960-9c9c5334163a', N'View')
INSERT [dbo].[ModuleActionType] ([Id], [ControlType]) VALUES (N'192278b6-7bf2-40c2-a776-b9ca5fb04fbb', N'Edit')
-----------------------------------------------------------------------------------
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'ae7afca8-56f6-4381-822c-1a04022c779b', N'Modules', N'Home', N'Deviser.Modules.ModuleManagement.Controllers', N'Modules', N'fa fa-puzzle-piece', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'f271f063-aa57-4ee0-95a4-d1417fab15c4')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'1b56fde5-4494-4cf7-88db-2dc7b942284b', N'Index', N'Home', N'Deviser.Modules.FileManager.Controllers', N'File Manager', N'fa fa-files-o', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'f07dbddf-4937-42b8-9bee-9c0713128013')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'57415ac9-9141-495a-a25d-4a80f1c5827a', N'LayoutTypes', N'Home', N'Deviser.Modules.ContentManagement.Controllers', N'Layout Types', N'fa fa-columns', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'7f2e81f9-90c3-4247-a545-658cc370caf5', N'Register', N'Account', N'Deviser.Modules.Security.Controllers', N'Register', N'fa fa-pencil-square-o', NULL, 0, N'72366792-3740-4e6b-b960-9c9c5334163a', N'e4792855-5df8-4186-ad32-69d6464c748f')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'724a7aa2-4916-40dc-9579-7afc31589d12', N'SiteSettings', N'Home', N'Deviser.Modules.SiteManagement.Controllers', N'Site Settings', N'fa fa-cog', NULL, 0, N'72366792-3740-4e6b-b960-9c9c5334163a', N'e99086da-297e-4fdd-a84c-74c663baf9ae')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'54df0a1f-99b0-4847-91f5-7cd187818fe3', N'Index', N'Home', N'Deviser.Modules.SecurityRoles.Controllers', N'Security Roles', N'fa fa-shield', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'654f660d-9c71-48f9-8237-593a39a0dbc0')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'7154eb95-36cc-488e-8d24-83b60f3ffffa', N'ContentTypes', N'Home', N'Deviser.Modules.ContentManagement.Controllers', N'Content Types', N'fa fa-th', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'37ec5283-1fec-4779-bd43-9718c5648ffb', N'Index', N'Home', N'Deviser.Modules.UserManagement.Controllers', N'User Management', N'fa fa-users', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'0c30609d-87f3-4d84-9269-cfba91e5c0b6')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'8771beb5-0603-4a81-89bc-9e609f716005', N'Index', N'Edit', N'Deviser.Modules.Security.Controllers', N'Login Edit', NULL, NULL, 0, N'192278b6-7bf2-40c2-a776-b9ca5fb04fbb', N'e4792855-5df8-4186-ad32-69d6464c748f')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'4d3d7174-fc7a-4103-9f1a-ac6fc2610819', N'OptionList', N'Home', N'Deviser.Modules.ContentManagement.Controllers', N'Property Option List', N'fa fa-th-list', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'83998364-707b-49ef-abed-b01f864bfe4a', N'Index', N'Home', N'Deviser.Modules.PageManagement.Controllers', N'Page Management', N'fa fa-file-o', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'57813091-da9f-47e3-9d63-dd5c4df79f1d')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'22d7f353-68c6-4c80-b261-c4d21b942623', N'Login', N'Account', N'Deviser.Modules.Security.Controllers', N'Login', N'fa fa-sign-in', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'e4792855-5df8-4186-ad32-69d6464c748f')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'd4508962-b521-4e52-ac52-e2bcc06dadd5', N'Properties', N'Home', N'Deviser.Modules.ContentManagement.Controllers', N'Properties ', N'fa fa-sliders', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5')
INSERT [dbo].[ModuleAction] ([Id], [ActionName], [ControllerName], [ControllerNamespace], [DisplayName], [IconClass], [IconImage], [IsDefault], [ModuleActionTypeId], [ModuleId]) VALUES (N'5601b5eb-230f-4a43-a906-fed2923aca74', N'Index', N'Home', N'Deviser.Modules.Language.Controllers', N'Language', N'fa fa-language', NULL, 1, N'72366792-3740-4e6b-b960-9c9c5334163a', N'73829a91-4a4a-4c22-885a-fb1215e37fdc')
-----------------------------------------------------------------------------------
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'd1c11d1f-2345-43b6-baa1-8ce890242397', CAST(N'2016-07-03 19:34:55.593' AS DateTime), NULL, 0, 1, 0, CAST(N'2016-07-07 23:57:54.633' AS DateTime), NULL, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'dd650840-0ee7-46cf-abb5-8a1591dc0936', CAST(N'2016-07-03 19:34:55.593' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-03 19:36:03.907' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 1, 5, N'd1c11d1f-2345-43b6-baa1-8ce890242397', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'c597d915-38e0-4c32-0615-08d3a367fbcc', CAST(N'2016-07-03 19:32:15.350' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:19:51.667' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 2, 2, N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'56b72d88-5922-4635-0616-08d3a367fbcc', CAST(N'2016-07-03 19:34:47.250' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:20:16.110' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 2, 3, N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'8efd99d2-5004-44c6-0617-08d3a367fbcc', CAST(N'2016-07-03 19:34:55.593' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:20:31.587' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 2, 4, N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'19391c5e-1253-40c3-3b4f-08d3a4490460', CAST(N'2016-07-04 22:47:02.990' AS DateTime), NULL, 0, 1, 0, CAST(N'2016-08-08 23:10:12.457' AS DateTime), N'c4843750-1e7c-45f9-bf11-08d3a4535e73', 1, 2, N'd1c11d1f-2345-43b6-baa1-8ce890242397', N'[G]Skins/Skyline/Home.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', CAST(N'2016-07-30 20:58:44.973' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-30 20:58:44.973' AS DateTime), NULL, 2, 7, N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'56ff05c4-57f6-429c-c4ad-08d3a6adbc78', CAST(N'2016-07-07 23:29:11.080' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:20:39.450' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 3, 2, N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'20d1b105-5c6d-4961-c4ae-08d3a6adbc78', CAST(N'2016-07-07 23:29:41.723' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:20:55.347' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 3, 1, N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'9333f6a1-ba81-4b18-a922-08d3adc0bb30', CAST(N'2016-07-16 23:32:47.510' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:21:16.693' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 3, 4, N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'7dff05ab-1376-4ae6-09f0-08d3ae5877da', CAST(N'2016-07-17 17:38:58.033' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:21:07.070' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 3, 3, N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'bb858c11-6779-406d-e941-08d3b4c8ff40', CAST(N'2016-07-25 22:19:35.817' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-25 22:21:02.777' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 2, 5, N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'1322cf31-fae5-40de-d7b7-08d3bfd5ca3d', CAST(N'2016-08-08 23:48:53.127' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-08-08 23:58:02.083' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 2, 6, N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'[G]Skins/Skyline/Admin.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'51a79e31-9bb1-4fa7-4da6-08d3c2d166ce', CAST(N'2016-08-12 18:55:01.797' AS DateTime), NULL, 0, 0, 0, CAST(N'2016-08-13 23:13:42.690' AS DateTime), N'af7533aa-3e4b-4e29-b118-1841ab5a0a91', 1, 4, N'd1c11d1f-2345-43b6-baa1-8ce890242397', N'[G]Skins/Skyline/Home.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'd5d5a9fd-511b-4025-b495-8908fb70c762', CAST(N'2016-07-03 19:34:55.593' AS DateTime), NULL, 0, 1, 0, CAST(N'2016-08-13 11:58:28.683' AS DateTime), N'd6471f27-716c-4f6f-a10b-4acef3fa4da3', 1, 1, N'd1c11d1f-2345-43b6-baa1-8ce890242397', N'[G]Skins/Skyline/Home.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'62328d72-ad82-4de2-9a98-c954e5b30b28', CAST(N'2016-07-03 19:34:55.593' AS DateTime), NULL, 0, 0, 0, CAST(N'2016-08-13 23:10:05.317' AS DateTime), N'af7533aa-3e4b-4e29-b118-1841ab5a0a91', 1, 3, N'd1c11d1f-2345-43b6-baa1-8ce890242397', N'[G]Skins/Skyline/Home.cshtml', NULL)
GO
INSERT [dbo].[Page] ([Id], [CreatedDate], [EndDate], [IsDeleted], [IsIncludedInMenu], [IsSystem], [LastModifiedDate], [LayoutId], [PageLevel], [PageOrder], [ParentId], [SkinSrc], [StartDate]) VALUES (N'c6dd6902-4a9c-4a38-8a05-febe76694993', CAST(N'2016-07-03 19:34:55.593' AS DateTime), NULL, 0, 1, 1, CAST(N'2016-07-24 13:18:14.903' AS DateTime), N'af8ecc7d-e300-41af-b55a-deeb097836d2', 2, 1, N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'[G]Skins/Skyline/Admin.cshtml', NULL)
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'378d40e1-403d-5c58-01bc-468fe5bbb9ab', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'54df0a1f-99b0-4847-91f5-7cd187818fe3', N'654f660d-9c71-48f9-8237-593a39a0dbc0', N'56b72d88-5922-4635-0616-08d3a367fbcc', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'c1b960f5-7073-ea28-ac32-4ec59bf9e890', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'5601b5eb-230f-4a43-a906-fed2923aca74', N'73829a91-4a4a-4c22-885a-fb1215e37fdc', N'8efd99d2-5004-44c6-0617-08d3a367fbcc', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'd4f7f41d-d5ef-a619-3e0f-569a0a53ae02', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'57415ac9-9141-495a-a25d-4a80f1c5827a', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5', N'20d1b105-5c6d-4961-c4ae-08d3a6adbc78', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'35349328-976f-4dd0-bf74-57bc523caab8', N'f26bfe84-7ebe-377c-67e3-a889545eaa31', 0, N'22d7f353-68c6-4c80-b261-c4d21b942623', N'e4792855-5df8-4186-ad32-69d6464c748f', N'62328d72-ad82-4de2-9a98-c954e5b30b28', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'fb3942ee-fb96-2aed-03e1-650d814d67d7', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'724a7aa2-4916-40dc-9579-7afc31589d12', N'e99086da-297e-4fdd-a84c-74c663baf9ae', N'bb858c11-6779-406d-e941-08d3b4c8ff40', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'f5c81ac0-bebb-ebb3-e666-9a47112ae346', N'f26bfe84-7ebe-377c-67e3-a889545eaa31', 0, N'7f2e81f9-90c3-4247-a545-658cc370caf5', N'e4792855-5df8-4186-ad32-69d6464c748f', N'51a79e31-9bb1-4fa7-4da6-08d3c2d166ce', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'ad5d1f7a-3a44-dddd-04a1-9a77a5f0f8b3', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'4d3d7174-fc7a-4103-9f1a-ac6fc2610819', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5', N'9333f6a1-ba81-4b18-a922-08d3adc0bb30', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'f9d2f198-e489-6533-00f7-c25d8d920fee', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'37ec5283-1fec-4779-bd43-9718c5648ffb', N'0c30609d-87f3-4d84-9269-cfba91e5c0b6', N'c597d915-38e0-4c32-0615-08d3a367fbcc', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'beb22251-396f-4e69-91ab-c28aa93f7bde', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'83998364-707b-49ef-abed-b01f864bfe4a', N'57813091-da9f-47e3-9d63-dd5c4df79f1d', N'c6dd6902-4a9c-4a38-8a05-febe76694993', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'af0ea3e1-de98-8749-58d6-e0f95cc1f061', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'ae7afca8-56f6-4381-822c-1a04022c779b', N'f271f063-aa57-4ee0-95a4-d1417fab15c4', N'1322cf31-fae5-40de-d7b7-08d3bfd5ca3d', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'720785c4-b947-ee8e-a835-ea1fa95b1c30', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'7154eb95-36cc-488e-8d24-83b60f3ffffa', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5', N'56ff05c4-57f6-429c-c4ad-08d3a6adbc78', 1, 1, 1)
GO
INSERT [dbo].[PageModule] ([Id], [ContainerId], [IsDeleted], [ModuleActionId], [ModuleId], [PageId], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'c0de3816-435b-397c-3b3d-f310c9b5a0b7', N'a2b3cf83-2533-27f9-b8fc-843681daa777', 0, N'd4508962-b521-4e52-ac52-e2bcc06dadd5', N'f32fa4c5-d319-48b0-a68b-cffb9c8743d5', N'7dff05ab-1376-4ae6-09f0-08d3ae5877da', 1, 1, 1)
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[PageContent] ([Id], [ContainerId], [ContentTypeId], [CreatedDate], [IsDeleted], [LastModifiedDate], [PageId], [Properties], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'34876a57-fc18-7d6f-e14d-094512e4c8a2', N'd01c2312-53bb-3c2a-e437-e3b58c3e07dd', N'8d878db7-c3e2-4c39-b359-bd0e39d87df9', NULL, 0, CAST(N'2016-08-20 12:43:46.763' AS DateTime), N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'[
  {
    "id": "f5031c31-778b-45dd-bd33-eeb2a088d2bc",
    "name": "cssclass",
    "label": "Css Class",
    "value": null,
    "propertyOptionListId": null,
    "propertyOptionList": null,
    "isActive": false
  }
]', 1, 1, 1)
GO
INSERT [dbo].[PageContent] ([Id], [ContainerId], [ContentTypeId], [CreatedDate], [IsDeleted], [LastModifiedDate], [PageId], [Properties], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'2eb17f68-bf88-0767-46e6-4d7e26b3cbaa', N'e75bcaff-78fe-4250-323a-9c7f30786548', N'a7bbfc37-b496-4c8f-b481-309ec38fbac0', NULL, 0, CAST(N'2016-08-20 15:41:24.677' AS DateTime), N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'[
  {
    "id": "f5031c31-778b-45dd-bd33-eeb2a088d2bc",
    "name": "cssclass",
    "label": "Css Class",
    "value": null,
    "propertyOptionListId": null,
    "propertyOptionList": null,
    "isActive": false
  }
]', 1, 1, 1)
GO
INSERT [dbo].[PageContent] ([Id], [ContainerId], [ContentTypeId], [CreatedDate], [IsDeleted], [LastModifiedDate], [PageId], [Properties], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'3e2a3710-aaca-a270-9c2a-91fc1196bba1', N'7bb4d1af-616f-cc0b-00e5-a2564a6bfe20', N'd8e458b3-daa2-4bc5-90a0-d56e9a78839e', NULL, 0, CAST(N'2016-08-20 12:30:40.270' AS DateTime), N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'[
  {
    "id": "f5031c31-778b-45dd-bd33-eeb2a088d2bc",
    "name": "cssclass",
    "label": "Css Class",
    "value": null,
    "propertyOptionListId": null,
    "propertyOptionList": null,
    "isActive": false
  }
]', 1, 1, 1)
GO
INSERT [dbo].[PageContent] ([Id], [ContainerId], [ContentTypeId], [CreatedDate], [IsDeleted], [LastModifiedDate], [PageId], [Properties], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'2281e807-cf0c-67cb-796e-d41a83761206', N'13d6a3af-a95f-d02d-d312-9c41ed6e9f74', N'9b2ec6ac-8fdf-4cb5-ae60-90b73a6931fc', NULL, 0, CAST(N'2016-08-20 12:30:40.237' AS DateTime), N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'[
  {
    "id": "ec8ddcf5-61ed-4c4c-3c31-08d3af52340c",
    "name": "videotype",
    "label": "Video Type",
    "value": null,
    "propertyOptionListId": null,
    "propertyOptionList": null,
    "isActive": false
  },
  {
    "id": "f5031c31-778b-45dd-bd33-eeb2a088d2bc",
    "name": "cssclass",
    "label": "Css Class",
    "value": null,
    "propertyOptionListId": null,
    "propertyOptionList": null,
    "isActive": false
  }
]', 1, 1, 1)
GO
INSERT [dbo].[PageContent] ([Id], [ContainerId], [ContentTypeId], [CreatedDate], [IsDeleted], [LastModifiedDate], [PageId], [Properties], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'4b2166a4-1c9c-7368-c5ba-e0799ef6f1ed', N'bc67cef1-a571-ad77-93e3-fab7a0d212b2', N'd2e62921-32f5-4c66-a9b3-e5b61d60b193', NULL, 0, CAST(N'2016-07-24 13:15:10.310' AS DateTime), N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'[
  {
    "id": "f5031c31-778b-45dd-bd33-eeb2a088d2bc",
    "name": "cssclass",
    "label": "Css Class",
    "value": null,
    "propertyOptionListId": null,
    "propertyOptionList": null,
    "isActive": false,
    "createdDate": null,
    "lastModifiedDate": null
  }
]', 1, 1, 1)
GO
INSERT [dbo].[PageContent] ([Id], [ContainerId], [ContentTypeId], [CreatedDate], [IsDeleted], [LastModifiedDate], [PageId], [Properties], [SortOrder], [InheritViewPermissions], [InheritEditPermissions]) VALUES (N'8ff58a7f-b777-60df-d41e-ee4edda03206', N'f2945108-da52-7b3e-9f0c-baf6959c7815', N'00332002-f2c7-401c-b59c-d0181eaf657b', NULL, 0, CAST(N'2016-08-13 11:09:53.590' AS DateTime), N'19391c5e-1253-40c3-3b4f-08d3a4490460', N'[
  {
    "id": "f5031c31-778b-45dd-bd33-eeb2a088d2bc",
    "name": "cssclass",
    "label": "Css Class",
    "value": null,
    "propertyOptionListId": null,
    "propertyOptionList": null,
    "isActive": false,
    "createdDate": null,
    "lastModifiedDate": null
  }
]', 1, 1, 1)
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'c597d915-38e0-4c32-0615-08d3a367fbcc', N'en-US', NULL, NULL, N'User Management', N'User Management', N'en-us/Admin/UserManagement')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'56b72d88-5922-4635-0616-08d3a367fbcc', N'en-US', N'Security Roles', NULL, N'Security Roles', N'Security Roles', N'en-us/Admin/SecurityRoles')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'8efd99d2-5004-44c6-0617-08d3a367fbcc', N'en-US', NULL, NULL, N'Languages', N'Languages', N'en-us/Admin/Languages')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'19391c5e-1253-40c3-3b4f-08d3a4490460', N'en-US', NULL, NULL, N'Contact', N'Contact', N'en-us/Contact')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'56ff05c4-57f6-429c-c4ad-08d3a6adbc78', N'en-US', N'Content Types', NULL, N'Content Types', N'Content Types', N'en-us/Admin/DynamicContent/ContentTypes')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'20d1b105-5c6d-4961-c4ae-08d3a6adbc78', N'en-US', N'Layout Types', NULL, N'Layout Types', N'Layout Types', N'en-us/Admin/DynamicContent/LayoutTypes')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'9333f6a1-ba81-4b18-a922-08d3adc0bb30', N'en-US', NULL, NULL, N'Option List', N'Option List', N'en-us/Admin/DynamicContent/OptionList')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'7dff05ab-1376-4ae6-09f0-08d3ae5877da', N'en-US', NULL, NULL, N'Properties', N'Properties', N'en-us/Admin/DynamicContent/Properties')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'bb858c11-6779-406d-e941-08d3b4c8ff40', N'en-US', NULL, NULL, N'Site Settings', N'Site Settings', N'en-us/Admin/SiteSettings')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', N'en-US', NULL, NULL, N'Dynamic Content', N'Dynamic Content', N'en-us/Admin/DynamicContent')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'1322cf31-fae5-40de-d7b7-08d3bfd5ca3d', N'en-US', NULL, NULL, N'Module Management', N'Module Management', N'en-us/Admin/ModuleManagement')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'51a79e31-9bb1-4fa7-4da6-08d3c2d166ce', N'en-US', NULL, NULL, N'Register', N'Register', N'en-us/Register')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'de-CH', NULL, NULL, N'Homedech', N'Home Page', N'de-ch/Homedech')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'en-US', N'Test description', N'Test keyword', N'Home', N'Home Page', N'en-us/Home')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'fr-CH', NULL, NULL, N'Homefrch', N'Home Page', N'fr-ch/Homefrch')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'en-US', NULL, NULL, N'Admin', N'Admin', N'en-us/Admin')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'62328d72-ad82-4de2-9a98-c954e5b30b28', N'en-US', NULL, NULL, N'Login', N'Login', N'en-us/Login')
GO
INSERT [dbo].[PageTranslation] ([PageId], [Locale], [Description], [Keywords], [Name], [Title], [URL]) VALUES (N'c6dd6902-4a9c-4a38-8a05-febe76694993', N'en-US', NULL, NULL, N'Page Management', N'Page Management', N'en-us/Admin/PageManagement')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[PageContentTranslation] ([Id], [ContentData], [CreatedDate], [CultureCode], [IsDeleted], [LastModifiedDate], [PageContentId]) VALUES (N'a9c805e9-7e43-4830-c122-08d3a4546237', N'{"items":[{"title":"Test title","description":"Lorem ipsum dolor sit amet, eu mei vero ubique iisque, ne affert aperiri meliore eum. Cu cibo choro indoctum vim, vel eros aperiri te.","imageUrl":"/assets/images/DSC_5892.JPG?16.59018026319896","id":"3e6073e1-1021-06bf-016e-6e3adaefb504","viewOrder":1},{"title":"Test title1","imageUrl":"/assets/images/images (1).jpg?77.31950553761884","description":"Possit voluptua eos et, tibique contentiones duo ei, suavitate deseruisse ne vix. Eos ne facer persius.","id":"08b8b64d-dfdc-c9cc-f41e-f0424dd0bab6","viewOrder":2},{"imageUrl":"/assets/images/images.jpg?69.52002824251373","description":"Ad nec discere eruditi volutpat, qui quem eligendi te, indoctum facilisis omittantur ex ius.","title":"Title 3","id":"f0f0e9a4-076e-4d47-9ed7-0a18d5a51b37","viewOrder":3}]}', CAST(N'2016-07-04 23:48:08.860' AS DateTime), N'en-US', 0, CAST(N'2016-08-17 22:39:42.050' AS DateTime), N'4b2166a4-1c9c-7368-c5ba-e0799ef6f1ed')
GO
INSERT [dbo].[PageContentTranslation] ([Id], [ContentData], [CreatedDate], [CultureCode], [IsDeleted], [LastModifiedDate], [PageContentId]) VALUES (N'9b2d540c-269f-4245-9ad8-08d3c6e28ea2', N'{"items":[{"title":"asdfasd","title1":"fasdfa","description":"sdfasdfasdf","id":"62b23072-278b-85ab-3fad-8680a0c105eb","viewOrder":1}]}', CAST(N'2016-08-17 23:16:31.343' AS DateTime), N'de-CH', 0, CAST(N'2016-08-17 23:16:31.343' AS DateTime), N'4b2166a4-1c9c-7368-c5ba-e0799ef6f1ed')
GO
INSERT [dbo].[PageContentTranslation] ([Id], [ContentData], [CreatedDate], [CultureCode], [IsDeleted], [LastModifiedDate], [PageContentId]) VALUES (N'0a547422-9850-47f9-26ba-08d3c7a6e20b', N'{"videoUrl":"https://www.youtube.com/watch?v=EA-jdbno19E","imageUrl":"/assets//images/lamborghini_huracan_lp_610-4_11.jpg"}', CAST(N'2016-08-18 22:33:16.020' AS DateTime), N'en-US', 0, CAST(N'2016-08-20 11:56:25.213' AS DateTime), N'2281e807-cf0c-67cb-796e-d41a83761206')
GO
INSERT [dbo].[PageContentTranslation] ([Id], [ContentData], [CreatedDate], [CultureCode], [IsDeleted], [LastModifiedDate], [PageContentId]) VALUES (N'871ebcd7-ca92-44bc-d86c-08d3c8e59c05', N'{"items":[{"title":"Lorem ipsum dolor","description":"Lorem ipsum dolor sit amet, mei ne commodo ancillae referrentur. Ad inani admodum pericula eum, melius omnesque definitionem usu ei, ad qui elitr dicam graece. Unum primis ceteros id vis, essent suavitate conceptam no vis. Te his novum debitis, eam dolores suavitate ei. Augue libris definitiones sit in, est dicam definitiones an.","id":"f44250ba-36ed-19ea-c984-3bd70677c479","viewOrder":1},{"description":"Ex per aeterno perpetua deterruisset, animal dissentias cu vim. Legere aperiam pri at, vero habeo verterem eos ei. Facer alterum neglegentur ea mei, rebum porro moderatius ei mea. Atomorum inimicus vis an, quo dictas impedit at, autem principes sed ad.","title":"Ex per aeterno perpetua","id":"57c2307e-9a29-5a60-698f-925aae807e7e","viewOrder":2}]}', CAST(N'2016-08-20 12:34:48.007' AS DateTime), N'en-US', 0, CAST(N'2016-08-20 12:34:48.007' AS DateTime), N'3e2a3710-aaca-a270-9c2a-91fc1196bba1')
GO
INSERT [dbo].[PageContentTranslation] ([Id], [ContentData], [CreatedDate], [CultureCode], [IsDeleted], [LastModifiedDate], [PageContentId]) VALUES (N'26ef0af3-746c-4492-d86d-08d3c8e59c05', N'{"items":[{"description":"Ex per aeterno perpetua deterruisset, animal dissentias cu vim. Legere aperiam pri at, vero habeo verterem eos ei. Facer alterum neglegentur ea mei, rebum porro moderatius ei mea. Atomorum inimicus vis an, quo dictas impedit at, autem principes sed ad.","title":"Tab 1","id":"f0ce5b1d-f847-bee4-34de-9f6eca60cb0c","viewOrder":1},{"description":"Lorem ipsum dolor sit amet, mei ne commodo ancillae referrentur. Ad inani admodum pericula eum, melius omnesque definitionem usu ei, ad qui elitr dicam graece. Unum primis ceteros id vis, essent suavitate conceptam no vis. Te his novum debitis, eam dolores suavitate ei. Augue libris definitiones sit in, est dicam definitiones an.","title":"Tab 2","id":"b25f002a-563e-3cd7-6b67-5a16736ef97a","viewOrder":2}]}', CAST(N'2016-08-20 12:44:29.577' AS DateTime), N'en-US', 0, CAST(N'2016-08-20 12:58:38.793' AS DateTime), N'34876a57-fc18-7d6f-e14d-094512e4c8a2')
GO
INSERT [dbo].[PageContentTranslation] ([Id], [ContentData], [CreatedDate], [CultureCode], [IsDeleted], [LastModifiedDate], [PageContentId]) VALUES (N'ccfd52dd-b595-4815-1326-08d3c9001523', N'<h1>Title</h1><ol><li>List Item1</li><li>List Item2</li><li><!--StartFragment--><span style="font-size: 14px;float: none;">List Item3</span><br/><br/><br/><br/><br/></li><span id="selectionBoundary_1471700651304_46177997457030306" class="rangySelectionBoundary">&#65279;</span></ol>', CAST(N'2016-08-20 15:44:18.113' AS DateTime), N'en-US', 0, CAST(N'2016-08-20 15:44:18.113' AS DateTime), N'2eb17f68-bf88-0767-46e6-4d7e26b3cbaa')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[Permission] ([Id], [CreatedDate], [Entity], [Label], [LastModifiedDate], [Name], [Description]) VALUES (N'461b37d9-b801-4235-b74f-0c51f35d170f', NULL, N'CONTENT', N'Edit Content', NULL, N'EDIT', N'To edit a content')
GO
INSERT [dbo].[Permission] ([Id], [CreatedDate], [Entity], [Label], [LastModifiedDate], [Name], [Description]) VALUES (N'2da41181-be15-4ad6-a89c-3ba8b71f993b', NULL, N'PAGE', N'Edit Page', NULL, N'EDIT', N'To edit a page')
GO
INSERT [dbo].[Permission] ([Id], [CreatedDate], [Entity], [Label], [LastModifiedDate], [Name], [Description]) VALUES (N'cc3dbe2d-1e4a-46a0-8c10-9e73f1f5c699', NULL, N'MODULE', N'Edit Module', NULL, N'EDIT', N'To edit a module')
GO
INSERT [dbo].[Permission] ([Id], [CreatedDate], [Entity], [Label], [LastModifiedDate], [Name], [Description]) VALUES (N'491b37a3-deba-4f55-9df6-a67cdd810108', NULL, N'CONTENT', N'View Content', NULL, N'VIEW', N'To view a content')
GO
INSERT [dbo].[Permission] ([Id], [CreatedDate], [Entity], [Label], [LastModifiedDate], [Name], [Description]) VALUES (N'34b46847-80be-4099-842a-b654ad550c3e', NULL, N'MODULE', N'View Module', NULL, N'VIEW', N'To view a module')
GO
INSERT [dbo].[Permission] ([Id], [CreatedDate], [Entity], [Label], [LastModifiedDate], [Name], [Description]) VALUES (N'29cb1b57-1862-4300-b378-f3271b870148', NULL, N'PAGE', N'View Page', NULL, N'VIEW', N'To view a page')
GO

-----------------------------------------------------------------------------------
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'6bf5335f-c44e-4129-8e6f-0ad578f31e2d', N'2612aab8-a133-4285-8d1f-2b352e680b69', N'Registered Users', N'REGISTERED USERS')
GO
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'9b461499-c49e-4398-bfed-4364a176ebbd', N'f7378690-662b-4617-9b8e-791adaee5e50', N'Administrators', N'ADMINISTRATORS')
GO
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'67eb6f56-623b-4d2a-b602-4bed0388995c', N'fa6cd004-475c-46a6-a7fc-445ba74b5d29', N'Site Editor', N'SITE EDITOR')
GO
INSERT [dbo].[Role] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'086357bf-01b1-494c-a8b8-54fdfa7c4c9e', N'20d0f2e5-8f06-4e0c-a233-a37d90e036bb', N'All Users', N'ALL USERS')
-----------------------------------------------------------------------------------
INSERT [dbo].[User] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [FirstName], [LastName], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'c6206baf-9ae9-42c2-bda9-97adcf6c8afd', 0, N'80e16433-c858-42f5-9278-8fc2b3ba74a7', N'admin@deviser', 0, N'System', N'Admin', 1, NULL, N'ADMIN@DEVISER', N'ADMIN@DEVISER', N'AQAAAAEAACcQAAAAEPCnDlYC/uTgR9UQQIMqOuooeS93X5wMR/a2lwXES5xPgNQ0+W68zExObdlv12pdqQ==', NULL, 0, N'c7c0fc19-0af0-400b-b205-6262528f024a', 0, N'admin@deviser')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'c6206baf-9ae9-42c2-bda9-97adcf6c8afd', N'6bf5335f-c44e-4129-8e6f-0ad578f31e2d')
GO
INSERT [dbo].[UserRole] ([UserId], [RoleId]) VALUES (N'c6206baf-9ae9-42c2-bda9-97adcf6c8afd', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
-----------------------------------------------------------------------------------
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'5c9d80d5-093d-4617-71e3-08d3a8de8f2d', N'62328d72-ad82-4de2-9a98-c954e5b30b28', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'0805288f-1a1e-4c02-71e4-08d3a8de8f2d', N'62328d72-ad82-4de2-9a98-c954e5b30b28', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'ebf06e8a-9a5b-4128-4969-08d3a8df5ecd', N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'e3e709ea-9e5c-4fc8-496a-08d3a8df5ecd', N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'4bd1bfd3-aec4-4360-496b-08d3a8df5ecd', N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'2d4d02a0-566d-480e-496c-08d3a8df5ecd', N'dd650840-0ee7-46cf-abb5-8a1591dc0936', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'5171e293-5dbc-4c73-496d-08d3a8df5ecd', N'c6dd6902-4a9c-4a38-8a05-febe76694993', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'fcd8658d-8953-48f0-496e-08d3a8df5ecd', N'c6dd6902-4a9c-4a38-8a05-febe76694993', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'2682dc85-bbb4-4d47-496f-08d3a8df5ecd', N'c597d915-38e0-4c32-0615-08d3a367fbcc', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'578f98cc-7615-4ee3-4970-08d3a8df5ecd', N'c597d915-38e0-4c32-0615-08d3a367fbcc', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'551b1da9-2660-467b-4971-08d3a8df5ecd', N'56b72d88-5922-4635-0616-08d3a367fbcc', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'3bb1da62-8a37-493c-4972-08d3a8df5ecd', N'56b72d88-5922-4635-0616-08d3a367fbcc', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'17b46d3b-8a9a-459e-4973-08d3a8df5ecd', N'8efd99d2-5004-44c6-0617-08d3a367fbcc', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'20b29761-91ca-4b3b-4974-08d3a8df5ecd', N'8efd99d2-5004-44c6-0617-08d3a367fbcc', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'128ef23c-ad6b-4256-4975-08d3a8df5ecd', N'20d1b105-5c6d-4961-c4ae-08d3a6adbc78', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'fba49043-bf78-4ab2-4976-08d3a8df5ecd', N'20d1b105-5c6d-4961-c4ae-08d3a6adbc78', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'e88de8fc-92c9-4ec2-4977-08d3a8df5ecd', N'56ff05c4-57f6-429c-c4ad-08d3a6adbc78', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'debe9797-540a-47ef-4978-08d3a8df5ecd', N'56ff05c4-57f6-429c-c4ad-08d3a6adbc78', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'd370d7a0-43a2-432b-4979-08d3a8df5ecd', N'd5d5a9fd-511b-4025-b495-8908fb70c762', N'29cb1b57-1862-4300-b378-f3271b870148', N'086357bf-01b1-494c-a8b8-54fdfa7c4c9e')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'f093cfe9-9b41-4076-497a-08d3a8df5ecd', N'62328d72-ad82-4de2-9a98-c954e5b30b28', N'29cb1b57-1862-4300-b378-f3271b870148', N'086357bf-01b1-494c-a8b8-54fdfa7c4c9e')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'4adb8923-3d87-4cdf-2fc1-08d3bfd06303', N'19391c5e-1253-40c3-3b4f-08d3a4490460', N'29cb1b57-1862-4300-b378-f3271b870148', N'67eb6f56-623b-4d2a-b602-4bed0388995c')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'6d99b560-9d7a-4224-2fc2-08d3bfd06303', N'19391c5e-1253-40c3-3b4f-08d3a4490460', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'67eb6f56-623b-4d2a-b602-4bed0388995c')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'72d54e8b-2419-4094-9ad2-0cb2b1f33694', N'51a79e31-9bb1-4fa7-4da6-08d3c2d166ce', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'0960154c-a3dc-4d00-9e07-21289d3d9c12', N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'c2738ba6-afae-4b42-997f-2f1a11083604', N'7dff05ab-1376-4ae6-09f0-08d3ae5877da', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'e9656327-3622-40b8-b26a-357bd66caca6', N'51a79e31-9bb1-4fa7-4da6-08d3c2d166ce', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'529fe8ee-1386-4016-9474-3cc5d9a77dd0', N'19391c5e-1253-40c3-3b4f-08d3a4490460', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'c66a874f-978c-49a1-af6c-3cee553c45b4', N'bb858c11-6779-406d-e941-08d3b4c8ff40', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'd371c14c-16ed-4798-ac37-4fd437f70140', N'7dff05ab-1376-4ae6-09f0-08d3ae5877da', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'1b5ba80b-e714-42b1-96a0-5a20d750ba94', N'9333f6a1-ba81-4b18-a922-08d3adc0bb30', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'7d1b14bb-ce02-4d8f-ae26-a820457be867', N'57942b7c-42a8-405e-aa52-08d3b8ab87fd', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'9ac2622c-61ca-4bc2-992d-d3d9944612f0', N'1322cf31-fae5-40de-d7b7-08d3bfd5ca3d', N'29cb1b57-1862-4300-b378-f3271b870148', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'fc885496-771a-4b90-b264-ec841df6a9fd', N'1322cf31-fae5-40de-d7b7-08d3bfd5ca3d', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'c3b2d9e5-c976-4514-9d45-f0224d64a313', N'bb858c11-6779-406d-e941-08d3b4c8ff40', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'f901ab4c-1b11-493f-9212-f79b69fd64da', N'9333f6a1-ba81-4b18-a922-08d3adc0bb30', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO
INSERT [dbo].[PagePermission] ([Id], [PageId], [PermissionId], [RoleId]) VALUES (N'568bc820-409b-436d-b7b6-fabe27eafa59', N'19391c5e-1253-40c3-3b4f-08d3a4490460', N'2da41181-be15-4ad6-a89c-3ba8b71f993b', N'9b461499-c49e-4398-bfed-4364a176ebbd')
GO