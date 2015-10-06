CREATE TABLE [dbo].[configuration_options] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [value]               VARCHAR (255) NULL,
    [comment]             TEXT          NULL,
    [user_defined]        BIT           DEFAULT ('f') NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_configuration_options_on_value]
    ON [dbo].[configuration_options]([value] ASC);


GO
CREATE NONCLUSTERED INDEX [index_configuration_options_on_internal_identifier]
    ON [dbo].[configuration_options]([internal_identifier] ASC);


GO
CREATE NONCLUSTERED INDEX [index_configuration_options_on_user_defined]
    ON [dbo].[configuration_options]([user_defined] ASC);

