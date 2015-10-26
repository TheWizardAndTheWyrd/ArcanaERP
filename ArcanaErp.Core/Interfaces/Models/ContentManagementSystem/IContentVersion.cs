namespace ArcanaErp.Core.Interfaces.Models.ContentManagementSystem
{
    public interface IContentVersion : Lambda.Interfaces.IBaseErpModel,
                                       Lambda.Interfaces.IBaseErpModelContentId,
                                       Lambda.Interfaces.IBaseErpModelContentBlock,
                                       Lambda.Interfaces.IBaseErpModelTitle,
                                       Lambda.Interfaces.IBaseErpModelCreatedById,
                                       Lambda.Interfaces.IBaseErpModelUpdatedById,
                                       Lambda.Interfaces.IBaseErpModelInternalId,
                                       Lambda.Interfaces.IBaseErpModelVersionedType
    {
         
    }
}