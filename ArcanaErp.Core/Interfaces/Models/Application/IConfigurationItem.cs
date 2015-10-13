using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfigurationItem
    {
        int Id { get; set; }
        int? ConfigurationId { get; set; }
        int? ConfigurationItemTypeId { get; set; }
        int? ConfigurationOptionId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}