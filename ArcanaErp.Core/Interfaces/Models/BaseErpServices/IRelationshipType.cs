﻿using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IRelationshipType
    {
        int Id { get; set; }
        int? ParentId { get; set; }
        int? LeftValue { get; set; }
        int? RightValue { get; set; }
        int? ValidFromRoleTypeId { get; set; }
        int? ValidToRoleTypeId { get; set; }
        string Name { get; set; }
        string Description { get; set; }
        string InternalIdentifier { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdsource { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}