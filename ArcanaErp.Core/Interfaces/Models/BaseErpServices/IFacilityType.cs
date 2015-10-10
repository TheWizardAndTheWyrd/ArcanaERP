using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFacilityType
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdentiferSource { get; set; }
        int? ParentId { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    } 
}