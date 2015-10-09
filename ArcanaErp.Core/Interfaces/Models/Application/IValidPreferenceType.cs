namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IValidPreferenceType
    {
        int Id { get; set; }
        int? PreferenceTypeId { get; set; }
        int? PreferencedRecordId { get; set; }
        string PreferencedRecordType { get; set; }
    }
}