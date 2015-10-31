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

    type IBaseErpModelAgreementRelationshipTypeValidTraffic = 
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

    type IBaseErpModelEnteredDate =
        abstract member EnteredDate : DateTime with get, set

    type IBaseErpModelRequestedDate =
        abstract member RequestedDate : DateTime with get, set

    type IBaseErpModelPostDate =
        abstract member PostDate : DateTime with get, set

    type IBaseErpModelBusinessTransactionTaskId =
        abstract member BusinessTransactionTaskId : int with get, set

    type IBaseErpModelBusinessBusinessTransactionAccountId =
        abstract member BusinessTransactionAccountId : int with get, set

    type IBaseErpModelBusinessTransactionAccountRootId =
        abstract member BusinessTransactionAccountRootId : int with get, set

    type IBaseErpModelBusinessTransactionAccountPartyTypeId =
        abstract member BusinessTransactionAccountPartyTypeId : int with get, set

    type IBaseErpModelIsDefaultBillingAccountFlag =
        abstract member IsDefaultBillingAccountFlag : bool with get, set

    type IBaseErpModelBusinessTransactionAccountRootTraffic =
        abstract member BusinessTransactionAccountRootIdFrom : int with get, set
        abstract member BusinessTransactionAccountRootIdTo : int with get, set

    type IBaseErpModelBusinessTransactionAccountRelationshipTypeId =
        abstract member BusinessTransactionAccountRelationshipTypeId : int with get, set

    type IBaseErpModelStatus =
        abstract member Status : string with get, set

    type IBaseErpModelBusinessTransactionAccountType =
        abstract member BusinessTransactionAccountType : string with get, set

    type IBaseErpModelBusinessTransactionAccountTypeId =
        abstract member BusinessTransactionAccountTypeId : int with get, set

    type IBaseErpModelBusinessTransactionEventId =
        abstract member BusinessTransactionEventId : int with get, set

    type IBaseErpModelBusinessTransactionAgreementRole =
        abstract member BusinessTransactionEventType : string with get, set
        abstract member BusinessTransactionAgreementRoleTypeId : int with get, set

    type IBaseErpModelBusinessTransactionEvent =
        abstract member BusinessTransactionTypeId : int with get, set
        abstract member BusinessTransactionRecordId : int with get, set
        abstract member BusinessTransactionRecordType : string with get, set

    type IBaseErpModelShortDescription =
        abstract member ShortDescription : string with get, set

    type IBaseErpModelLongDescription =
        abstract member LongDescription : string with get, set

    type IBaseErpModelBusinessTransactionEventDescription =
        abstract member LanguageId : int with get, set
        abstract member LocaleId: int with get, set
        abstract member Priority : int with get, set
        abstract member Sequence : int with get, set

    type IBaseErpModelBusinessTransactionPartyRoleTypeId =
        abstract member BusinessTransactionPartyRoleTypeId : int with get, set

    type IBaseErpModelTransactionEventTraffic =
        abstract member TransactionEventIdFrom : int with get, set
        abstract member TransactionEventIdTo : int with get, set

    type IBaseErpModelBusinessTransactionRelationshipTypeId =
        abstract member BusinessTransactionRelationshipTypeId : int with get, set

    type ITimeRange =
        abstract member StartTime : DateTime with get, set
        abstract member EndTime : DateTime with get, set

    type IBaseErpModelTitle =
        abstract member Title : string with get, set

    type IBaseErpModelCalendarEvent =
        abstract member AllDay : bool with get, set
        abstract member IsPublic : bool with get, set
        abstract member ListViewImageUrl : string with get, set

    type IBaseErpModelCustomFields =
        abstract member CustomFields : string with get, set

    type IBaseErpModelCalendarEventId =
        abstract member CalendarEventId : int with get, set

    type IBaseErpModelCalendarInvite =
        abstract member InviteText : string with get, set
        abstract member InviterId : int with get, set
        abstract member InviteeId : int with get, set

    type IBaseErpModelOrderLineItemId =
        abstract member OrderLineItemId : int with get, set

    type IBaseErpModelCapability =
        abstract member CapabilityTypeId : int with get, set
        abstract member CapabilityResourceId : int with get, set
        abstract member CapabilityResourceType : string with get, set

    type IBaseErpModelScope =
        abstract member ScopeTypeId : int with get, set
        abstract member ScopeQueryText : string with get, set

    type IBaseErpModelCapabilityAccessor =
        abstract member CapabilityAccessorRecordId : int with get, set
        abstract member CapabilityAccessorRecordType : string with get, set
        abstract member CapabilityId : int with get, set

    type IBaseErpModelCapableModel =
        abstract member CapableModelRecordId : int with get, set
        abstract member CapableModelRecordType : string with get, set

    type IBaseErpModelCategory =
        abstract member CategoryRecordId : int with get, set
        abstract member CategoryRecordType : string with get, set

    type IBaseErpModelCategoryId =
        abstract member CategoryId : int with get, set

    type IBaseErpModelClassification =
        abstract member ClassificationType : string with get, set
        abstract member ClassificationId : int with get, set

    type IBaseErpModelMoneyId =
        abstract member MoneyId : int with get, set

    type IBaseErpModelChargeLine =
        abstract member StiType : string with get, set
        abstract member ChargedItemId : int with get, set
        abstract member ChargedItemType : string with get, set
        abstract member ChargeTypeId : int with get, set

    type IBaseErpModelSalesTax =
        abstract member SalesTax : decimal with get, set
        abstract member Taxed : bool with get, set

    type IBaseErpModelTaxable =
        abstract member Taxable : bool with get, set

    type IBaseErpModelEmail =
        abstract member Email : string with get, set

    type IBaseErpModelComment =
        abstract member CommentorName : string with get, set
        abstract member Comment1 : string with get, set
        abstract member CommentedRecordId : int with get, set
        abstract member CommentedRecordType : string with get, set

    type IBaseErpModelApproved =
        abstract member Approved : bool with get, set
        abstract member ApprovedAt : DateTime with get, set

    type IBaseErpModelUserId =
        abstract member UserId : int with get, set

    type IBaseErpModelPartyTraffic =
        abstract member PartyIdFrom : int with get, set
        abstract member PartyIdTo : int with get, set

    type IBaseErpModelContactMechanismTraffic =
        abstract member FromContactMechanismId : int with get, set
        abstract member FromContactMechanismType : string with get, set
        abstract member ToContactMechanismId : int with get, set
        abstract member ToContactMechanismType : string with get, set

    type IBaseErpModelNotes =
        abstract member Notes : string with get, set

    type IBaseErpModelCaseId =
        abstract member CaseId : int with get, set

    type IBaseErpModelActive =
        abstract member Active : bool with get, set

    type IBaseErpModelIsTemplateText =
        abstract member IsTemplateText : bool with get, set

    type IBaseErpModelConfigurationItem =
        abstract member ConfigurationItemTypeId : int with get, set
        abstract member ConfigurationOptionId : int with get, set

    type IBaseErpModelConfigurationId =
        abstract member ConfigurationId : int with get, set

    type IBaseErpModelConfigurationItemType =
        abstract member Precedence : int with get, set
        abstract member AllowUserDefinedOption : bool with get, set
        abstract member IsMultiOptional : bool with get, set

    type IBaseErpModelIsDefault =
        abstract member IsDefault : bool with get, set

    type IBaseErpModelConfigurationOption =
        abstract member Value : string with get, set
        abstract member UserDefined : bool with get, set

    type IBaseErpModelContact =
        abstract member IsPrimary : bool with get, set
        abstract member ContactRecordType : string with get, set
        abstract member ContactRecordId : int with get, set

    type IBaseErpModelCreatedById =
        abstract member CreatedById : int with get, set

    type IBaseErpModelUpdatedById =
        abstract member UpdatedById : int with get, set

    type IBaseErpModelContentBlock =
        abstract member PermaLink : string with get, set
        abstract member ExcerptHtml : string with get, set
        abstract member BodyHtml : string with get, set
        abstract member DisplayTitle : bool with get, set
        abstract member Version : int with get, set

    type IBaseErpModelContentId =
        abstract member ContentId : int with get, set

    type IBaseErpModelVersionedType =
        abstract member VersionedType : string with get, set

    type IBaseErpModelCreditCard =
        abstract member CryptedPrivateCardNumber : string with get, set
        abstract member CryptedPrivateCvc : string with get, set
        abstract member ExpirationMonth : int with get, set
        abstract member ExpirationYear : int with get, set
        abstract member NameOnCard : string with get, set
        abstract member CardType : string with get, set
        abstract member CreditCardToken : string with get, set

    type IBaseErpModelPostalAddressId =
        abstract member PostalAddressId : int with get, set

    type IBaseErpModelCreditCardAccountPuposeId =
        abstract member CreditCardAccountPuposeId : int with get, set

    type IBaseErpModelCreditCardAccountId =
        abstract member CreditCardAccountId : int with get, set

    type IBaseErpModelCreditCardId =
        abstract member CreditCardId : int with get, set

    type IBaseErpModelCurrency =
        abstract member Definition : string with get, set
        abstract member NumericCode : string with get, set
        abstract member MajorUnitSymbol : string with get, set
        abstract member MinorUnitSymbol : string with get, set
        abstract member RatioOfMinorUnitToMajorUnit : string with get, set
        abstract member PostFixLabel : string with get, set

    type IBaseErpModelIntroductionAndExpirationSpan =
        abstract member IntroductionDate : DateTime with get, set
        abstract member ExpirationDate : DateTime with get, set

    type IBaseErpModelPriority =
        abstract member Priority : int with get, set

    type IBaseErpModelDelayedJob =
        abstract member Attempts : int with get, set
        abstract member Handler : string with get, set
        abstract member LastError : string with get, set
        abstract member RunAt : DateTime with get, set
        abstract member LockedAt : DateTime with get, set
        abstract member FailedAt : DateTime with get, set
        abstract member LockedBy : string with get, set
        abstract member Queue : string with get, set

    type IBaseErpModelDeliverable =
        abstract member DeliverableRecordType : string with get, set
        abstract member DeliverableRecordId : int with get, set

    type IBaseErpModelViewTypeId =
        abstract member ViewTypeId : int with get, set

    type IBaseErpModelDescribedRecord =
        abstract member DescribedRecordId : int with get, set
        abstract member DescribedRecordType : string with get, set

    type IBaseErpModelDocument =
        abstract member DocumentDate : DateTime with get, set
        abstract member DocumentRecordId : int with get, set
        abstract member DocumentRecordType : string with get, set
        abstract member DocumentTypeId : int with get, set

    type IBaseErpModelDocumentedItem =
        abstract member DocumentedClass : string with get, set
        abstract member DocumentedContentId : int with get, set
        abstract member OnlineDocumentSectionId : int with get, set

    type IBaseErpModelEmailAddress =
        abstract member EmailAddressString : string with get, set

    type IBaseErpModelEntityRecordId =
        abstract member EntityRecordId : int with get, set

    type IBaseErpModelEntityRecordType =
        abstract member EntityRecordType : string with get, set

    type IBaseErpModelFacility =
        abstract member FacilityTypeId : int with get, set
        abstract member FacilityRecordId : int with get, set
        abstract member FacilityRecordType : string with get, set

    type IBaseErpModelFee =
        abstract member FeeRecordId : int with get, set
        abstract member FeeRecordType : string with get, set
        abstract member FeeTypeId : int with get, set

    type IBaseErpModelFileAsset =
        abstract member Directory : string with get, set
        abstract member DataFileName : string with get, set
        abstract member DataContentType : string with get, set
        abstract member DataFileSize : int with get, set
        abstract member DataUpdatedAt : DateTime with get, set

    type IBaseErpModelDimensions =
        abstract member Height : string with get, set
        abstract member Width : string with get, set

    type IBaseErpModelScopedBy =
        abstract member ScopedBy : string with get, set

    type IBaseErpModelFileAssetHolder =
        abstract member FileAssetId : int with get, set
        abstract member FileAssetHolderId : int with get, set
        abstract member FileAssetHolderType : string with get, set

    type IBaseErpModelApplyDate =
        abstract member ApplyDate : DateTime with get, set

    type IBaseErpModelFinancialTransactionAccount =
        abstract member AccountNumber : string with get, set
        abstract member BalanceDate : DateTime with get, set
        abstract member CalculateBalance : bool with get, set
        abstract member PaymentDueId : int with get, set
        abstract member DueDate : DateTime with get, set

    type IBaseErpModelBalanceId =
        abstract member BalanceId : int with get, set

    type IBaseErpModelFinancialAccountId =
        abstract member FinancialAccountId : int with get, set

    type IBaseErpModelFinancialAccountType =
        abstract member FinancialAccountType : string with get, set

    type IBaseErpModelFinancialTransactionId =
        abstract member FinancialTransactionId : int with get, set

    type IBaseErpModelFinancialTransactionAssignment =
        abstract member FinancialTransactionRecordId : int with get, set
        abstract member FinancialTransactionRecordType : string with get, set

    type IBaseErpModelFixedAssetTypeId =
        abstract member FixedAssetTypeId : int with get, set

    type IBaseErpModelFixedAsset =
        abstract member FixedAssetRecordType : string with get, set
        abstract member FixedAssetRecordId : int with get, set

    type IBaseErpModelFixedAssetId =
        abstract member FixedAssetId : int with get, set

    type IBaseErpModelGeneratedItem =
        abstract member GeneratedById : int with get, set
        abstract member GeneratedByType : string with get, set
        abstract member GeneratedRecordId : int with get, set
        abstract member GeneratedRecordType : string with get, set

    type IBaseErpModelGeoCountry =
        abstract member IsoCode2 : string with get, set
        abstract member IsoCode3 : string with get, set
    
    type IBaseErpModelShouldDisplay =
        abstract member Display : bool with get, set

    type IBaseErpModelGeoCountryId =
        abstract member GeoCountryId : int with get, set

    type IBaseErpModelGeoZone =
        abstract member ZoneCode : string with get, set
        abstract member ZoneName : string with get, set

    type IBaseErpModelIndividual =
        abstract member CurrentLastName : string with get, set
        abstract member CurrentFirstName : string with get, set
        abstract member CurrentMiddleName : string with get, set
        abstract member CurrentPersonalTitle : string with get, set
        abstract member CurrentSuffix : string with get, set
        abstract member CurrentNickName : string with get, set
        abstract member Gender : string with get, set
        abstract member BirthDate : DateTime with get, set
        abstract member Height : decimal with get, set
        abstract member Weight : int with get, set
        abstract member MothersMaidenName : string with get, set
        abstract member MaritalStatus : string with get, set
        abstract member SocialSecurityNumber : string with get, set
        abstract member CurrentPassportNumber : int with get, set
        abstract member CurrentPassportExpireDate : DateTime with get, set
        abstract member TotalYearsWorkExperience : int with get, set

    type IBaseErpModelSsn =
        abstract member EncryptedSsn : string with get, set
        abstract member TempSsn : string with get, set
        abstract member SsnLastFour : string with get, set

    type IBaseErpModelSalt =
        abstract member Salt : string with get, set

    type IBaseErpModelInventoryTransaction = 
        abstract member Quantity : int with get, set

    type IBaseErpModelInventoryEntryId =
        abstract member InventoryEntryId : int with get, set

    type IBaseErpModelUnitOfMeasurementId =
        abstract member UnitOfMeasurementId : int with get, set

    type IBaseErpModelInventoryEntryRecordId =
        abstract member InventoryEntryRecordId : int with get, set

    type IBaseErpModelInventoryEntry =
        abstract member InventoryEntryRecordType : string with get, set
        abstract member NumberAvailable : int with get, set
        abstract member NumberSold : int with get, set
        abstract member NumberInStock : int with get, set

    type IBaseErpModelProductTypeId =
        abstract member ProductTypeId : int with get, set

    type IBaseErpModelSku =
        abstract member Sku : string with get, set

    type IBaseErpModelFacilityId =
        abstract member FacilityId : int with get, set

    type IBaseErpModelValidTimeSpan =
        abstract member ValidFrom : DateTime with get, set
        abstract member ValidThrough : DateTime with get, set

    type IBaseErpModelInventoryEntryRelationshipTypeId =
        abstract member InventoryEntryRelationshipTypeId : int with get, set

    type IBaseErpModelInventoryEntryTraffic =
        abstract member InventoryEntryIdFrom : int with get, set
        abstract member InventoryEntryIdTo : int with get, set

    type IBaseErpModelProductId =
        abstract member ProductId : int with get, set

    type IBaseErpModelInvoiceTypeId =
        abstract member InvoiceTypeId : int with get, set

    type IBaseErpModelBillingAccountId =
        abstract member BillingAccountId : int with get, set

    type IBaseErpModelInvoicePaymentStrategyTypeId =
        abstract member InvoicePaymentStrategyTypeId : int with get, set

    type IBaseErpModelInvoice =
        abstract member InvoiceNumber : string with get, set
        abstract member Message : string with get, set
        abstract member InvoiceDate : DateTime with get, set
        abstract member DueDate : DateTime with get, set

    type IBaseErpModelInvoiceItemId =
        abstract member InvoiceItemId : int with get, set

    type IBaseErpModelInvoiceableItemId =
        abstract member InvoiceableItemId : int with get, set

    type IBaseErpModelInvoiceableItemType =
        abstract member InvoiceableItemType : string with get, set

    type IBaseErpModelInvoiceId =
        abstract member InvoiceId : int with get, set

    type IBaseErpModelInvoiceItemTypeId =
        abstract member InvoiceItemTypeId : int with get, set

    type IBaseErpModelItemSequenceId =
        abstract member ItemSequenceId : int with get, set

    type IBaseErpModelItemDescription =
        abstract member ItemDescription : string with get, set

    type IBaseErpModelInvoiceItem =
        abstract member Quantity : decimal with get, set
        abstract member UnitPrice : decimal with get, set

    type IBaseErpModelAmount =
        abstract member Amount : decimal with get, set        

    type IBaseErpModelInvoicePaymentTermTypeId =
        abstract member InvoicePaymentTermTypeId : int with get, set

    type IBaseErpModelInvoicePaymentTermSetId =
        abstract member InvoicePaymentTermSetId : int with get, set

    type IBaseErpModelPayBy =
        abstract member PayBy : DateTime with get, set