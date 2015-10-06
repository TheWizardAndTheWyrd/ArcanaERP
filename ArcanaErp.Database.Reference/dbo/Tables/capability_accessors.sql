CREATE TABLE [dbo].[capability_accessors] (
    [id]                              INT           IDENTITY (1, 1) NOT NULL,
    [capability_accessor_record_id]   INT           NULL,
    [capability_accessor_record_type] VARCHAR (255) NULL,
    [capability_id]                   INT           NULL,
    [created_at]                      DATETIME      NOT NULL,
    [updated_at]                      DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_capability_accessors_on_capability_id]
    ON [dbo].[capability_accessors]([capability_id] ASC);


GO
CREATE NONCLUSTERED INDEX [capability_accessor_record_index]
    ON [dbo].[capability_accessors]([capability_accessor_record_id] ASC, [capability_accessor_record_type] ASC);

