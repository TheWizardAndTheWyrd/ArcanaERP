namespace ArcanaErp.Core.Lambda

open System

module Interfaces =
    
    type IBaseErpModel =
        abstract member Id : int with get, set
        abstract member CreatedAt : DateTime with get, set
        abstract member UpdatedAt : DateTime with get, set

    type IBaseErpModelExternalId =
        abstract member ExternalIdentifier : string with get, set
        abstract member ExternalIdSource : string with get, set

    type IBaseErpModelDescription =
        abstract member Description : string with get, set