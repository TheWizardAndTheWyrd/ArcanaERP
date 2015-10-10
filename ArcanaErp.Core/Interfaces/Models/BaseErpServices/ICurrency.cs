using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface ICurrency
    {
        int Id { get; set; }
        string Name { get; set; }
        string Definition { get; set; }
        string InternalIdentifier { get; set; }
        string NumericCode { get; set; }
        string MajorUnitSymbol { get; set; }
        string MinorUnitSymbol { get; set; }
        string RatioOfMinorUnitToMajorUnit { get; set; }
        string PostFixLabel { get; set; }
        DateTime? IntroductionDate { get; set; }
        DateTime? ExpirationDate { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}