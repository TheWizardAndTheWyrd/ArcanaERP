using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface ITrackedStatusType
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        string ExternalIdentifier { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        int? ParentId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}