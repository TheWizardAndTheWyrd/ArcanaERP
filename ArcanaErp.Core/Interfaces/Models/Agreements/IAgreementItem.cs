using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementItem
    {
        int Id { get; set; }
        int? AgreementId { get; set; }
        int? AgreementItemTypeId { get; set; }
        string AgreementItemValue { get; set; }
        string Description { get; set; }
        string AgreementItemRuleString { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}