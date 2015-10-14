CREATE TABLE [dbo].[ProductType] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]              INT           NULL,
    [LeftValue]             INT           NULL,
    [RightValue]            INT           NULL,
    [Description]           VARCHAR (255) NULL,
    [ProductTypeRecordId]   INT           NULL,
    [ProductTypeRecordType] VARCHAR (255) NULL,
    [ExternalIdentifier]    VARCHAR (255) NULL,
    [InternalIdentifier]    VARCHAR (255) NULL,
    [ExternalIdSource]      VARCHAR (255) NULL,
    [DefaultImageUrl]       VARCHAR (255) NULL,
    [ListViewImageId]       INT           NULL,
    [Type]                  VARCHAR (255) NULL,
    [Sku]                   VARCHAR (255) NULL,
    [Comment]               TEXT          NULL,
    [UnitOfMeasurementId]   INT           NULL,
    [CreatedAt]             DATETIME      NOT NULL,
    [UpdatedAt]             DATETIME      NOT NULL,
    [AvailableOnWeb]        BIT           NULL,
    [Length]                DECIMAL (18)  NULL,
    [Width]                 DECIMAL (18)  NULL,
    [Height]                DECIMAL (18)  NULL,
    [Weight]                DECIMAL (18)  NULL,
    [Cylindrical]           BIT           NULL,
    [Taxable]               BIT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductTypeParentIdIndex]
    ON [dbo].[ProductType]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeLeftValueIndex]
    ON [dbo].[ProductType]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeRightValueIndex]
    ON [dbo].[ProductType]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypeUnitOfMeasurementIndex]
    ON [dbo].[ProductType]([UnitOfMeasurementId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductTypePolyIndex]
    ON [dbo].[ProductType]([ProductTypeRecordId] ASC, [ProductTypeRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexProductTypeOnAvailableOnWeb]
    ON [dbo].[ProductType]([AvailableOnWeb] ASC);

