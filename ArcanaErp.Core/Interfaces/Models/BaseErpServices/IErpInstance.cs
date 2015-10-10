using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IErpInstance
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        decimal? Version { get; set; }
        string Type { get; set; }
        string Schema { get; set; }
        int? ParentId { get; set; }
        string GuidString { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}