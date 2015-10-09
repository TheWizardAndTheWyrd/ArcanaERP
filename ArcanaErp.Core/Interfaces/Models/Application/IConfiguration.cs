using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfiguration
    {
        int Id { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        bool? Active { get; set; }
        bool? IsTemplateText { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}