using System;

namespace ArcanaErp.Core.Interfaces.Models.Agreements
{
    public interface ILoyaltyProgramCode
    {
        int Id { get; set; }
        string Identifier { get; set; }
        string Name { get; set; }
        string Description { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}