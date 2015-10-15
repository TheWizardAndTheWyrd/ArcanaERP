using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface IAgreementItem : Lambda.Interfaces.IBaseErpModel,
                                      Lambda.Interfaces.IBaseErpModelDescription
    {
        int? AgreementId { get; set; }

        int? AgreementItemTypeId { get; set; }

        string AgreementItemValue { get; set; }

        string AgreementItemRuleString { get; set; }
    }
}