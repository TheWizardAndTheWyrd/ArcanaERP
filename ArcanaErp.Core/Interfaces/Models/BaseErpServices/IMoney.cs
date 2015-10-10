using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IMoney
    {
        int Id { get; set; }
        string Description { get; set; }
        decimal? Amount { get; set; }
        int? CurrencyId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}