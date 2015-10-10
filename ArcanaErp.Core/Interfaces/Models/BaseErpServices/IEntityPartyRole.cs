namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IEntityPartyRole
    {
        int Id { get; set; }
        int? PartyId { get; set; }
        int? RoleTypeId { get; set; }
        int? EntityRecordId { get; set; }
        string EntityRecordType { get; set; }
    }
}