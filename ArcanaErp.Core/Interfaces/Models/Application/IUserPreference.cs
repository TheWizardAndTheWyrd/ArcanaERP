using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IUserPreference
    {
        int Id { get; set; }
        int? UserId { get; set; }
        int? PreferenceId { get; set; }
        int? PreferencedRecordId { get; set; }
        string PreferencedRecordType { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}