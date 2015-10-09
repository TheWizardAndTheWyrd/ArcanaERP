namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        public int Id { get; set; }

        [StringLength(255)]
        public string UserName { get; set; }

        [StringLength(255)]
        public string Email { get; set; }

        public int? PartyId { get; set; }

        [StringLength(255)]
        public string Type { get; set; }

        [StringLength(255)]
        public string Salt { get; set; }

        [StringLength(255)]
        public string CryptedPassword { get; set; }

        public DateTime? LastLoginAt { get; set; }

        public DateTime? LastLogoutAt { get; set; }

        public DateTime? LastActivityAt { get; set; }

        public int? FailedLoginsCount { get; set; }

        public DateTime? LockExpiresAt { get; set; }

        [StringLength(255)]
        public string RememberMeToken { get; set; }

        public DateTime? RememberMeTokenExpiresAt { get; set; }

        [StringLength(255)]
        public string ResetPasswordToken { get; set; }

        public DateTime? ResetPasswordTokenExpiresAt { get; set; }

        public DateTime? ResetPasswordEmailsentat { get; set; }

        [StringLength(255)]
        public string ActivationState { get; set; }

        [StringLength(255)]
        public string ActivationToken { get; set; }

        public DateTime? ActivationTokenExpiresAt { get; set; }

        [StringLength(255)]
        public string SecurityQuestion1 { get; set; }

        [StringLength(255)]
        public string SecurityAnswer1 { get; set; }

        [StringLength(255)]
        public string SecurityQuestion2 { get; set; }

        [StringLength(255)]
        public string SecurityAnswer2 { get; set; }

        [StringLength(255)]
        public string AuthToken { get; set; }

        public DateTime? AuthTokenExpiresAt { get; set; }

        public DateTime CreatedAt { get; set; }

        public DateTime UpdatedAt { get; set; }

        [StringLength(255)]
        public string UnlockToken { get; set; }

        [StringLength(255)]
        public string LastLoginFromIpAddress { get; set; }
    }
}
