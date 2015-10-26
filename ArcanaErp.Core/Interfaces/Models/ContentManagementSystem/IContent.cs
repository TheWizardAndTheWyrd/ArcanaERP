namespace ArcanaErp.Core.Interfaces.Models.ContentManagementSystem
{
    public interface IContent : Lambda.Interfaces.IBaseErpModel,
                                Lambda.Interfaces.IBaseErpModelType,
                                Lambda.Interfaces.IBaseErpModelTitle,
                                Lambda.Interfaces.IBaseErpModelContentBlock,
                                Lambda.Interfaces.IBaseErpModelCreatedById,
                                Lambda.Interfaces.IBaseErpModelUpdatedById,
                                Lambda.Interfaces.IBaseErpModelInternalId
    {
         
    }
}