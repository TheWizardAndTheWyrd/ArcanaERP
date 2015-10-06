CREATE TABLE [dbo].[taggings] (
    [id]            INT           IDENTITY (1, 1) NOT NULL,
    [tag_id]        INT           NULL,
    [taggable_id]   INT           NULL,
    [tagger_id]     INT           NULL,
    [tagger_type]   VARCHAR (255) NULL,
    [taggable_type] VARCHAR (255) NULL,
    [context]       VARCHAR (255) NULL,
    [created_at]    DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_taggings_on_tag_id]
    ON [dbo].[taggings]([tag_id] ASC);


GO
CREATE NONCLUSTERED INDEX [taggable_poly_idx]
    ON [dbo].[taggings]([taggable_id] ASC, [taggable_type] ASC, [context] ASC);

