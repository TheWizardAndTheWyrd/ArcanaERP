using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface ICategory
    {
        int Id { get; set; }
        string Description { get; set; }
        string ExternalIdentifier { get; set; }
        DateTime? FromDate { get; set; }
        DateTime? ToDate { get; set; }
        string InternalIdentifier { get; set; }
        int? CategoryRecordId { get; set; }
        string CategoryRecordType { get; set; }
        int? ParentId { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}