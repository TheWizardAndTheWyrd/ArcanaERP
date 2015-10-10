using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IPhoneNumber
    {
        int Id { get; set; }
        string PhoneNumber1 { get; set; }
        string Description { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}