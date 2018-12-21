﻿using Deviser.Admin.Properties;
using Deviser.Core.Common.DomainTypes.Admin;
using Deviser.Core.Common.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace Deviser.Admin.Builders
{
    /// <summary>
    /// Builds the filed config 
    /// </summary>
    /// <typeparam name="TEntity"></typeparam>
    public class FieldBuilder<TEntity>
        where TEntity : class
    {
        private IFieldConfig _fieldConfig;
        private IAdminConfig _adminConfig;

        public FieldBuilder(IFieldConfig fieldConfig, IAdminConfig adminConfig)
        {
            _fieldConfig = fieldConfig;
            _adminConfig = adminConfig;
        }

        public FieldBuilder<TEntity> AddField<TProperty>(Expression<Func<TEntity, TProperty>> expression, Action<FieldOption> fieldOptionAction = null)
        {
            if (_adminConfig.FieldConfig.ExcludedFields.Count > 0)
                AddRemoveInvalidOperationException();

            var field = CreateSimpleField(expression, fieldOptionAction);
            _fieldConfig.AddField(field);
            return this;
        }

        public FieldBuilder<TEntity> AddInlineField<TProperty>(Expression<Func<TEntity, TProperty>> expression, Action<FieldOption> fieldOptionAction = null)
        {
            if (_adminConfig.FieldConfig.ExcludedFields.Count > 0)
                AddRemoveInvalidOperationException();

            var field = CreateSimpleField(expression, fieldOptionAction);
            _fieldConfig.AddInLineField(field);
            return this;
        }

        public FieldBuilder<TEntity> AddComplexField<TReleatedEntity>(Expression<Func<TEntity, object>> expression,
            ComplexFieldType complexFieldType,
            Expression<Func<TReleatedEntity, string>> displayExpression,
            Action<FieldOption> fieldOptionAction = null)
            where TReleatedEntity : class
        {
            if (_adminConfig.FieldConfig.ExcludedFields.Count > 0)
                AddRemoveInvalidOperationException();

            var field = CreateComplexField(expression, complexFieldType, displayExpression, fieldOptionAction);
            _fieldConfig.AddField(field);
            return this;
        }

        public FieldBuilder<TEntity> AddInlineComplexField<TReleatedEntity>(Expression<Func<TEntity, object>> expression,
            ComplexFieldType complexFieldType,
            Expression<Func<TReleatedEntity, string>> displayExpression,
            Action<FieldOption> fieldOptionAction = null)
            where TReleatedEntity : class
        {
            if (_adminConfig.FieldConfig.ExcludedFields.Count > 0)
                AddRemoveInvalidOperationException();

            var field = CreateComplexField(expression, complexFieldType, displayExpression, fieldOptionAction);
            _fieldConfig.AddInLineField(field);
            return this;
        }


        /// <summary>
        /// Remove Field cannot be combined with AddField/AddInlineField/AddComplexField/AddInlineComplexField
        /// </summary>
        /// <typeparam name="TProperty"></typeparam>
        /// <param name="expression"></param>
        /// <returns></returns>
        public FieldBuilder<TEntity> RemoveField<TProperty>(Expression<Func<TEntity, TProperty>> expression)
        {
            if (_adminConfig.AllFormFields.Count > 0)
                AddRemoveInvalidOperationException();

            var field = new Field()
            {
                FieldExpression = expression
            };

            _fieldConfig.RemoveField(field);
            return this;
        }

        //private FieldBuilder<TEntity> AddField(IFieldConfig fieldConfig, Field field)
        //{
        //    fieldConfig.AddField(field);
        //    //fieldConfig.Fields.Add(new List<Field>() {
        //    //    field
        //    //});
        //    return this;
        //}

        //private FieldBuilder<TEntity> AddInlineField(IFieldConfig fieldConfig, Field field)
        //{
        //    //if (fieldConfig.Fields.Count == 0)
        //    //    fieldConfig.Fields.Add(new List<Field>());

        //    //var FieldRow = fieldConfig.Fields.Last();

        //    //FieldRow.Add(field);
        //    fieldConfig.AddInLineField(field);
        //    return this;
        //}

        /// <summary>
        /// Creates a complex field from given expression
        /// </summary>
        /// <typeparam name="TProperty"></typeparam>
        /// <param name="expression"></param>
        /// <param name="fieldOptionAction"></param>
        /// <returns></returns>
        private Field CreateComplexField<TReleatedEntity, TProperty>(Expression<Func<TEntity, TProperty>> expression,
            ComplexFieldType complexFieldType,
            Expression<Func<TReleatedEntity, string>> displayExpression,
            Action<FieldOption> fieldOptionAction = null)
            where TReleatedEntity : class
            where TProperty : class
        {
            FieldOption fieldOption = new FieldOption();
            fieldOptionAction?.Invoke(fieldOption);
            fieldOption.ReleatedEntityDisplayExpression = displayExpression;
            fieldOption.RelationType = (RelationType)complexFieldType;
            fieldOption.ReleatedEntityType = typeof(TReleatedEntity);

            return new Field
            {
                FieldExpression = expression,
                FieldOption = fieldOption
            };
        }

        /// <summary>
        /// Create a simple filed from given expression
        /// </summary>
        /// <typeparam name="TProperty"></typeparam>
        /// <param name="expression"></param>
        /// <param name="fieldOptionAction"></param>
        /// <returns></returns>
        private Field CreateSimpleField<TProperty>(Expression<Func<TEntity, TProperty>> expression, Action<FieldOption> fieldOptionAction = null)
        {
            FieldOption fieldOption = new FieldOption();
            fieldOptionAction?.Invoke(fieldOption);
            return new Field
            {
                FieldExpression = expression,
                FieldOption = fieldOption
            };
        }

        private void AddRemoveInvalidOperationException()
        {
            throw new InvalidOperationException(Resources.AddRemoveInvalidOperation);
        }
    }
}