using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IContact
    {
        int Id { get; set; }
        int? ContactMechanismId { get; set; }
        string ContactMechanismType { get; set; }
        bool? IsPrimary { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdsource { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
        string ContactRecordType { get; set; }
        int? ContactRecordId { get; set; }
    }
}