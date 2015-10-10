﻿using System;

namespace ArcanaErp.Core.Interfaces.Models.BaseErpServices
{
    public interface IFixedAsset
    {
        int Id { get; set; }
        int? FixedAssetTypeId { get; set; }
        string Description { get; set; }
        string Comments { get; set; }
        string InternalIdentifier { get; set; }
        string ExternalIdentifier { get; set; }
        string ExternalIdSource { get; set; }
        string FixedAssetRecordType { get; set; }
        int? FixedAssetRecordId { get; set; }
        DateTime CreatedAt { get; set; }
        DateTime UpdatedAt { get; set; }
    }
}