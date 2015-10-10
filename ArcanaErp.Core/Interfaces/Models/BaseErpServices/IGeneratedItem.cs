using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IGeneratedItem
    {
        int Id { get; set; }
        int? GeneratedById { get; set; }
        string GeneratedByType { get; set; }
        int? GeneratedRecordId { get; set; }
        string GeneratedRecordType { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}