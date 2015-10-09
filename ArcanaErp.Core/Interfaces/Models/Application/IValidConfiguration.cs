using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IValidConfiguration
    {
        int Id { get; set; }
        int? ConfiguredItemId { get; set; }
        string ConfiguredItemType { get; set; }
        int? ConfigurationId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}