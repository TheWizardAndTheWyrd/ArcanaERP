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

    type IBaseErpModelName =
        abstract member Name : string with get, set

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

    type IBaseErpModelAgreementId =
        abstract member AgreementId : int with get, set

    type IBaseErpModelAgreement =
        abstract member AgreementTypeId : int with get, set
        abstract member AgreementStatus : string with get, set
        abstract member AgreementDate : DateTime with get, set

    type IBaseErpModelAgreementItem =
        abstract member AgreementId : int with get, set
        abstract member AgreementItemTypeId : int with get, set
        abstract member AgreementItemValue : string with get, set
        abstract member AgreementItemRuleString : string with get, set

    type IBaseErpModelAgreementTraffic =
        abstract member AgreementIdFrom : int with get, set
        abstract member AgreementIdTo : int with get, set

    type IBaseErpModelRoleTypeTraffic =
        abstract member RoleTypeIdFrom : int with get, set
        abstract member RoleTypeIdTo : int with get, set

    type IBaseErpModelAgreementRelationshipTypeId =
        abstract member AgreementRelationshipTypeId : int with get, set

    type IBaseErpModelAgreementRelstionshipTypeValidTraffic = 
        abstract member ValidFromRoleTypeId : int with get, set
        abstract member ValidToRoleTypeId : int with get, set

    type IBaseErpModelProduct =
        abstract member ProductId : int with get, set

    type IBaseErpModelOrganization =
        abstract member OrganizationId : int with get, set

    type ICardType =
        abstract member CardType : string with get, set

    type IBaseErpModelPartyId =
        abstract member PartyId : int with get, set

    type IBaseErpModelRoleTypeId = 
        abstract member RoleTypeId : int with get, set

    type IBaseErpModelStatusTypeId =
        abstract member StatusTypeId : int with get, set

    type IBaseErpModelIcon =
        abstract member Icon : string with get, set

    type IBaseErpModelCanDelete =
        abstract member CanDelete : bool with get, set

    type IBaseErpModelType =
        abstract member Type : string with get, set

    type IBaseErpModelErpInstance =
        abstract member Version : decimal with get, set
        abstract member Schema : string with get, set
        abstract member GuidString : string with get, set

    type IBaseErpModelArcanaErpInstanceId =
        abstract member ArcanaErpInstanceId : int with get, set

    type IBaseErpModelTransportationRoute =
        abstract member TransportationRouteId : int with get, set
    
    type IBaseErpModelAssociatedRecord =
        abstract member AssociatedRecordId : int with get, set
        abstract member AssociatedRecordType : string with get, set

    type IBaseErpModelWorkEffortId =
        abstract member WorkEffortId : int with get, set

    type IBaseErpModelWorkAuditLog =
        abstract member Application : string with get, set
        abstract member AdditionalInfo : string with get, set
        abstract member AuditLogTypeId : int with get, set
        abstract member EventRecordId : int with get, set
        abstract member EventRecordType : string with get, set

    type IBaseErpModelAuditLogItem =
        abstract member AuditLogId : int with get, set
        abstract member AuditLogItemTypeId : int with get, set
        abstract member AuditLogItemValue : string with get, set
        abstract member AuditLogItemOldValue : string with get, set

    type IBaseErpModelErrorCode =
        abstract member ErrorCode : string with get, set

    type IBaseErpModelBankAccount =
        abstract member RoutingNumber : string with get, set
        abstract member CryptedPrivateAccountNumber : string with get, set
        abstract member NameOnAccount : string with get, set
        abstract member BankAccountTypeId : int with get, set

    type IBaseErpModelBaseTransactionContext =
        abstract member BusinessTransactionEventId : int with get, set
        abstract member TransactionContextRecordId : int with get, set
        abstract member TransactionContextRecordType : string with get, set

    type IBaseErpModelCalculateBalanceStrategyTypeId =
        abstract member CalculateBalanceStrategyTypeId : int with get, set

    type IBaseErpModelBillingAccount =
        abstract member SendPaperBills : bool with get, set
        abstract member PayableOnline : bool with get, set
        abstract member BillingDate : DateTime with get, set

    type IBaseErpModelBillingContactMechanism =
        abstract member ContactMechanismId : int with get, set
        abstract member ContactMechanismType : string with get, set
