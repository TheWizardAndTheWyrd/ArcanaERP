CREATE TABLE [dbo].[categories] (
    [id]                   INT           IDENTITY (1, 1) NOT NULL,
    [description]          VARCHAR (255) NULL,
    [external_identifier]  VARCHAR (255) NULL,
    [from_date]            DATETIME      NULL,
    [to_date]              DATETIME      NULL,
    [internal_identifier]  VARCHAR (255) NULL,
    [category_record_id]   INT           NULL,
    [category_record_type] VARCHAR (255) NULL,
    [parent_id]            INT           NULL,
    [lft]                  INT           NULL,
    [rgt]                  INT           NULL,
    [created_at]           DATETIME      NOT NULL,
    [updated_at]           DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [category_polymorphic]
    ON [dbo].[categories]([category_record_id] ASC, [category_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [categories_internal_identifier_idx]
    ON [dbo].[categories]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [categories_parent_id_idx]
    ON [dbo].[categories]([parent_id] ASC);


GO
CREATE NONCLUSTERED INDEX [categories_lft_idx]
    ON [dbo].[categories]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [categories_rgt_idx]
    ON [dbo].[categories]([rgt] ASC);

