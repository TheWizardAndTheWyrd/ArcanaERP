CREATE TABLE [dbo].[generated_items] (
    [id]                    INT           IDENTITY (1, 1) NOT NULL,
    [generated_by_id]       INT           NULL,
    [generated_by_type]     VARCHAR (255) NULL,
    [generated_record_id]   INT           NULL,
    [generated_record_type] VARCHAR (255) NULL,
    [created_at]            DATETIME      NOT NULL,
    [updated_at]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [generated_by_idx]
    ON [dbo].[generated_items]([generated_by_type] ASC, [generated_by_id] ASC);


GO
CREATE NONCLUSTERED INDEX [generated_record_idx]
    ON [dbo].[generated_items]([generated_record_type] ASC, [generated_record_id] ASC);

