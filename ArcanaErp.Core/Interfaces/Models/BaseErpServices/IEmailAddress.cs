using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IEmailAddress
    {
        int Id { get; set; }
        string EmailAddress1 { get; set; }
        string Description { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}