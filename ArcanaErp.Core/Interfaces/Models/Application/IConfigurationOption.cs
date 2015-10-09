using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfigurationOption
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        string Value { get; set; }
        string Comment { get; set; }
        bool? UserDefined { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}