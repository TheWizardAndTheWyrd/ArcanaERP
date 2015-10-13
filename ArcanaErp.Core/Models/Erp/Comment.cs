namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    public partial class Comment : Interfaces.IBaseErpModel
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string CommentorName { get; set; }

        [StringLength(255)]
        public string Email { get; set; }

        [Column("Comment", TypeName = "text")]
        public string Comment1 { get; set; }

        public int? Approved { get; set; }

        public DateTime? ApprovedAt { get; set; }

        public int? UserId { get; set; }

        public int? CommentedRecordId { get; set; }

        [StringLength(255)]
        public string CommentedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
