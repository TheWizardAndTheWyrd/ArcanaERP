using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IConfigurationItemType
    {
        int Id { get; set; }
        int? ParentId { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        int? Precedence { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        bool? AllowUserDefinedOption { get; set; }
        bool? IsMultiOptional { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}