CREATE TABLE [dbo].[ChargeLine] (
    [Id]                 INT            IDENTITY (1, 1) NOT NULL,
    [StiType]            VARCHAR (255)  NULL,
    [MoneyId]            INT            NULL,
    [Description]        VARCHAR (255)  NULL,
    [ExternalIdentifier] VARCHAR (255)  NULL,
    [ExternalIdSource]   VARCHAR (255)  NULL,
    [ChargedItemId]      INT            NULL,
    [ChargedItemType]    VARCHAR (255)  NULL,
    [CreatedAt]          DATETIME       NOT NULL,
    [UpdatedAt]          DATETIME       NOT NULL,
    [ChargeTypeId]       INT            NULL,
    [SalesTax]           DECIMAL (8, 2) NULL,
    [Taxed]              BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ChargedItemIndex]
    ON [dbo].[ChargeLine]([ChargedItemId] ASC, [ChargedItemType] ASC);

