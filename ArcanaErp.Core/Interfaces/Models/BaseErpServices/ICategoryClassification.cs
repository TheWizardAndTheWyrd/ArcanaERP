using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface ICategoryClassification
    {
        int Id { get; set; }
        int? CategoryId { get; set; }
        string ClassificationType { get; set; }
        int? ClassificationId { get; set; }
        DateTime? FromDate { get; set; }
        DateTime? ToDate { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}