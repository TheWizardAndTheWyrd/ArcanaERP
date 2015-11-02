namespace ArcanaErp.Core.Interfaces.Models.WorkEffort
{
    public interface IPartyFixedAssetAssignment : Lambda.Interfaces.IBaseErpModel,
                                                  Lambda.Interfaces.IBaseErpModelPartyId,
                                                  Lambda.Interfaces.IBaseErpModelFixedAssetId,
                                                  Lambda.Interfaces.IBaseErpModelAssignedTimeSpan,
                                                  Lambda.Interfaces.IBaseErpModelAllocatedCostMoneyId
    {
         
    }
}