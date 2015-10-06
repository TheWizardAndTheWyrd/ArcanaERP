CREATE TABLE [dbo].[configurations] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [active]              BIT           NULL,
    [is_template]         BIT           DEFAULT ('f') NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_configurations_on_is_template]
    ON [dbo].[configurations]([is_template] ASC);


GO
CREATE NONCLUSTERED INDEX [configurations_internal_identifier_idx]
    ON [dbo].[configurations]([internal_identifier] ASC);

