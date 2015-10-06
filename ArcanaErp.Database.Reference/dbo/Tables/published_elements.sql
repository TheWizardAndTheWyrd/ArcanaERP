CREATE TABLE [dbo].[published_elements] (
    [id]                            INT           IDENTITY (1, 1) NOT NULL,
    [published_website_id]          INT           NULL,
    [published_element_record_id]   INT           NULL,
    [published_element_record_type] VARCHAR (255) NULL,
    [version]                       INT           NULL,
    [published_by_id]               INT           NULL,
    [created_at]                    DATETIME      NOT NULL,
    [updated_at]                    DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [published_elm_idx]
    ON [dbo].[published_elements]([published_element_record_id] ASC, [published_element_record_type] ASC);


GO
CREATE NONCLUSTERED INDEX [index_published_elements_on_published_website_id]
    ON [dbo].[published_elements]([published_website_id] ASC);


GO
CREATE NONCLUSTERED INDEX [index_published_elements_on_version]
    ON [dbo].[published_elements]([version] ASC);


GO
CREATE NONCLUSTERED INDEX [index_published_elements_on_published_by_id]
    ON [dbo].[published_elements]([published_by_id] ASC);

