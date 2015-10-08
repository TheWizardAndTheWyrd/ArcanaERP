namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Individual")]
    public partial class Individual
    {
        public int Id { get; set; }

        public int? PartyId { get; set; }

        [StringLength(255)]
        public string CurrentLastName { get; set; }

        [StringLength(255)]
        public string CurrentFirstName { get; set; }

        [StringLength(255)]
        public string CurrentmIddleName { get; set; }

        [StringLength(255)]
        public string CurrentpersOnalTitle { get; set; }

        [StringLength(255)]
        public string Currentsuffix { get; set; }

        [StringLength(255)]
        public string CurrentnickName { get; set; }

        [StringLength(1)]
        public string gender { get; set; }

        [Column(TypeName = "date")]
        public DateTime? birthDate { get; set; }

        public decimal? Height { get; set; }

        public int? weight { get; set; }

        [StringLength(255)]
        public string mothersmaIdenName { get; set; }

        [StringLength(1)]
        public string maritalStatus { get; set; }

        [StringLength(255)]
        public string socialSecuritynumber { get; set; }

        public int? Currentpassportnumber { get; set; }

        [Column(TypeName = "date")]
        public DateTime? CurrentpassportexpireDate { get; set; }

        public int? Totalyearsworkexperience { get; set; }

        [StringLength(255)]
        public string Comments { get; set; }

        [StringLength(255)]
        public string enCryptedssn { get; set; }

        [StringLength(255)]
        public string tempssn { get; set; }

        [StringLength(255)]
        public string Salt { get; set; }

        [StringLength(255)]
        public string ssnLastfour { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }
    }
}
