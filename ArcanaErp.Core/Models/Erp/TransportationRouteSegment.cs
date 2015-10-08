namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TransportationRouteSegment")]
    public partial class TransportationRouteSegment
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public int? Sequence { get; set; }

        public DateTime? EstimatedStart { get; set; }

        public DateTime? EstimatedArrival { get; set; }

        public DateTime? ActualStart { get; set; }

        public DateTime? ActualArrival { get; set; }

        public int? StartMileage { get; set; }

        public int? EndMileage { get; set; }

        public int? FuelUsed { get; set; }

        public int? TransportationRouteId { get; set; }

        public int? FromTransportationRoutestopId { get; set; }

        public int? ToTransportationRoutestopId { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
