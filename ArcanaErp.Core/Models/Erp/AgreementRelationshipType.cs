using ArcanaErp.Core.Interfaces.Models.Agreements;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using ArcanaErp.Core.Lambda;

    [Table("AgreementRelationshipType")]
    public partial class AgreementRelationshipType : IAgreementRelationshipType
    {
        public int Id { get; set; }

        public int ParentId { get; set; }

        public int LeftValue { get; set; }

        public int RightValue { get; set; }

        public int ValidFromRoleTypeId { get; set; }

        public int ValidToRoleTypeId { get; set; }

        [StringLength(255)]
        public string Name { get; set; }

        [StringLength(255)]
        public string Description { get; set; }

        [StringLength(255)]
        public string InternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdentifier { get; set; }

        [StringLength(255)]
        public string ExternalIdSource { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
