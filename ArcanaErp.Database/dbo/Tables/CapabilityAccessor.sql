CREATE TABLE [dbo].[CapabilityAccessor] (
    [Id]                           INT           IDENTITY (1, 1) NOT NULL,
    [CapabilityaccessorRecordId]   INT           NULL,
    [CapabilityaccessorRecordType] VARCHAR (255) NULL,
    [CapabilityId]                 INT           NULL,
    [CreatedAt]                    DATETIME      NOT NULL,
    [UpdatedAt]                    DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexCapabilityAccessorOnCapabilityId]
    ON [dbo].[CapabilityAccessor]([CapabilityId] ASC);


GO
CREATE NONCLUSTERED INDEX [CapabilityaccessorRecordIndex]
    ON [dbo].[CapabilityAccessor]([CapabilityaccessorRecordId] ASC, [CapabilityaccessorRecordType] ASC);

