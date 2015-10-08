CREATE TABLE [dbo].[InvoicePartyRole] (
    [Id]                 INT           IDENTITY (1, 1) NOT NULL,
    [Description]        VARCHAR (255) NULL,
    [RoleTypeId]         INT           NULL,
    [ExternalIdentifier] VARCHAR (255) NULL,
    [ExternalIdSource]   VARCHAR (255) NULL,
    [InvoiceId]          INT           NULL,
    [PartyId]            INT           NULL,
    [CreatedAt]          DATETIME      NOT NULL,
    [UpdatedAt]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [InvoicePartyInvoiceIdIndex]
    ON [dbo].[InvoicePartyRole]([InvoiceId] ASC);


GO
CREATE NONCLUSTERED INDEX [InvoicePartyPartyIdIndex]
    ON [dbo].[InvoicePartyRole]([PartyId] ASC);

