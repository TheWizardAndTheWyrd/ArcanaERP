using System;
using System.Reflection;

namespace ArcanaErp.OData.Modules.Agreements.Areas.HelpPage.ModelDescriptions
{
    public interface IModelDocumentationProvider
    {
        string GetDocumentation(MemberInfo member);

        string GetDocumentation(Type type);
    }
}