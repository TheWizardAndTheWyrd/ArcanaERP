namespace ArcanaErp.Core.Interfaces.Models.TechServices
{
    public interface IAuditLogType : Lambda.Interfaces.IBaseErpModel,
                                     Lambda.Interfaces.IBaseErpModelDescription,
                                     Lambda.Interfaces.IBaseErpModelComments,
                                     Lambda.Interfaces.IBaseErpModelErrorCode,
                                     Lambda.Interfaces.IBaseErpModelInternalId,
                                     Lambda.Interfaces.IBaseErpModelExternalId,
                                     Lambda.Interfaces.IBaseErpModelParentId,
                                     Lambda.Interfaces.IBaseErpModelLeftRightValues
    {
         
    }
}