namespace ArcanaErp.Core.Interfaces.Models.TechServices
{
    public interface IAuditLogItemType : Lambda.Interfaces.IBaseErpModel,
                                         Lambda.Interfaces.IBaseErpModelInternalId,
                                         Lambda.Interfaces.IBaseErpModelExternalId,
                                         Lambda.Interfaces.IBaseErpModelDescription,
                                         Lambda.Interfaces.IBaseErpModelComments,
                                         Lambda.Interfaces.IBaseErpModelParentId,
                                         Lambda.Interfaces.IBaseErpModelLeftRightValues
    {
         
    }
}