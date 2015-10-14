CREATE TABLE [dbo].[SimpleProductOffer] (
    [Id]            INT            IDENTITY (1, 1) NOT NULL,
    [ProductTypeId] INT            NULL,
    [Description]   VARCHAR (255)  NULL,
    [StringValue]   VARCHAR (255)  NULL,
    [BasePrice]     DECIMAL (8, 2) NULL,
    [Uom]           INT            NULL,
    [CreatedAt]     DATETIME       NOT NULL,
    [UpdatedAt]     DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [simpleProductOfferProductTypeIdIndex]
    ON [dbo].[SimpleProductOffer]([ProductTypeId] ASC);

