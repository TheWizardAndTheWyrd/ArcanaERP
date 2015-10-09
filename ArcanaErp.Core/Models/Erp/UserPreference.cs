using ArcanaErp.Core.Interfaces.Models.Application;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("UserPreference")]
    public partial class UserPreference : IUserPreference
    {
        public int Id { get; set; }

        public int? UserId { get; set; }

        public int? PreferenceId { get; set; }

        public int? PreferencedRecordId { get; set; }

        [StringLength(255)]
        public string PreferencedRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
