namespace ArcanaErp.Core.Models.Erp
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ErpDataModel : DbContext
    {
        public ErpDataModel()
            : base("name=ErpDataModel")
        {
        }

        public virtual DbSet<AcceptedCreditCard> AcceptedCreditCards { get; set; }
        public virtual DbSet<Agreement> Agreements { get; set; }
        public virtual DbSet<AgreementItem> AgreementItems { get; set; }
        public virtual DbSet<AgreementItemType> AgreementItemTypes { get; set; }
        public virtual DbSet<AgreementPartyRole> AgreementPartyRoles { get; set; }
        public virtual DbSet<AgreementRelationship> AgreementRelationships { get; set; }
        public virtual DbSet<AgreementRelationshipType> AgreementRelationshipTypes { get; set; }
        public virtual DbSet<AgreementRoleType> AgreementRoleTypes { get; set; }
        public virtual DbSet<AgreementType> AgreementTypes { get; set; }
        public virtual DbSet<Application> Applications { get; set; }
        public virtual DbSet<ArcanaErpInstance> ArcanaErpInstances { get; set; }
        public virtual DbSet<ArcanaErpInstancePartyRole> ArcanaErpInstancePartyRoles { get; set; }
        public virtual DbSet<AssociatedTransportationRoute> AssociatedTransportationRoutes { get; set; }
        public virtual DbSet<AssociatedWorkEffort> AssociatedWorkEfforts { get; set; }
        public virtual DbSet<AuditLog> AuditLogs { get; set; }
        public virtual DbSet<AuditLogItem> AuditLogItems { get; set; }
        public virtual DbSet<AuditLogItemType> AuditLogItemTypes { get; set; }
        public virtual DbSet<AuditLogType> AuditLogTypes { get; set; }
        public virtual DbSet<BankAccount> BankAccounts { get; set; }
        public virtual DbSet<BankAccountType> BankAccountTypes { get; set; }
        public virtual DbSet<BaseTaxationContext> BaseTaxationContexts { get; set; }
        public virtual DbSet<BillingAccount> BillingAccounts { get; set; }
        public virtual DbSet<BillingContactMechanism> BillingContactMechanism { get; set; }
        public virtual DbSet<BusinessAccountTaxationTask> BusinessAccountTaxationTasks { get; set; }
        public virtual DbSet<BusinessTaxationAccountPartyRole> BusinessTaxationAccountPartyRoles { get; set; }
        public virtual DbSet<BusinessTaxationAccountPartyType> BusinessTaxationAccountPartyTypes { get; set; }
        public virtual DbSet<BusinessTaxationAccountRelationship> BusinessTaxationAccountRelationships { get; set; }
        public virtual DbSet<BusinessTaxationAccountRelationshipType> BusinessTaxationAccountRelationshipTypes { get; set; }
        public virtual DbSet<BusinessTaxationAccountRoot> BusinessTaxationAccountRoots { get; set; }
        public virtual DbSet<BusinessTaxationAccountStatu> BusinessTaxationAccountStatus { get; set; }
        public virtual DbSet<BusinessTaxationAccountStatusType> BusinessTaxationAccountStatusTypes { get; set; }
        public virtual DbSet<BusinessTaxationAccountType> BusinessTaxationAccountTypes { get; set; }
        public virtual DbSet<BusinessTaxationAgreementRole> BusinessTaxationAgreementRoles { get; set; }
        public virtual DbSet<BusinessTaxationAgreementRoleType> BusinessTaxationAgreementRoleTypes { get; set; }
        public virtual DbSet<BusinessTaxationEvent> BusinessTaxationEvents { get; set; }
        public virtual DbSet<BusinessTaxationEventDescription> BusinessTaxationEventDescriptions { get; set; }
        public virtual DbSet<BusinessTaxationPartyRole> BusinessTaxationPartyRoles { get; set; }
        public virtual DbSet<BusinessTaxationPartyRoleType> BusinessTaxationPartyRoleTypes { get; set; }
        public virtual DbSet<BusinessTaxationRelationship> BusinessTaxationRelationships { get; set; }
        public virtual DbSet<BusinessTaxationRelationshipType> BusinessTaxationRelationshipTypes { get; set; }
        public virtual DbSet<BusinessTaxationStatu> BusinessTaxationStatus { get; set; }
        public virtual DbSet<BusinessTaxationTask> BusinessTaxationTasks { get; set; }
        public virtual DbSet<BusinessTaxationTaskType> BusinessTaxationTaskTypes { get; set; }
        public virtual DbSet<BusinessTaxationType> BusinessTaxationTypes { get; set; }
        public virtual DbSet<CalculateBalanceStrategyType> CalculateBalanceStrategyTypes { get; set; }
        public virtual DbSet<CalendarEvent> CalendarEvents { get; set; }
        public virtual DbSet<CalendarEventPartyRole> CalendarEventPartyRoles { get; set; }
        public virtual DbSet<CalendarInvite> CalendarInvites { get; set; }
        public virtual DbSet<CandidateSubmission> CandidateSubmissions { get; set; }
        public virtual DbSet<Capability> Capabilities { get; set; }
        public virtual DbSet<CapabilityAccessor> CapabilityAccessors { get; set; }
        public virtual DbSet<CapabilityType> CapabilityTypes { get; set; }
        public virtual DbSet<CapableModel> CapableModels { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<CategoryClassification> CategoryClassifications { get; set; }
        public virtual DbSet<ChargeLine> ChargeLines { get; set; }
        public virtual DbSet<ChargeType> ChargeTypes { get; set; }
        public virtual DbSet<Comment> Comments { get; set; }
        public virtual DbSet<CommunicationEvent> CommunicationEvents { get; set; }
        public virtual DbSet<CommunicationEventPuposeType> CommunicationEventPuposeTypes { get; set; }
        public virtual DbSet<CommunicationEventStatu> CommunicationEventStatus { get; set; }
        public virtual DbSet<Configuration> Configurations { get; set; }
        public virtual DbSet<ConfigurationItem> ConfigurationItems { get; set; }
        public virtual DbSet<ConfigurationItemType> ConfigurationItemTypes { get; set; }
        public virtual DbSet<ConfigurationItemTypeConfigurationOption> ConfigurationItemTypeConfigurationOptions { get; set; }
        public virtual DbSet<ConfigurationOption> ConfigurationOptions { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<ContactPurpose> ContactPurposes { get; set; }
        public virtual DbSet<ContactType> ContactTypes { get; set; }
        public virtual DbSet<Content> Contents { get; set; }
        public virtual DbSet<ContentVersion> ContentVersions { get; set; }
        public virtual DbSet<CreditCard> CreditCards { get; set; }
        public virtual DbSet<CreditCardAccount> CreditCardAccounts { get; set; }
        public virtual DbSet<CreditCardAccountPartyRole> CreditCardAccountPartyRoles { get; set; }
        public virtual DbSet<CreditCardAccountPurpose> CreditCardAccountPurposes { get; set; }
        public virtual DbSet<Currency> Currencies { get; set; }
        public virtual DbSet<DelayedJob> DelayedJobs { get; set; }
        public virtual DbSet<Deliverable> Deliverables { get; set; }
        public virtual DbSet<DeliverableType> DeliverableTypes { get; set; }
        public virtual DbSet<DescriptiveAsset> DescriptiveAssets { get; set; }
        public virtual DbSet<DocumentedItem> DocumentedItems { get; set; }
        public virtual DbSet<Document> Documents { get; set; }
        public virtual DbSet<DocumentType> DocumentTypes { get; set; }
        public virtual DbSet<EmailAddress> EmailAddresses { get; set; }
        public virtual DbSet<EntityPartyRole> EntityPartyRoles { get; set; }
        public virtual DbSet<Experience> Experiences { get; set; }
        public virtual DbSet<Facility> Facilities { get; set; }
        public virtual DbSet<FacilityType> FacilityTypes { get; set; }
        public virtual DbSet<Fee> Fees { get; set; }
        public virtual DbSet<FeeType> FeeTypes { get; set; }
        public virtual DbSet<FileAsset> FileAssets { get; set; }
        public virtual DbSet<FileAssetHolder> FileAssetHolders { get; set; }
        public virtual DbSet<FinancialTaxation> FinancialTaxations { get; set; }
        public virtual DbSet<FinancialTaxationAccount> FinancialTaxationAccounts { get; set; }
        public virtual DbSet<FinancialTaxationAssignment> FinancialTaxationAssignments { get; set; }
        public virtual DbSet<FixedAsset> FixedAssets { get; set; }
        public virtual DbSet<FixedAssetPartyRole> FixedAssetPartyRoles { get; set; }
        public virtual DbSet<FixedAssetType> FixedAssetTypes { get; set; }
        public virtual DbSet<GeneralLedgerAccount> GeneralLedgerAccounts { get; set; }
        public virtual DbSet<GeneratedItem> GeneratedItems { get; set; }
        public virtual DbSet<GeoCountry> GeoCountries { get; set; }
        public virtual DbSet<GeoZone> GeoZones { get; set; }
        public virtual DbSet<GoodType> GoodTypes { get; set; }
        public virtual DbSet<Group> Groups { get; set; }
        public virtual DbSet<Individual> Individuals { get; set; }
        public virtual DbSet<InventoryDropOffTaxation> InventoryDropOffTaxations { get; set; }
        public virtual DbSet<InventoryEntry> InventoryEntries { get; set; }
        public virtual DbSet<InventoryEntryLocation> InventoryEntryLocations { get; set; }
        public virtual DbSet<InventoryEntryRelationship> InventoryEntryRelationships { get; set; }
        public virtual DbSet<InventoryEntryRelationshipType> InventoryEntryRelationshipTypes { get; set; }
        public virtual DbSet<InventoryEntryRoleType> InventoryEntryRoleTypes { get; set; }
        public virtual DbSet<InventoryPickupTaxation> InventoryPickupTaxations { get; set; }
        public virtual DbSet<Invoice> Invoices { get; set; }
        public virtual DbSet<InvoicedRecord> InvoicedRecords { get; set; }
        public virtual DbSet<InvoiceItem> InvoiceItems { get; set; }
        public virtual DbSet<InvoiceItemType> InvoiceItemTypes { get; set; }
        public virtual DbSet<InvoicePartyRole> InvoicePartyRoles { get; set; }
        public virtual DbSet<InvoicePaymentStrategyType> InvoicePaymentStrategyTypes { get; set; }
        public virtual DbSet<InvoicePaymentTerm> InvoicePaymentTerms { get; set; }
        public virtual DbSet<InvoicePaymentTermSet> InvoicePaymentTermSets { get; set; }
        public virtual DbSet<InvoicePaymentTermType> InvoicePaymentTermTypes { get; set; }
        public virtual DbSet<InvoiceType> InvoiceTypes { get; set; }
        public virtual DbSet<JobTracker> JobTrackers { get; set; }
        public virtual DbSet<LoyaltyProgramCode> LoyaltyProgramCodes { get; set; }
        public virtual DbSet<Money> Moneys { get; set; }
        public virtual DbSet<Note> Notes { get; set; }
        public virtual DbSet<NoteType> NoteTypes { get; set; }
        public virtual DbSet<Notification> Notifications { get; set; }
        public virtual DbSet<NotificationType> NotificationTypes { get; set; }
        public virtual DbSet<OrderLineItem> OrderLineItems { get; set; }
        public virtual DbSet<OrderLineItemPartyRole> OrderLineItemPartyRoles { get; set; }
        public virtual DbSet<OrderLineItemRelationship> OrderLineItemRelationships { get; set; }
        public virtual DbSet<OrderLineItemRelationshipType> OrderLineItemRelationshipTypes { get; set; }
        public virtual DbSet<OrderLineItemType> OrderLineItemTypes { get; set; }
        public virtual DbSet<OrderRequirementCommitment> OrderRequirementCommitments { get; set; }
        public virtual DbSet<OrderTaxation> OrderTaxations { get; set; }
        public virtual DbSet<OrderTaxationType> OrderTaxationTypes { get; set; }
        public virtual DbSet<Organization> Organizations { get; set; }
        public virtual DbSet<Party> Parties { get; set; }
        public virtual DbSet<PartyFixedAssetAssignment> PartyFixedAssetAssignments { get; set; }
        public virtual DbSet<PartyRelationship> PartyRelationships { get; set; }
        public virtual DbSet<PartyResourceAvailability> PartyResourceAvailabilities { get; set; }
        public virtual DbSet<PartyResourceAvailabilityType> PartyResourceAvailabilityTypes { get; set; }
        public virtual DbSet<PartyRole> PartyRoles { get; set; }
        public virtual DbSet<PartySkill> PartySkills { get; set; }
        public virtual DbSet<Payment> Payments { get; set; }
        public virtual DbSet<PaymentApplication> PaymentApplications { get; set; }
        public virtual DbSet<PaymentGatewayAction> PaymentGatewayActions { get; set; }
        public virtual DbSet<PaymentGateway> PaymentGateways { get; set; }
        public virtual DbSet<PhoneNumber> PhoneNumbers { get; set; }
        public virtual DbSet<Position> Positions { get; set; }
        public virtual DbSet<PositionFulfillment> PositionFulfillments { get; set; }
        public virtual DbSet<PositionType> PositionTypes { get; set; }
        public virtual DbSet<PostalAddress> PostalAddresses { get; set; }
        public virtual DbSet<Preference> Preferences { get; set; }
        public virtual DbSet<PreferenceOption> PreferenceOptions { get; set; }
        public virtual DbSet<PreferenceType> PreferenceTypes { get; set; }
        public virtual DbSet<Price> Prices { get; set; }
        public virtual DbSet<PriceComponent> PriceComponents { get; set; }
        public virtual DbSet<PriceComponentType> PriceComponentTypes { get; set; }
        public virtual DbSet<PricePlanCompGeneralLedgerAccount> PricePlanCompGeneralLedgerAccounts { get; set; }
        public virtual DbSet<PricingPlan> PricingPlans { get; set; }
        public virtual DbSet<PricingPlanAssignment> PricingPlanAssignments { get; set; }
        public virtual DbSet<PricingPlanComponent> PricingPlanComponents { get; set; }
        public virtual DbSet<ProductAvailabilityStatusType> ProductAvailabilityStatusTypes { get; set; }
        public virtual DbSet<ProductFeature> ProductFeatures { get; set; }
        public virtual DbSet<ProductFeatureApplicability> ProductFeatureApplicabilities { get; set; }
        public virtual DbSet<ProductFeatureInterAction> ProductFeatureInterActions { get; set; }
        public virtual DbSet<ProductFeatureInteractionType> ProductFeatureInteractionTypes { get; set; }
        public virtual DbSet<ProductFeatureType> ProductFeatureTypes { get; set; }
        public virtual DbSet<ProductFeatureTypeProductFeatureValue> ProductFeatureTypeProductFeatureValues { get; set; }
        public virtual DbSet<ProductFeatureValue> ProductFeatureValues { get; set; }
        public virtual DbSet<ProductInstance> ProductInstances { get; set; }
        public virtual DbSet<ProductInstanceInventoryEntry> ProductInstanceInventoryEntries { get; set; }
        public virtual DbSet<ProductInstanceRelationship> ProductInstanceRelationships { get; set; }
        public virtual DbSet<ProductInstanceRelationshipType> ProductInstanceRelationshipTypes { get; set; }
        public virtual DbSet<ProductInstanceRoleType> ProductInstanceRoleTypes { get; set; }
        public virtual DbSet<ProductOffer> ProductOffers { get; set; }
        public virtual DbSet<ProductType> ProductTypes { get; set; }
        public virtual DbSet<ProductTypePartyRole> ProductTypePartyRoles { get; set; }
        public virtual DbSet<ProductTypeRelationship> ProductTypeRelationships { get; set; }
        public virtual DbSet<ProductTypeRelationshipType> ProductTypeRelationshipTypes { get; set; }
        public virtual DbSet<ProductTypeRoleType> ProductTypeRoleTypes { get; set; }
        public virtual DbSet<Project> Projects { get; set; }
        public virtual DbSet<Publishedelement> Publishedelements { get; set; }
        public virtual DbSet<PublishedWebSite> PublishedWebSites { get; set; }
        public virtual DbSet<RecurringPayment> RecurringPayments { get; set; }
        public virtual DbSet<RelationshipType> RelationshipTypes { get; set; }
        public virtual DbSet<Report> Reports { get; set; }
        public virtual DbSet<Requirement> Requirements { get; set; }
        public virtual DbSet<RequirementPartyRole> RequirementPartyRoles { get; set; }
        public virtual DbSet<RequirementType> RequirementTypes { get; set; }
        public virtual DbSet<Resume> Resumes { get; set; }
        public virtual DbSet<RoleType> RoleTypes { get; set; }
        public virtual DbSet<RoleTypeWorkEffort> RoleTypeWorkEfforts { get; set; }
        public virtual DbSet<SalesTaxLine> SalesTaxLines { get; set; }
        public virtual DbSet<SalesTaxPolicy> SalesTaxPolicies { get; set; }
        public virtual DbSet<ScopeType> ScopeTypes { get; set; }
        public virtual DbSet<SecurityRole> SecurityRoles { get; set; }
        public virtual DbSet<Session> Sessions { get; set; }
        public virtual DbSet<Shift> Shifts { get; set; }
        public virtual DbSet<simpleProductOffer> simpleProductOffers { get; set; }
        public virtual DbSet<SkillType> SkillTypes { get; set; }
        public virtual DbSet<staffingPosition> staffingPositions { get; set; }
        public virtual DbSet<StatusApplication> StatusApplications { get; set; }
        public virtual DbSet<Tag> Tags { get; set; }
        public virtual DbSet<Tagging> Taggings { get; set; }
        public virtual DbSet<Theme> Themes { get; set; }
        public virtual DbSet<TimesheetEntry> TimesheetEntries { get; set; }
        public virtual DbSet<TimesheetEntryPartyRole> TimesheetEntryPartyRoles { get; set; }
        public virtual DbSet<TrackedStatusType> TrackedStatusTypes { get; set; }
        public virtual DbSet<TransportationRoute> TransportationRoutes { get; set; }
        public virtual DbSet<TransportationRouteSegment> TransportationRouteSegments { get; set; }
        public virtual DbSet<TransportationRouteStop> TransportationRouteStops { get; set; }
        public virtual DbSet<TreeMenuNodeDefinition> TreeMenuNodeDefs { get; set; }
        public virtual DbSet<UnitOfMeasurement> UnitOfMeasurements { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UserPreference> UsersPreferences { get; set; }
        public virtual DbSet<ValidConfiguration> ValidConfigurations { get; set; }
        public virtual DbSet<ValidDocument> ValidDocuments { get; set; }
        public virtual DbSet<ValidNoteType> ValidNoteTypes { get; set; }
        public virtual DbSet<ValidPreferenceType> ValidPreferenceTypes { get; set; }
        public virtual DbSet<ValidPricePlanComponent> ValidPricePlanComponents { get; set; }
        public virtual DbSet<ViewType> ViewTypes { get; set; }
        public virtual DbSet<WcCode> WcCodes { get; set; }
        public virtual DbSet<WebSiteHost> WebSiteHosts { get; set; }
        public virtual DbSet<WebSiteInquiry> WebSiteInquiries { get; set; }
        public virtual DbSet<WebSitenavItem> WebSitenavItems { get; set; }
        public virtual DbSet<WebSitenav> WebSitenavs { get; set; }
        public virtual DbSet<WebSitePartyRole> WebSitePartyRoles { get; set; }
        public virtual DbSet<WebSite> WebSites { get; set; }
        public virtual DbSet<WebSiteSection> WebSiteSections { get; set; }
        public virtual DbSet<WebSiteSectionContent> WebSiteSectionContents { get; set; }
        public virtual DbSet<WebSiteSectionVersion> WebSiteSectionVersions { get; set; }
        public virtual DbSet<WorkEffort> WorkEfforts { get; set; }
        public virtual DbSet<WorkEffortAssociation> WorkEffortAssociations { get; set; }
        public virtual DbSet<WorkEffortAssociationType> WorkEffortAssociationTypes { get; set; }
        public virtual DbSet<WorkEffortDeliverableProduced> WorkEffortDeliverableProduceds { get; set; }
        public virtual DbSet<WorkEffortFixedAssetAssignment> WorkEffortFixedAssetAssignments { get; set; }
        public virtual DbSet<WorkEffortFixedAssetServiced> WorkEffortFixedAssetServiceds { get; set; }
        public virtual DbSet<WorkEffortFixedAssetStandard> WorkEffortFixedAssetStandards { get; set; }
        public virtual DbSet<WorkEffortGoodStandard> WorkEffortGoodStandards { get; set; }
        public virtual DbSet<WorkEffortInventoryAssignment> WorkEffortInventoryAssignments { get; set; }
        public virtual DbSet<WorkEffortInventoryProduced> WorkEffortInventoryProduceds { get; set; }
        public virtual DbSet<WorkEffortPartyAssignment> WorkEffortPartyAssignments { get; set; }
        public virtual DbSet<WorkEffortPuposeType> WorkEffortPuposeTypes { get; set; }
        public virtual DbSet<WorkEffortSkillStandard> WorkEffortSkillStandards { get; set; }
        public virtual DbSet<WorkEffortType> WorkEffortTypes { get; set; }
        public virtual DbSet<WorkEffortTypeAssociation> WorkEffortTypeAssociations { get; set; }
        public virtual DbSet<WorkOrderItem> WorkOrderItems { get; set; }
        public virtual DbSet<WorkOrderItemFulfillment> WorkOrderItemFulfillments { get; set; }
        public virtual DbSet<WorkRequirementFulfillment> WorkRequirementFulfillments { get; set; }
        public virtual DbSet<SchemaMigration> SchemaMigrations { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AcceptedCreditCard>()
                .Property(e => e.CardType)
                .IsUnicode(false);

            modelBuilder.Entity<Agreement>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Agreement>()
                .Property(e => e.AgreementStatus)
                .IsUnicode(false);

            modelBuilder.Entity<Agreement>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Agreement>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItem>()
                .Property(e => e.AgreementItemValue)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItem>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItem>()
                .Property(e => e.AgreementItemRuleString)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItemType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItemType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItemType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItemType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementItemType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementPartyRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementPartyRole>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementPartyRole>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRelationshipType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRelationshipType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRoleType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRoleType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRoleType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRoleType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementRoleType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AgreementType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Application>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Application>()
                .Property(e => e.Icon)
                .IsUnicode(false);

            modelBuilder.Entity<Application>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Application>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<ArcanaErpInstance>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ArcanaErpInstance>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ArcanaErpInstance>()
                .Property(e => e.Version)
                .HasPrecision(8, 3);

            modelBuilder.Entity<ArcanaErpInstance>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<ArcanaErpInstance>()
                .Property(e => e.Schema)
                .IsUnicode(false);

            modelBuilder.Entity<ArcanaErpInstance>()
                .Property(e => e.GuidString)
                .IsUnicode(false);

            modelBuilder.Entity<ArcanaErpInstancePartyRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AssociatedTransportationRoute>()
                .Property(e => e.AssociatedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<AssociatedWorkEffort>()
                .Property(e => e.AssociatedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLog>()
                .Property(e => e.Application)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLog>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLog>()
                .Property(e => e.additiOnalinfo)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLog>()
                .Property(e => e.EventRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItem>()
                .Property(e => e.AuditLogItemValue)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItem>()
                .Property(e => e.AuditLogItemoldValue)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItem>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItemType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItemType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItemType>()
                .Property(e => e.ExternalIdsource)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItemType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogItemType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogType>()
                .Property(e => e.ErrorCode)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<AuditLogType>()
                .Property(e => e.ExternalIdsource)
                .IsUnicode(false);

            modelBuilder.Entity<BankAccount>()
                .Property(e => e.RoutingNumber)
                .IsUnicode(false);

            modelBuilder.Entity<BankAccount>()
                .Property(e => e.CryptedPrivateAccountNumber)
                .IsUnicode(false);

            modelBuilder.Entity<BankAccount>()
                .Property(e => e.nameOnAccount)
                .IsUnicode(false);

            modelBuilder.Entity<BankAccountType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BankAccountType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BaseTaxationContext>()
                .Property(e => e.TaxationContextRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<BillingContactMechanism>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BillingContactMechanism>()
                .Property(e => e.ContactMechanismType)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessAccountTaxationTask>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessAccountTaxationTask>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountPartyRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountPartyType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountPartyType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountPartyType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountPartyType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountPartyType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRelationshipType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRelationshipType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRoot>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRoot>()
                .Property(e => e.BusinessTaxationAccountType)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRoot>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRoot>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountRoot>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAccountType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAgreementRole>()
                .Property(e => e.BusinessTaxationEventType)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAgreementRoleType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAgreementRoleType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationAgreementRoleType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationEvent>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationEvent>()
                .Property(e => e.BusinessTaxationRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationEvent>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationEvent>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationEventDescription>()
                .Property(e => e.ShortDescription)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationEventDescription>()
                .Property(e => e.LongDescription)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationPartyRoleType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationPartyRoleType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationPartyRoleType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationRelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationRelationshipType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationRelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationRelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationRelationshipType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationStatu>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationStatu>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationTask>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationTaskType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationTaskType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<BusinessTaxationType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<CalculateBalanceStrategyType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CalculateBalanceStrategyType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarEvent>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarEvent>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarEvent>()
                .Property(e => e.ListViewImageUrl)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarEvent>()
                .Property(e => e.Status)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarEvent>()
                .Property(e => e.CustomFields)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarEventPartyRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarInvite>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<CalendarInvite>()
                .Property(e => e.Invitetext)
                .IsUnicode(false);

            modelBuilder.Entity<CandidateSubmission>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CandidateSubmission>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CandidateSubmission>()
                .Property(e => e.CustomFields)
                .IsUnicode(false);

            modelBuilder.Entity<Capability>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Capability>()
                .Property(e => e.CapabilityresourceType)
                .IsUnicode(false);

            modelBuilder.Entity<Capability>()
                .Property(e => e.ScopeQueryText)
                .IsUnicode(false);

            modelBuilder.Entity<CapabilityAccessor>()
                .Property(e => e.CapabilityaccessorRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<CapabilityType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CapabilityType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CapableModel>()
                .Property(e => e.CapableModelRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Category>()
                .Property(e => e.CategoryRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<CategoryClassification>()
                .Property(e => e.ClassificationType)
                .IsUnicode(false);

            modelBuilder.Entity<ChargeLine>()
                .Property(e => e.StiType)
                .IsUnicode(false);

            modelBuilder.Entity<ChargeLine>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ChargeLine>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ChargeLine>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ChargeLine>()
                .Property(e => e.ChargedItemType)
                .IsUnicode(false);

            modelBuilder.Entity<ChargeLine>()
                .Property(e => e.SalesTax)
                .HasPrecision(8, 2);

            modelBuilder.Entity<ChargeType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ChargeType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Comment>()
                .Property(e => e.CommentorName)
                .IsUnicode(false);

            modelBuilder.Entity<Comment>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Comment>()
                .Property(e => e.Comment1)
                .IsUnicode(false);

            modelBuilder.Entity<Comment>()
                .Property(e => e.CommentedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEvent>()
                .Property(e => e.FromContactMechanismType)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEvent>()
                .Property(e => e.ToContactMechanismType)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEvent>()
                .Property(e => e.ShortDescription)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEvent>()
                .Property(e => e.notes)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEvent>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEvent>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventPuposeType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventPuposeType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventPuposeType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventPuposeType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventPuposeType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventStatu>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventStatu>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventStatu>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventStatu>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CommunicationEventStatu>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Configuration>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Configuration>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ConfigurationItemType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ConfigurationItemType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ConfigurationOption>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ConfigurationOption>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ConfigurationOption>()
                .Property(e => e.Value)
                .IsUnicode(false);

            modelBuilder.Entity<ConfigurationOption>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<Contact>()
                .Property(e => e.ContactMechanismType)
                .IsUnicode(false);

            modelBuilder.Entity<Contact>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Contact>()
                .Property(e => e.ExternalIdsource)
                .IsUnicode(false);

            modelBuilder.Entity<Contact>()
                .Property(e => e.ContactRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ContactPurpose>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ContactPurpose>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<ContactPurpose>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ContactPurpose>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ContactPurpose>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ContactType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ContactType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<ContactType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ContactType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ContactType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Content>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<Content>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<Content>()
                .Property(e => e.PermaLink)
                .IsUnicode(false);

            modelBuilder.Entity<Content>()
                .Property(e => e.ExcerptHtml)
                .IsUnicode(false);

            modelBuilder.Entity<Content>()
                .Property(e => e.BodyHtml)
                .IsUnicode(false);

            modelBuilder.Entity<Content>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ContentVersion>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<ContentVersion>()
                .Property(e => e.PermaLink)
                .IsUnicode(false);

            modelBuilder.Entity<ContentVersion>()
                .Property(e => e.ExcerptHtml)
                .IsUnicode(false);

            modelBuilder.Entity<ContentVersion>()
                .Property(e => e.BodyHtml)
                .IsUnicode(false);

            modelBuilder.Entity<ContentVersion>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ContentVersion>()
                .Property(e => e.VersionedType)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCard>()
                .Property(e => e.CryptedPrivateCardNumber)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCard>()
                .Property(e => e.CryptedPrivateCvc)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCard>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCard>()
                .Property(e => e.nameOnCard)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCard>()
                .Property(e => e.CardType)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCard>()
                .Property(e => e.CreditCardToken)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCardAccountPurpose>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCardAccountPurpose>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCardAccountPurpose>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCardAccountPurpose>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<CreditCardAccountPurpose>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.Definition)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.NumericCode)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.MajorUnitSymbol)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.MinorUnitSymbol)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.RatioOfMinorUnitToMajorUnit)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.PostFixLabel)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.handler)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.Lasterror)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.LockedBy)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.Queue)
                .IsUnicode(false);

            modelBuilder.Entity<Deliverable>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Deliverable>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<Deliverable>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Deliverable>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Deliverable>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Deliverable>()
                .Property(e => e.DeliverableRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<DeliverableType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<DeliverableType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<DeliverableType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<DeliverableType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<DeliverableType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<DescriptiveAsset>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<DescriptiveAsset>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<DescriptiveAsset>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<DescriptiveAsset>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<DescriptiveAsset>()
                .Property(e => e.DescribedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<DocumentedItem>()
                .Property(e => e.DocumentedClass)
                .IsUnicode(false);

            modelBuilder.Entity<Document>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Document>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Document>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Document>()
                .Property(e => e.DocumentRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<Document>()
                .Property(e => e.cusTomfields)
                .IsUnicode(false);

            modelBuilder.Entity<DocumentType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<DocumentType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<DocumentType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<EmailAddress>()
                .Property(e => e.EmailAddress1)
                .IsUnicode(false);

            modelBuilder.Entity<EmailAddress>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<EntityPartyRole>()
                .Property(e => e.EntityRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<Experience>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Facility>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Facility>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FacilityType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<FacilityType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FacilityType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FacilityType>()
                .Property(e => e.ExternalIdentiferSource)
                .IsUnicode(false);

            modelBuilder.Entity<Fee>()
                .Property(e => e.FeeRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<Fee>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Fee>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Fee>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<FeeType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FeeType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<FeeType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<FeeType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FeeType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.Directory)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.DataFileName)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.DataContentType)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.Width)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.Height)
                .IsUnicode(false);

            modelBuilder.Entity<FileAsset>()
                .Property(e => e.ScopedBy)
                .IsUnicode(false);

            modelBuilder.Entity<FileAssetHolder>()
                .Property(e => e.FileAssetHolderType)
                .IsUnicode(false);

            modelBuilder.Entity<FileAssetHolder>()
                .Property(e => e.ScopedBy)
                .IsUnicode(false);

            modelBuilder.Entity<FinancialTaxationAccount>()
                .Property(e => e.AccountNumber)
                .IsUnicode(false);

            modelBuilder.Entity<FinancialTaxationAccount>()
                .Property(e => e.FinancialAccountType)
                .IsUnicode(false);

            modelBuilder.Entity<FinancialTaxationAssignment>()
                .Property(e => e.FinancialTaxationRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAsset>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAsset>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAsset>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAsset>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAsset>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAsset>()
                .Property(e => e.FixedAssetRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAssetType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAssetType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAssetType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAssetType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<FixedAssetType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<GeneralLedgerAccount>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<GeneralLedgerAccount>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<GeneralLedgerAccount>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<GeneralLedgerAccount>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<GeneralLedgerAccount>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<GeneratedItem>()
                .Property(e => e.GeneratedByType)
                .IsUnicode(false);

            modelBuilder.Entity<GeneratedItem>()
                .Property(e => e.GeneratedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<GeoCountry>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<GeoCountry>()
                .Property(e => e.IsoCode2)
                .IsUnicode(false);

            modelBuilder.Entity<GeoCountry>()
                .Property(e => e.IsoCode3)
                .IsUnicode(false);

            modelBuilder.Entity<GeoZone>()
                .Property(e => e.ZoneCode)
                .IsUnicode(false);

            modelBuilder.Entity<GeoZone>()
                .Property(e => e.ZoneName)
                .IsUnicode(false);

            modelBuilder.Entity<GoodType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<GoodType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<GoodType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<GoodType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<GoodType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Group>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentLastName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentFirstName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentMiddleName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentPersonalTitle)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentSuffix)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentNickName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Gender)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Height)
                .HasPrecision(5, 2);

            modelBuilder.Entity<Individual>()
                .Property(e => e.MothersMaidenName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.MaritalStatus)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.SocialSecurityNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.EncryptedSsn)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.TempSsn)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Salt)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.SsnLastfour)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryDropOffTaxation>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryDropOffTaxation>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntry>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntry>()
                .Property(e => e.InventoryEntryRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntry>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntry>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntry>()
                .Property(e => e.sku)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRelationshipType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRelationshipType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRoleType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRoleType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRoleType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRoleType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryEntryRoleType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryPickupTaxation>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InventoryPickupTaxation>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<Invoice>()
                .Property(e => e.InvoiceNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Invoice>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Invoice>()
                .Property(e => e.Message)
                .IsUnicode(false);

            modelBuilder.Entity<Invoice>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Invoice>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Invoice>()
                .Property(e => e.SalesTax)
                .HasPrecision(8, 2);

            modelBuilder.Entity<InvoicedRecord>()
                .Property(e => e.InvoiceableItemType)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceItem>()
                .Property(e => e.ItemDescription)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceItem>()
                .Property(e => e.Quantity)
                .HasPrecision(8, 2);

            modelBuilder.Entity<InvoiceItem>()
                .Property(e => e.Amount)
                .HasPrecision(8, 2);

            modelBuilder.Entity<InvoiceItem>()
                .Property(e => e.UnitPrice)
                .HasPrecision(8, 2);

            modelBuilder.Entity<InvoiceItem>()
                .Property(e => e.SalesTax)
                .HasPrecision(8, 2);

            modelBuilder.Entity<InvoiceItemType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceItemType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceItemType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceItemType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceItemType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePartyRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePartyRole>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePartyRole>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentStrategyType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentStrategyType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentStrategyType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentStrategyType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTerm>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTerm>()
                .Property(e => e.Amount)
                .HasPrecision(8, 2);

            modelBuilder.Entity<InvoicePaymentTermSet>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermSet>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermSet>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermSet>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermSet>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoicePaymentTermType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<InvoiceType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<JobTracker>()
                .Property(e => e.JobName)
                .IsUnicode(false);

            modelBuilder.Entity<JobTracker>()
                .Property(e => e.JobClass)
                .IsUnicode(false);

            modelBuilder.Entity<JobTracker>()
                .Property(e => e.RunTime)
                .IsUnicode(false);

            modelBuilder.Entity<LoyaltyProgramCode>()
                .Property(e => e.Identifier)
                .IsUnicode(false);

            modelBuilder.Entity<LoyaltyProgramCode>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<LoyaltyProgramCode>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Money>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Money>()
                .Property(e => e.Amount)
                .HasPrecision(8, 2);

            modelBuilder.Entity<Note>()
                .Property(e => e.Content)
                .IsUnicode(false);

            modelBuilder.Entity<Note>()
                .Property(e => e.NotedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<NoteType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<NoteType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<NoteType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<NoteType>()
                .Property(e => e.NoteTypeRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<Notification>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<Notification>()
                .Property(e => e.Message)
                .IsUnicode(false);

            modelBuilder.Entity<Notification>()
                .Property(e => e.CurrentState)
                .IsUnicode(false);

            modelBuilder.Entity<Notification>()
                .Property(e => e.cusTomfields)
                .IsUnicode(false);

            modelBuilder.Entity<NotificationType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<NotificationType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItem>()
                .Property(e => e.ProductInstanceDescription)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItem>()
                .Property(e => e.ProductTypeDescription)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItem>()
                .Property(e => e.SoldPrice)
                .HasPrecision(8, 2);

            modelBuilder.Entity<OrderLineItem>()
                .Property(e => e.ProductOfferDescription)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItem>()
                .Property(e => e.UnitPrice)
                .HasPrecision(18, 0);

            modelBuilder.Entity<OrderLineItem>()
                .Property(e => e.SalesTax)
                .HasPrecision(8, 2);

            modelBuilder.Entity<OrderLineItemPartyRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemRelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemRelationshipType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemRelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemRelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemRelationshipType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLineItemType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<OrderRequirementCommitment>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.OrderTaxationRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.phoneNumber)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipTofirstname)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipTolastname)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipToAddressLine1)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipToAddressLine2)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipTocity)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipTostate)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipToPostalCode)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipTocountryname)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.Customerip)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.OrderNumber)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.errorMessage)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.PaymentGatewayTaxationId)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billTofirstname)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billTolastname)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billToAddressLine1)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billToAddressLine2)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billTocity)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billTostate)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billToPostalCode)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billTocountryname)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.billTocountry)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.shipTocountry)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxation>()
                .Property(e => e.SalesTax)
                .HasPrecision(8, 2);

            modelBuilder.Entity<OrderTaxationType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxationType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxationType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxationType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<OrderTaxationType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Organization>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Organization>()
                .Property(e => e.TaxIdNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Party>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Party>()
                .Property(e => e.BusinessPartyType)
                .IsUnicode(false);

            modelBuilder.Entity<Party>()
                .Property(e => e.EnterpriseIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PartyRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PartyRelationship>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PartyRelationship>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<PartyResourceAvailabilityType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PartyResourceAvailabilityType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PartyRole>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<Payment>()
                .Property(e => e.ReferenceNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Payment>()
                .Property(e => e.currentstate)
                .IsUnicode(false);

            modelBuilder.Entity<Payment>()
                .Property(e => e.authorizationCode)
                .IsUnicode(false);

            modelBuilder.Entity<Payment>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PaymentApplication>()
                .Property(e => e.PaymentAppliedToType)
                .IsUnicode(false);

            modelBuilder.Entity<PaymentApplication>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<PaymentGatewayAction>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PaymentGatewayAction>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PaymentGateway>()
                .Property(e => e.Params)
                .IsUnicode(false);

            modelBuilder.Entity<PaymentGateway>()
                .Property(e => e.response)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneNumber>()
                .Property(e => e.PhoneNumber1)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneNumber>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PositionFulfillment>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PositionType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PositionType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PositionType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PositionType>()
                .Property(e => e.ExternalIdentiferSource)
                .IsUnicode(false);

            modelBuilder.Entity<PositionType>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<PositionType>()
                .Property(e => e.BenefitPercent)
                .HasPrecision(8, 2);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.AddressLine1)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.AddressLine2)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.City)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.State)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Zip)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Country)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Latitude)
                .HasPrecision(12, 8);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Longitude)
                .HasPrecision(12, 8);

            modelBuilder.Entity<PreferenceOption>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PreferenceOption>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PreferenceOption>()
                .Property(e => e.Value)
                .IsUnicode(false);

            modelBuilder.Entity<PreferenceType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PreferenceType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Price>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Price>()
                .Property(e => e.PricedItemType)
                .IsUnicode(false);

            modelBuilder.Entity<PriceComponent>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PriceComponent>()
                .Property(e => e.PricedComponentType)
                .IsUnicode(false);

            modelBuilder.Entity<PriceComponentType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PriceComponentType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PriceComponentType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PriceComponentType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<PricePlanCompGeneralLedgerAccount>()
                .Property(e => e.mappingRuleklass)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.matchingrules)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.Pricingcalculation)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlan>()
                .Property(e => e.MoneyAmount)
                .HasPrecision(8, 2);

            modelBuilder.Entity<PricingPlanAssignment>()
                .Property(e => e.PriceableItemType)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.matchingrules)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.Pricingcalculation)
                .IsUnicode(false);

            modelBuilder.Entity<PricingPlanComponent>()
                .Property(e => e.MoneyAmount)
                .HasPrecision(8, 2);

            modelBuilder.Entity<ProductAvailabilityStatusType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductAvailabilityStatusType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductAvailabilityStatusType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductAvailabilityStatusType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureApplicability>()
                .Property(e => e.FeatureOfRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureInteractionType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureInteractionType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureType>()
                .Property(e => e.ExternalId)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureValue>()
                .Property(e => e.value)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureValue>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureValue>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureValue>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductFeatureValue>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstance>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstance>()
                .Property(e => e.ProductInstanceRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstance>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstance>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstance>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRelationshipType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRelationshipType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRoleType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRoleType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRoleType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRoleType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductInstanceRoleType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductOffer>()
                .Property(e => e.ProductOfferRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ProductOffer>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductOffer>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductOffer>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.ProductTypeRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.DefaultImageUrl)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.sku)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Length)
                .HasPrecision(18, 0);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Width)
                .HasPrecision(18, 0);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Height)
                .HasPrecision(18, 0);

            modelBuilder.Entity<ProductType>()
                .Property(e => e.Weight)
                .HasPrecision(18, 0);

            modelBuilder.Entity<ProductTypeRelationship>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRelationshipType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRelationshipType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRoleType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRoleType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRoleType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRoleType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ProductTypeRoleType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Project>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Project>()
                .Property(e => e.ProjectRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<Publishedelement>()
                .Property(e => e.PublishedelementRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<PublishedWebSite>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<PublishedWebSite>()
                .Property(e => e.Version)
                .HasPrecision(18, 6);

            modelBuilder.Entity<RecurringPayment>()
                .Property(e => e.PaymentAccountType)
                .IsUnicode(false);

            modelBuilder.Entity<RecurringPayment>()
                .Property(e => e.PayUpToAmount)
                .HasPrecision(8, 2);

            modelBuilder.Entity<RecurringPayment>()
                .Property(e => e.PaymentAmount)
                .HasPrecision(8, 2);

            modelBuilder.Entity<RelationshipType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<RelationshipType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<RelationshipType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<RelationshipType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<RelationshipType>()
                .Property(e => e.ExternalIdsource)
                .IsUnicode(false);

            modelBuilder.Entity<Report>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Report>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Report>()
                .Property(e => e.TempateText)
                .IsUnicode(false);

            modelBuilder.Entity<Report>()
                .Property(e => e.QueryText)
                .IsUnicode(false);

            modelBuilder.Entity<Requirement>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Requirement>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<Requirement>()
                .Property(e => e.RequirementRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementPartyRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementPartyRole>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementPartyRole>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<RequirementType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<Resume>()
                .Property(e => e.FileContent)
                .IsUnicode(false);

            modelBuilder.Entity<Resume>()
                .Property(e => e.XmlResumeData)
                .IsUnicode(false);

            modelBuilder.Entity<RoleType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<RoleType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<RoleType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<RoleType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<RoleType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<SalesTaxLine>()
                .Property(e => e.Rate)
                .HasPrecision(8, 2);

            modelBuilder.Entity<SalesTaxLine>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<SalesTaxLine>()
                .Property(e => e.TaxedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<SalesTaxPolicy>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<SalesTaxPolicy>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ScopeType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ScopeType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<SecurityRole>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<SecurityRole>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<SecurityRole>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<SecurityRole>()
                .Property(e => e.ExternalIdsource)
                .IsUnicode(false);

            modelBuilder.Entity<Session>()
                .Property(e => e.sessiOnId)
                .IsUnicode(false);

            modelBuilder.Entity<Session>()
                .Property(e => e.Data)
                .IsUnicode(false);

            modelBuilder.Entity<Shift>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Shift>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Shift>()
                .Property(e => e.CustomFields)
                .IsUnicode(false);

            modelBuilder.Entity<simpleProductOffer>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<simpleProductOffer>()
                .Property(e => e._string)
                .IsUnicode(false);

            modelBuilder.Entity<simpleProductOffer>()
                .Property(e => e.BasePrice)
                .HasPrecision(8, 2);

            modelBuilder.Entity<SkillType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<SkillType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<SkillType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<SkillType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<SkillType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<staffingPosition>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<staffingPosition>()
                .Property(e => e.CustomFields)
                .IsUnicode(false);

            modelBuilder.Entity<StatusApplication>()
                .Property(e => e.StatusApplicationRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<Tag>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Tagging>()
                .Property(e => e.TaggerType)
                .IsUnicode(false);

            modelBuilder.Entity<Tagging>()
                .Property(e => e.TaggableType)
                .IsUnicode(false);

            modelBuilder.Entity<Tagging>()
                .Property(e => e.Context)
                .IsUnicode(false);

            modelBuilder.Entity<Theme>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Theme>()
                .Property(e => e.themeId)
                .IsUnicode(false);

            modelBuilder.Entity<Theme>()
                .Property(e => e.Author)
                .IsUnicode(false);

            modelBuilder.Entity<Theme>()
                .Property(e => e.HomePage)
                .IsUnicode(false);

            modelBuilder.Entity<Theme>()
                .Property(e => e.Summary)
                .IsUnicode(false);

            modelBuilder.Entity<TimesheetEntry>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<TimesheetEntry>()
                .Property(e => e.regularhoursWorked)
                .HasPrecision(5, 2);

            modelBuilder.Entity<TimesheetEntry>()
                .Property(e => e.overTimehoursWorked)
                .HasPrecision(5, 2);

            modelBuilder.Entity<TimesheetEntry>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<TrackedStatusType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<TrackedStatusType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TrackedStatusType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRoute>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRoute>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRoute>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRoute>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRoute>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteSegment>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteSegment>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteSegment>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteSegment>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteSegment>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteStop>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteStop>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteStop>()
                .Property(e => e.GeoLocation)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteStop>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TransportationRouteStop>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDefinition>()
                .Property(e => e.NodeType)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDefinition>()
                .Property(e => e.MenuShortName)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDefinition>()
                .Property(e => e.MenuDescription)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDefinition>()
                .Property(e => e.Text)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDefinition>()
                .Property(e => e.IconUrl)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDefinition>()
                .Property(e => e.TargetUrl)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDefinition>()
                .Property(e => e.ResourceClass)
                .IsUnicode(false);

            modelBuilder.Entity<UnitOfMeasurement>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<UnitOfMeasurement>()
                .Property(e => e.Domain)
                .IsUnicode(false);

            modelBuilder.Entity<UnitOfMeasurement>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<UnitOfMeasurement>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<UnitOfMeasurement>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<UnitOfMeasurement>()
                .Property(e => e.ExternalIdsource)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.UserName)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.Salt)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.CryptedPassword)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.RememberMeToken)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.ResetPasswordToken)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.ActivationState)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.ActivationToken)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.SecurityQuestion1)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.SecurityAnswer1)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.SecurityQuestion2)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.SecurityAnswer2)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.AuthToken)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.UnlockToken)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.LastLoginFromIpAddress)
                .IsUnicode(false);

            modelBuilder.Entity<UserPreference>()
                .Property(e => e.PreferencedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ValidConfiguration>()
                .Property(e => e.ConfiguredItemType)
                .IsUnicode(false);

            modelBuilder.Entity<ValidDocument>()
                .Property(e => e.DocumentedModelType)
                .IsUnicode(false);

            modelBuilder.Entity<ValidNoteType>()
                .Property(e => e.ValidNoteTypeRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ValidPreferenceType>()
                .Property(e => e.PreferencedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ViewType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<ViewType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WcCode>()
                .Property(e => e.WcCode1)
                .IsUnicode(false);

            modelBuilder.Entity<WcCode>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WcCode>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WcCode>()
                .Property(e => e.CustomFields)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteHost>()
                .Property(e => e.Host)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteInquiry>()
                .Property(e => e.FirstName)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteInquiry>()
                .Property(e => e.LastName)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteInquiry>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteInquiry>()
                .Property(e => e.Message)
                .IsUnicode(false);

            modelBuilder.Entity<WebSitenavItem>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<WebSitenavItem>()
                .Property(e => e.Url)
                .IsUnicode(false);

            modelBuilder.Entity<WebSitenavItem>()
                .Property(e => e.linkedToItemType)
                .IsUnicode(false);

            modelBuilder.Entity<WebSitenav>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<WebSite>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<WebSite>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<WebSite>()
                .Property(e => e.SubTitle)
                .IsUnicode(false);

            modelBuilder.Entity<WebSite>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSection>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSection>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSection>()
                .Property(e => e.Path)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSection>()
                .Property(e => e.PermaLink)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSection>()
                .Property(e => e.Layout)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSection>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSectionContent>()
                .Property(e => e.Contentarea)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSectionVersion>()
                .Property(e => e.Title)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSectionVersion>()
                .Property(e => e.Path)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSectionVersion>()
                .Property(e => e.PermaLink)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSectionVersion>()
                .Property(e => e.Layout)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSectionVersion>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WebSiteSectionVersion>()
                .Property(e => e.VersionedType)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffort>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffort>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffort>()
                .Property(e => e.WorkEffortRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffort>()
                .Property(e => e.WorkEffortItemType)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffort>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffort>()
                .Property(e => e.DurationUnit)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffort>()
                .Property(e => e.EffortUnit)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortAssociation>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortAssociation>()
                .Property(e => e.LagUnit)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortAssociationType>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortAssociationType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortAssociationType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortAssociationType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortAssociationType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortFixedAssetStandard>()
                .Property(e => e.EstimatedQuantity)
                .HasPrecision(18, 0);

            modelBuilder.Entity<WorkEffortFixedAssetStandard>()
                .Property(e => e.EstimatedDuration)
                .HasPrecision(18, 0);

            modelBuilder.Entity<WorkEffortGoodStandard>()
                .Property(e => e.EstimatedQuantity)
                .HasPrecision(18, 0);

            modelBuilder.Entity<WorkEffortPartyAssignment>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortPuposeType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortPuposeType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortPuposeType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortPuposeType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortPuposeType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortSkillStandard>()
                .Property(e => e.EstimatedNumberPeople)
                .HasPrecision(18, 0);

            modelBuilder.Entity<WorkEffortSkillStandard>()
                .Property(e => e.EstimatedDuration)
                .HasPrecision(18, 0);

            modelBuilder.Entity<WorkEffortType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortType>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortType>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortTypeAssociation>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortTypeAssociation>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortTypeAssociation>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortTypeAssociation>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<WorkEffortTypeAssociation>()
                .Property(e => e.ExternalIdSource)
                .IsUnicode(false);

            modelBuilder.Entity<WorkOrderItemFulfillment>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<WorkRequirementFulfillment>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<SchemaMigration>()
                .Property(e => e.Version)
                .IsUnicode(false);
        }
    }
}
