CREATE TABLE [dbo].[facility_types] (
    [id]                        INT           IDENTITY (1, 1) NOT NULL,
    [description]               VARCHAR (255) NULL,
    [internal_identifier]       VARCHAR (255) NULL,
    [external_identifier]       VARCHAR (255) NULL,
    [external_identifer_source] VARCHAR (255) NULL,
    [parent_id]                 INT           NULL,
    [lft]                       INT           NULL,
    [rgt]                       INT           NULL,
    [created_at]                DATETIME      NOT NULL,
    [updated_at]                DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [facility_types_nested_set_idx]
    ON [dbo].[facility_types]([parent_id] ASC, [lft] ASC, [rgt] ASC);

