using System;
using System.ComponentModel.DataAnnotations.Schema;
using ArcanaErp.Core.Interfaces.Models.Application;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Preference")]
    public partial class Preference : IPreference
    {
        public int Id { get; set; }

        public int? PreferenceOptionId { get; set; }

        public int? PreferenceTypeId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
