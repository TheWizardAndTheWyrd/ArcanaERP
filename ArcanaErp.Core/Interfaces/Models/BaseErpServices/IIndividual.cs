using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IIndividual
    {
        int Id { get; set; }
        int? PartyId { get; set; }
        string CurrentLastName { get; set; }
        string CurrentFirstName { get; set; }
        string CurrentMiddleName { get; set; }
        string CurrentPersonalTitle { get; set; }
        string CurrentSuffix { get; set; }
        string CurrentNickName { get; set; }
        string Gender { get; set; }
        DateTime? BirthDate { get; set; }
        decimal? Height { get; set; }
        int? Weight { get; set; }
        string MothersMaidenName { get; set; }
        string MaritalStatus { get; set; }
        string SocialSecurityNumber { get; set; }
        int? CurrentPassportNumber { get; set; }
        DateTime? CurrentPassportExpireDate { get; set; }
        int? TotalYearsWorkExperience { get; set; }
        string Comments { get; set; }
        string EncryptedSsn { get; set; }
        string TempSsn { get; set; }
        string Salt { get; set; }
        string SsnLastfour { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}