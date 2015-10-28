using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Facility")]
    public partial class Facility : IFacility
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        public int FacilityTypeId { get; set; }

        public int PostalAddressId { get; set; }

        public int FacilityRecordId { get; set; }

        public string FacilityRecordType { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
