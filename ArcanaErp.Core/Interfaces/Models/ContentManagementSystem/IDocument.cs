namespace ArcanaErp.Core.Interfaces.Models.ContentManagementSystem
{
    public interface IDocument : Lambda.Interfaces.IBaseErpModel,
                                 Lambda.Interfaces.IBaseErpModelInternalId,
                                 Lambda.Interfaces.IBaseErpModelExternalId,
                                 Lambda.Interfaces.IBaseErpModelDescription,
                                 Lambda.Interfaces.IBaseErpModelDocument,
                                 Lambda.Interfaces.IBaseErpModelCustomFields
    {
         
    }
}