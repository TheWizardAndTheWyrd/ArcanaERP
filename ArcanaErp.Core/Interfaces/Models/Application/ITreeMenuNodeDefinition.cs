using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface ITreeMenuNodeDefinition
    {
        int Id { get; set; }
        string NodeType { get; set; }
        int? ParentId { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        string MenuShortName { get; set; }
        string MenuDescription { get; set; }
        string Text { get; set; }
        string IconUrl { get; set; }
        string TargetUrl { get; set; }
        string ResourceClass { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}