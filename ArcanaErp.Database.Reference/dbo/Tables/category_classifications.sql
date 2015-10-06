CREATE TABLE [dbo].[category_classifications] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [category_id]         INT           NULL,
    [classification_type] VARCHAR (255) NULL,
    [classification_id]   INT           NULL,
    [from_date]           DATETIME      NULL,
    [to_date]             DATETIME      NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [classification_polymorphic]
    ON [dbo].[category_classifications]([classification_id] ASC, [classification_type] ASC);


GO
CREATE NONCLUSTERED INDEX [category_classifications_category_id_idx]
    ON [dbo].[category_classifications]([category_id] ASC);

