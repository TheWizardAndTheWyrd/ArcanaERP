CREATE TABLE [dbo].[capabilities] (
    [id]                       INT           IDENTITY (1, 1) NOT NULL,
    [description]              VARCHAR (255) NULL,
    [capability_type_id]       INT           NULL,
    [capability_resource_id]   INT           NULL,
    [capability_resource_type] VARCHAR (255) NULL,
    [scope_type_id]            INT           NULL,
    [scope_query]              TEXT          NULL,
    [created_at]               DATETIME      NOT NULL,
    [updated_at]               DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_capabilities_on_capability_type_id]
    ON [dbo].[capabilities]([capability_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_capabilities_on_scope_type_id]
    ON [dbo].[capabilities]([scope_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [capability_resource_index]
    ON [dbo].[capabilities]([capability_resource_id] ASC, [capability_resource_type] ASC);

