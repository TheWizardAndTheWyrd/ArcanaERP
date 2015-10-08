namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UsersPreference")]
    public partial class UsersPreference
    {
        public int Id { get; set; }

        public int? UsersId { get; set; }

        public int? PreferenceId { get; set; }

        public int? PreferencedRecordId { get; set; }

        [StringLength(255)]
        public string PreferencedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
