using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IPreferenceOption
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        string Value { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}