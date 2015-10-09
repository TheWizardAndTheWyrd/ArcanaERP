using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IPreferenceType
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        int? DefaultPreferenceOptionId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}