CREATE TABLE [dbo].[preference_types] (
    [id]                     INT           IDENTITY (1, 1) NOT NULL,
    [description]            VARCHAR (255) NULL,
    [internal_identifier]    VARCHAR (255) NULL,
    [default_pref_option_id] INT           NULL,
    [created_at]             DATETIME      NOT NULL,
    [updated_at]             DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_preference_types_on_default_pref_option_id]
    ON [dbo].[preference_types]([default_pref_option_id] ASC);


GO
CREATE NONCLUSTERED INDEX [preference_types_internal_identifier_idx]
    ON [dbo].[preference_types]([internal_identifier] ASC);

