using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface INote
    {
        int Id { get; set; }
        int? CreatedById { get; set; }
        string Content { get; set; }
        int? NotedRecordId { get; set; }
        string NotedRecordType { get; set; }
        int? NoteTypeId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}