using ArcanaErp.Core.Interfaces.Models.BaseErpServices;

namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using Lambda;

    [Table("Individual")]
    public partial class Individual : IIndividual
    {
        public int Id { get; set; }

        public int PartyId { get; set; }

        [StringLength(255)]
        public string CurrentLastName { get; set; }

        [StringLength(255)]
        public string CurrentFirstName { get; set; }

        [StringLength(255)]
        public string CurrentMiddleName { get; set; }

        [StringLength(255)]
        public string CurrentPersonalTitle { get; set; }

        [StringLength(255)]
        public string CurrentSuffix { get; set; }

        [StringLength(255)]
        public string CurrentNickName { get; set; }

        [StringLength(1)]
        public string Gender { get; set; }

        [Column(TypeName = "date")]
        public DateTime BirthDate { get; set; }

        public decimal Height { get; set; }

        public int Weight { get; set; }

        [StringLength(255)]
        public string MothersMaidenName { get; set; }

        [StringLength(1)]
        public string MaritalStatus { get; set; }

        [StringLength(255)]
        public string SocialSecurityNumber { get; set; }

        public int CurrentPassportNumber { get; set; }

        [Column(TypeName = "date")]
        public DateTime CurrentPassportExpireDate { get; set; }

        public int TotalYearsWorkExperience { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        [StringLength(255)]
        public string EncryptedSsn { get; set; }

        [StringLength(255)]
        public string TempSsn { get; set; }

        [StringLength(255)]
        public string Salt { get; set; }

        [StringLength(255)]
        public string SsnLastFour { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
