using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IDescriptiveAsset
    {
        int Id { get; set; }
        int? ViewTypeId { get; set; }
        string InternalIdentifier { get; set; }
        string Description { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdSource { get; set; }
        int? DescribedRecordId { get; set; }
        string DescribedRecordType { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}