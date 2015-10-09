using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IPreference
    {
        int Id { get; set; }
        int? PreferenceOptionId { get; set; }
        int? PreferenceTypeId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}