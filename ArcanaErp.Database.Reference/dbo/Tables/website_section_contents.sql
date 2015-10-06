CREATE TABLE [dbo].[website_section_contents] (
    [id]                 INT           IDENTITY (1, 1) NOT NULL,
    [website_section_id] INT           NULL,
    [content_id]         INT           NULL,
    [content_area]       VARCHAR (255) NULL,
    [position]           INT           DEFAULT ((0)) NULL,
    [created_at]         DATETIME      NOT NULL,
    [updated_at]         DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_website_section_contents_on_website_section_id]
    ON [dbo].[website_section_contents]([website_section_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_section_contents_on_content_id]
    ON [dbo].[website_section_contents]([content_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_section_contents_on_position]
    ON [dbo].[website_section_contents]([position] ASC);


GO
CREATE NONCLUSTERED INDEX [index_website_section_contents_on_content_area]
    ON [dbo].[website_section_contents]([content_area] ASC);

