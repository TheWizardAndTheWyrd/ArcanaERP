using ArcanaErp.Core.Models.Erp;

namespace ArcanaErp.Core.DataAccessLayer.Modules.Agreements
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class AgreementsDbContext : DbContext
    {
        public AgreementsDbContext()
            : base("name=AgreementsModel")
        {
        }

        public virtual DbSet<Agreement> Agreements { get; set; }
        public virtual DbSet<AgreementItem> AgreementItems { get; set; }
        public virtual DbSet<AgreementItemType> AgreementItemTypes { get; set; }
        public virtual DbSet<AgreementPartyRole> AgreementPartyRoles { get; set; }
        public virtual DbSet<AgreementRelationship> AgreementRelationships { get; set; }
        public virtual DbSet<AgreementRelationshipType> AgreementRelationshipTypes { get; set; }
        public virtual DbSet<AgreementRoleType> AgreementRoleTypes { get; set; }
        public virtual DbSet<AgreementType> AgreementTypes { get; set; }
        public virtual DbSet<LoyaltyProgramCode> LoyaltyProgramCodes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
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

            modelBuilder.Entity<LoyaltyProgramCode>()
                .Property(e => e.Identifier)
                .IsUnicode(false);

            modelBuilder.Entity<LoyaltyProgramCode>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<LoyaltyProgramCode>()
                .Property(e => e.Description)
                .IsUnicode(false);
        }
    }
}
