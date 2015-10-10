using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IOrganization
    {
        int Id { get; set; }
        string Description { get; set; }
        string TaxIdNumber { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}