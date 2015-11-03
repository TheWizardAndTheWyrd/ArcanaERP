using ArcanaErp.Core.Models.Erp;

namespace ArcanaErp.Core.DataAccessLayer.Modules.Application
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext()
            : base("name=ApplicationDbContext")
        {
        }

        public virtual DbSet<Models.Erp.Application> Applications { get; set; }
        public virtual DbSet<Configuration> Configurations { get; set; }
        public virtual DbSet<ConfigurationItem> ConfigurationItems { get; set; }
        public virtual DbSet<ConfigurationItemType> ConfigurationItemTypes { get; set; }
        public virtual DbSet<ConfigurationItemTypeConfigurationOption> ConfigurationItemTypeConfigurationOptions { get; set; }
        public virtual DbSet<ConfigurationOption> ConfigurationOptions { get; set; }
        public virtual DbSet<DelayedJob> DelayedJobs { get; set; }
        public virtual DbSet<JobTracker> JobTrackers { get; set; }
        public virtual DbSet<Preference> Preferences { get; set; }
        public virtual DbSet<PreferenceOption> PreferenceOptions { get; set; }
        public virtual DbSet<PreferenceType> PreferenceTypes { get; set; }
        public virtual DbSet<TreeMenuNodeDefinition> TreeMenuNodeDefinitions { get; set; }
        public virtual DbSet<UserPreference> UserPreferences { get; set; }
        public virtual DbSet<ValidConfiguration> ValidConfigurations { get; set; }
        public virtual DbSet<ValidPreferenceType> ValidPreferenceTypes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Models.Erp.Application>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<Models.Erp.Application>()
                .Property(e => e.Icon)
                .IsUnicode(false);

            modelBuilder.Entity<Models.Erp.Application>()
                .Property(e => e.InternalIdentifier)
                .IsUnicode(false);

            modelBuilder.Entity<Models.Erp.Application>()
                .Property(e => e.Type)
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
                .Property(e => e.Comments)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.Handler)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.LastError)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.LockedBy)
                .IsUnicode(false);

            modelBuilder.Entity<DelayedJob>()
                .Property(e => e.Queue)
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

            modelBuilder.Entity<UserPreference>()
                .Property(e => e.PreferencedRecordType)
                .IsUnicode(false);

            modelBuilder.Entity<ValidConfiguration>()
                .Property(e => e.ConfiguredItemType)
                .IsUnicode(false);

            modelBuilder.Entity<ValidPreferenceType>()
                .Property(e => e.PreferencedRecordType)
                .IsUnicode(false);
        }
    }
}
