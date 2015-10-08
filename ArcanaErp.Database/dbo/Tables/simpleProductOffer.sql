CREATE TABLE [dbo].[simpleProductOffer] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [ProductTypeId] INT            NULL,
    [Description]   VARCHAR (255)  NULL,
    [string]        VARCHAR (255)  NULL,
    [BasePrice]     DECIMAL (8, 2) NULL,
    [uom]           INT            NULL,
    [CreatedAt]     DATETIME       NOT NULL,
    [UpdatedAt]     DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [simpleProductOfferProductTypeIdIndex]
    ON [dbo].[simpleProductOffer]([ProductTypeId] ASC);

