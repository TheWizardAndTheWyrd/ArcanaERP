// Lambda.Interfaces contains base interfaces with immutable members.
// Ideally, we are working towards removing all mutable state from Arcana ERP
// and going purely functional in our architecutre
//
// How does this work when data is mutated inside our data store?
//
// We're either going to add Datomic support or implement time-series in our DAL.
// Basically, if you need to alter a value, we will make a copy of the object with
// the modified data.  This modified object will probably keep the same CreatedAt property
// of it's predecessor while mutating any properties -- and this is important -- updating
// the UpdatedAt property with the latest DateTime stamp.
//
// Won't this make our database rather large?
//
// Over time, yes.  The solution to this is to write an API to archive historical data according
// to business requirements.
//
// What is the benefit of immutable data in our Data Access Layer?
//
// The benefits are many; not the least of which are:
//   * Plotting changes to data over time making Business Intelligence an Analytics faster and easier.
//   * Massive parallelization of sequence operations over data collections.
//   * Reduced memory overhead, which in turn, will greatly increase performance.
//   * And, perhaps most important of all, the ability to easily reason about our system.

namespace ArcanaErp.Core.Lambda

open System

module Interfaces =
    
    type IBaseErpModel =
        abstract member Id : int with get, set
        abstract member CreatedAt : DateTime with get, set
        abstract member UpdatedAt : DateTime with get, set

    type IBaseErpModelParentId =
        abstract member ParentId : int with get, set

    type IBaseErpModelExternalId =
        abstract member ExternalIdentifier : string with get, set
        abstract member ExternalIdSource : string with get, set

    type IBaseErpModelInternalId =
        abstract member InternalIdentifier : string with get, set

    type IBaseErpModelDescription =
        abstract member Description : string with get, set
    
    type ITimeSpan =
        abstract member FromDate : DateTime with get, set
        abstract member ThroughDate: DateTime with get, set

    type IBaseErpModelLeftRightValues =
        abstract member LeftValue : int with get, set
        abstract member RightValue : int with get, set

    type IBaseErpModelComments =
        abstract member Comments : string with get, set

    type IBaseErpModelAgreement =
        abstract member AgreementTypeId : int with get, set
        abstract member AgreementStatus : string with get, set
        abstract member AgreementDate : DateTime with get, set

    type IBaseErpModelProduct =
        abstract member ProductId : int with get, set

    type IBaseErpModelOrganization =
        abstract member OrganizationId : int with get, set
