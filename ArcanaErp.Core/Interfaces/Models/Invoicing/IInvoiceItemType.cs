namespace ArcanaErp.Core.Interfaces.Models.Invoicing
{
    public interface IInvoiceItemType : Lambda.Interfaces.IBaseErpModel,
                                        Lambda.Interfaces.IBaseErpModelParentId,
                                        Lambda.Interfaces.IBaseErpModelLeftRightValues,
                                        Lambda.Interfaces.IBaseErpModelDescription,
                                        Lambda.Interfaces.IBaseErpModelComments,
                                        Lambda.Interfaces.IBaseErpModelInternalId,
                                        Lambda.Interfaces.IBaseErpModelExternalId
    {
         
    }
}