namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IEntityPartyRole : Lambda.Interfaces.IBaseErpModel,
                                        Lambda.Interfaces.IBaseErpModelPartyId,
                                        Lambda.Interfaces.IBaseErpModelRoleTypeId,
                                        Lambda.Interfaces.IBaseErpModelEntityRecordId,
                                        Lambda.Interfaces.IBaseErpModelEntityRecordType
    {

    }
}