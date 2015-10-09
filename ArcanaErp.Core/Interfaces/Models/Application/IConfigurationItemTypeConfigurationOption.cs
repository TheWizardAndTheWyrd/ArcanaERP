using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfigurationItemTypeConfigurationOption
    {
        int Id { get; set; }
        int? ConfigurationItemTypeId { get; set; }
        int? ConfigurationOptionId { get; set; }
        bool? IsDefault { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}