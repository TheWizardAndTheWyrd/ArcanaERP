CREATE TABLE [dbo].[OrderLineItem] (
    [Id]                          INT            IDENTITY (1, 1) NOT NULL,
    [OrderTaxationId]             INT            NULL,
    [OrderLineItemTypeId]         INT            NULL,
    [ProductInstanceId]           INT            NULL,
    [ProductInstanceDescription]  VARCHAR (255)  NULL,
    [ProductTypeId]               INT            NULL,
    [ProductTypeDescription]      VARCHAR (255)  NULL,
    [SoldPrice]                   DECIMAL (8, 2) NULL,
    [SoldPriceUnitOfMeasurement]  INT            NULL,
    [SoldAmount]                  INT            NULL,
    [SoldAmountUnitOfMeasurement] INT            NULL,
    [ProductOfferId]              INT            NULL,
    [Quantity]                    INT            NULL,
    [UnitOfMeasurementId]         INT            NULL,
    [ProductOfferDescription]     VARCHAR (255)  NULL,
    [CreatedAt]                   DATETIME       NOT NULL,
    [UpdatedAt]                   DATETIME       NOT NULL,
    [UnitPrice]                   DECIMAL (18)   NULL,
    [SalesTax]                    DECIMAL (8, 2) NULL,
    [Taxed]                       BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [OrderLineItemUnitOfMeasurementIndex]
    ON [dbo].[OrderLineItem]([UnitOfMeasurementId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexOrderLineItemOnOrderTaxationId]
    ON [dbo].[OrderLineItem]([OrderTaxationId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexOrderLineItemOnOrderLineItemTypeId]
    ON [dbo].[OrderLineItem]([OrderLineItemTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexOrderLineItemOnProductInstanceId]
    ON [dbo].[OrderLineItem]([ProductInstanceId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexOrderLineItemOnProductTypeId]
    ON [dbo].[OrderLineItem]([ProductTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexOrderLineItemOnProductOfferId]
    ON [dbo].[OrderLineItem]([ProductOfferId] ASC);

