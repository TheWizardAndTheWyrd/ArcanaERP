using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface INoteType
    {
        int Id { get; set; }
        int? ParentId { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        string ExternalIdentifier { get; set; }
        int? NoteTypeRecordId { get; set; }
        string NoteTypeRecordType { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}