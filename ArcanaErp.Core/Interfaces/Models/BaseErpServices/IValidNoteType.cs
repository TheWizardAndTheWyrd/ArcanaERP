using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IValidNoteType
    {
        int Id { get; set; }
        int? ValidNoteTypeRecordId { get; set; }
        string ValidNoteTypeRecordType { get; set; }
        int? NoteTypeId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}