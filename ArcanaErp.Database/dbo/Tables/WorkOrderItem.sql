CREATE TABLE [dbo].[WorkOrderItem] (
    [Id]        INT      IDENTITY (1, 1) NOT NULL,
    [CreatedAt] DATETIME NOT NULL,
    [UpdatedAt] DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

