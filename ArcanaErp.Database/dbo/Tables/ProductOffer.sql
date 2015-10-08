CREATE TABLE [dbo].[ProductOffer] (
    [Id]                     INT           IDENTITY (1, 1) NOT NULL,
    [ProductOfferRecordId]   INT           NULL,
    [ProductOfferRecordType] VARCHAR (255) NULL,
    [Description]            VARCHAR (255) NULL,
    [ExternalIdentifier]     VARCHAR (255) NULL,
    [ExternalIdSource]       VARCHAR (255) NULL,
    [ValidFrom]              DATE          NULL,
    [ValidTo]                DATE          NULL,
    [CreatedAt]              DATETIME      NOT NULL,
    [UpdatedAt]              DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductOfferPolyIndex]
    ON [dbo].[ProductOffer]([ProductOfferRecordId] ASC, [ProductOfferRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductOfferValidFromIndex]
    ON [dbo].[ProductOffer]([ValidFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductOfferValidToIndex]
    ON [dbo].[ProductOffer]([ValidTo] ASC);

