namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IDelayedJob : Lambda.Interfaces.IBaseErpModel,
                                   Lambda.Interfaces.IBaseErpModelPriority,
                                   Lambda.Interfaces.IBaseErpModelDelayedJob
    {
         
    }
}