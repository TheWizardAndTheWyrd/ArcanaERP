namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Comment
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string CommentorName { get; set; }

        [StringLength(255)]
        public string Email { get; set; }

        [Column("Comment", TypeName = "text")]
        public string Comment1 { get; set; }

        public int? approved { get; set; }

        public DateTime? approvedat { get; set; }

        public int? UsersId { get; set; }

        public int? CommentedRecordId { get; set; }

        [StringLength(255)]
        public string CommentedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
