CREATE TABLE [dbo].[ProductInstance] (
    [Id]                              INT           IDENTITY (1, 1) NOT NULL,
    [ParentId]                        INT           NULL,
    [LeftValue]                       INT           NULL,
    [RightValue]                      INT           NULL,
    [Description]                     VARCHAR (255) NULL,
    [ProductInstanceRecordId]         INT           NULL,
    [ProductInstanceRecordType]       VARCHAR (255) NULL,
    [ExternalIdentifier]              VARCHAR (255) NULL,
    [ExternalIdSource]                VARCHAR (255) NULL,
    [ProductTypeId]                   INT           NULL,
    [Type]                            VARCHAR (255) NULL,
    [ProductAvailabilityStatusTypeId] INT           NULL,
    [CreatedAt]                       DATETIME      NOT NULL,
    [UpdatedAt]                       DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceParentIdIndex]
    ON [dbo].[ProductInstance]([ParentId] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceLeftValueIndex]
    ON [dbo].[ProductInstance]([LeftValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceRightValueIndex]
    ON [dbo].[ProductInstance]([RightValue] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstancePolyIndex]
    ON [dbo].[ProductInstance]([ProductInstanceRecordId] ASC, [ProductInstanceRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [ProductInstanceProductTypeIndex]
    ON [dbo].[ProductInstance]([ProductTypeId] ASC);

