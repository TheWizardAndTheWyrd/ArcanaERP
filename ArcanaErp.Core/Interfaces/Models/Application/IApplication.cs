using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IApplication
    {
        int Id { get; set; }
        string Description { get; set; }
        string Icon { get; set; }
        string InternalIdentifier { get; set; }
        string Type { get; set; }
        bool? CanDelete { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}