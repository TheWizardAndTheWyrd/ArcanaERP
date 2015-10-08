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

        public virtual DbSet<Application> Applications { get; set; }
        public virtual DbSet<ArcanaErpInstance> ArcanaErpInstances { get; set; }
        public virtual DbSet<ArcanaErpInstancePartyRole> ArcanaErpInstancePartyRoles { get; set; }
        public virtual DbSet<AuditLog> AuditLogs { get; set; }
        public virtual DbSet<AuditLogItem> AuditLogItems { get; set; }
        public virtual DbSet<AuditLogItemType> AuditLogItemTypes { get; set; }
        public virtual DbSet<AuditLogType> AuditLogTypes { get; set; }
        public virtual DbSet<Capability> Capabilities { get; set; }
        public virtual DbSet<CapabilityAccessor> CapabilityAccessors { get; set; }
        public virtual DbSet<CapabilityType> CapabilityTypes { get; set; }
        public virtual DbSet<CapableModel> CapableModels { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<CategoryClassification> CategoryClassifications { get; set; }
        public virtual DbSet<Comment> Comments { get; set; }
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
        public virtual DbSet<Currency> Currencies { get; set; }
        public virtual DbSet<DelayedJob> DelayedJobs { get; set; }
        public virtual DbSet<DescriptiveAsset> DescriptiveAssets { get; set; }
        public virtual DbSet<DocumentedItem> DocumentedItems { get; set; }
        public virtual DbSet<Document> Documents { get; set; }
        public virtual DbSet<DocumentType> DocumentTypes { get; set; }
        public virtual DbSet<EmailAddress> EmailAddresses { get; set; }
        public virtual DbSet<EntityPartyRole> EntityPartyRoles { get; set; }
        public virtual DbSet<Facility> Facilities { get; set; }
        public virtual DbSet<FacilityType> FacilityTypes { get; set; }
        public virtual DbSet<FileAsset> FileAssets { get; set; }
        public virtual DbSet<FileAssetHolder> FileAssetHolders { get; set; }
        public virtual DbSet<FixedAsset> FixedAssets { get; set; }
        public virtual DbSet<FixedAssetPartyRole> FixedAssetPartyRoles { get; set; }
        public virtual DbSet<FixedAssetType> FixedAssetTypes { get; set; }
        public virtual DbSet<GeneratedItem> GeneratedItems { get; set; }
        public virtual DbSet<GeoCountry> GeoCountries { get; set; }
        public virtual DbSet<GeoZone> GeoZones { get; set; }
        public virtual DbSet<Group> Groups { get; set; }
        public virtual DbSet<Individual> Individuals { get; set; }
        public virtual DbSet<JobTracker> JobTrackers { get; set; }
        public virtual DbSet<Money> Moneys { get; set; }
        public virtual DbSet<Note> Notes { get; set; }
        public virtual DbSet<NoteType> NoteTypes { get; set; }
        public virtual DbSet<Notification> Notifications { get; set; }
        public virtual DbSet<NotificationType> NotificationTypes { get; set; }
        public virtual DbSet<OrganizatiOn> OrganizatiOns { get; set; }
        public virtual DbSet<Party> Parties { get; set; }
        public virtual DbSet<PartyFixedAssetAssignment> PartyFixedAssetAssignments { get; set; }
        public virtual DbSet<PartyRelationship> PartyRelationships { get; set; }
        public virtual DbSet<PartyRole> PartyRoles { get; set; }
        public virtual DbSet<PhoneNumber> PhoneNumbers { get; set; }
        public virtual DbSet<PostalAddress> PostalAddresses { get; set; }
        public virtual DbSet<Preference> Preferences { get; set; }
        public virtual DbSet<PreferenceOption> PreferenceOptions { get; set; }
        public virtual DbSet<PreferenceType> PreferenceTypes { get; set; }
        public virtual DbSet<Publishedelement> Publishedelements { get; set; }
        public virtual DbSet<PublishedWebSite> PublishedWebSites { get; set; }
        public virtual DbSet<RelationshipType> RelationshipTypes { get; set; }
        public virtual DbSet<Report> Reports { get; set; }
        public virtual DbSet<RoleType> RoleTypes { get; set; }
        public virtual DbSet<ScopeType> ScopeTypes { get; set; }
        public virtual DbSet<SecurityRole> SecurityRoles { get; set; }
        public virtual DbSet<Session> Sessions { get; set; }
        public virtual DbSet<StatusApplication> StatusApplications { get; set; }
        public virtual DbSet<Tag> Tags { get; set; }
        public virtual DbSet<Tagging> Taggings { get; set; }
        public virtual DbSet<Theme> Themes { get; set; }
        public virtual DbSet<TrackedStatusType> TrackedStatusTypes { get; set; }
        public virtual DbSet<TreeMenuNodeDef> TreeMenuNodeDefs { get; set; }
        public virtual DbSet<UnitOfMeasurement> UnitOfMeasurements { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<UsersPreference> UsersPreferences { get; set; }
        public virtual DbSet<ValidConfiguration> ValidConfigurations { get; set; }
        public virtual DbSet<ValidDocument> ValidDocuments { get; set; }
        public virtual DbSet<ValidNoteType> ValidNoteTypes { get; set; }
        public virtual DbSet<ValidPreferenceType> ValidPreferenceTypes { get; set; }
        public virtual DbSet<ViewType> ViewTypes { get; set; }
        public virtual DbSet<WebSiteHost> WebSiteHosts { get; set; }
        public virtual DbSet<WebSiteInquiry> WebSiteInquiries { get; set; }
        public virtual DbSet<WebSitenavItem> WebSitenavItems { get; set; }
        public virtual DbSet<WebSitenav> WebSitenavs { get; set; }
        public virtual DbSet<WebSitePartyRole> WebSitePartyRoles { get; set; }
        public virtual DbSet<WebSite> WebSites { get; set; }
        public virtual DbSet<WebSiteSection> WebSiteSections { get; set; }
        public virtual DbSet<WebSiteSectionContent> WebSiteSectionContents { get; set; }
        public virtual DbSet<WebSiteSectionVersion> WebSiteSectionVersions { get; set; }
        public virtual DbSet<SchemaMigration> SchemaMigrations { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
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
                .Property(e => e.GuId)
                .IsUnicode(false);

            modelBuilder.Entity<ArcanaErpInstancePartyRole>()
                .Property(e => e.Description)
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
                .Property(e => e.ExternalIdsource)
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
                .Property(e => e.ExternalIdsource)
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

            modelBuilder.Entity<Currency>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.definitiOn)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.numericcode)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.majorunitsymbol)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.minorunitsymbol)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.ratioofminorunitTomajorunit)
                .IsUnicode(false);

            modelBuilder.Entity<Currency>()
                .Property(e => e.postfixlabel)
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
                .Property(e => e.ExternalIdsource)
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
                .Property(e => e.ExternalIdentifersource)
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
                .Property(e => e.ExternalIdsource)
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
                .Property(e => e.ExternalIdsource)
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
                .Property(e => e.isocode3)
                .IsUnicode(false);

            modelBuilder.Entity<GeoZone>()
                .Property(e => e.ZoneCode)
                .IsUnicode(false);

            modelBuilder.Entity<GeoZone>()
                .Property(e => e.ZoneName)
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
                .Property(e => e.CurrentmIddleName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentpersOnalTitle)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Currentsuffix)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.CurrentnickName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.gender)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Height)
                .HasPrecision(5, 2);

            modelBuilder.Entity<Individual>()
                .Property(e => e.mothersmaIdenName)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.maritalStatus)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.socialSecuritynumber)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.enCryptedssn)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.tempssn)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.Salt)
                .IsUnicode(false);

            modelBuilder.Entity<Individual>()
                .Property(e => e.ssnLastfour)
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

            modelBuilder.Entity<Money>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Money>()
                .Property(e => e.amount)
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

            modelBuilder.Entity<OrganizatiOn>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<OrganizatiOn>()
                .Property(e => e.TaxIdnumber)
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
                .Property(e => e.ExternalIdsource)
                .IsUnicode(false);

            modelBuilder.Entity<PartyRole>()
                .Property(e => e.Type)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneNumber>()
                .Property(e => e.Phonenumber1)
                .IsUnicode(false);

            modelBuilder.Entity<PhoneNumber>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Addressline1)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Addressline2)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.city)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.State)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.zip)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Country)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.latitude)
                .HasPrecision(12, 8);

            modelBuilder.Entity<PostalAddress>()
                .Property(e => e.lOngitude)
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

            modelBuilder.Entity<Publishedelement>()
                .Property(e => e.PublishedelementRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<PublishedWebSite>()
                .Property(e => e.Comment)
                .IsUnicode(false);

            modelBuilder.Entity<PublishedWebSite>()
                .Property(e => e.Version)
                .HasPrecision(18, 6);

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

            modelBuilder.Entity<TrackedStatusType>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<TrackedStatusType>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TrackedStatusType>()
                .Property(e => e.ExternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDef>()
                .Property(e => e.NodeType)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDef>()
                .Property(e => e.MenuShortName)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDef>()
                .Property(e => e.MenuDescription)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDef>()
                .Property(e => e.text)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDef>()
                .Property(e => e.IconUrl)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDef>()
                .Property(e => e.targetUrl)
                .IsUnicode(false);

            modelBuilder.Entity<TreeMenuNodeDef>()
                .Property(e => e.resourceclass)
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
                .Property(e => e.LastloginFromIpAddress)
                .IsUnicode(false);

            modelBuilder.Entity<UsersPreference>()
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

            modelBuilder.Entity<SchemaMigration>()
                .Property(e => e.Version)
                .IsUnicode(false);
        }
    }
}
