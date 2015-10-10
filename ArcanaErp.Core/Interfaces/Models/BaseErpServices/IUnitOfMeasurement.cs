using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IUnitOfMeasurement
    {
        int Id { get; set; }
        string Description { get; set; }
        string Domain { get; set; }
        string InternalIdentifier { get; set; }
        string Comments { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdsource { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        int? ParentId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}