using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IStatusApplication
    {
        int Id { get; set; }
        int? TrackedStatusTypeId { get; set; }
        int? StatusApplicationRecordId { get; set; }
        string StatusApplicationRecordType { get; set; }
        DateTime? FromDate { get; set; }
        DateTime? ThroughDate { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
        int? PartyId { get; set; }
    }
}