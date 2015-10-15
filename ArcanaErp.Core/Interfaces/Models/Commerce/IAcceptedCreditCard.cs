namespace ArcanaErp.Core.Interfaces.Models.Commerce
{
    public interface IAcceptedCreditCard : Lambda.Interfaces.IBaseErpModel
    {
        int? OrganizationId { get; set; }

        string CardType { get; set; }
    }
}