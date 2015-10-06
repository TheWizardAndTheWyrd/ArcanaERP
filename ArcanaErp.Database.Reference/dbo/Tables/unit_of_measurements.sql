CREATE TABLE [dbo].[unit_of_measurements] (
    [id]                  INT           IDENTITY (1, 1) NOT NULL,
    [description]         VARCHAR (255) NULL,
    [domain]              VARCHAR (255) NULL,
    [internal_identifier] VARCHAR (255) NULL,
    [comments]            VARCHAR (255) NULL,
    [external_identifier] VARCHAR (255) NULL,
    [external_id_source]  VARCHAR (255) NULL,
    [lft]                 INT           NULL,
    [rgt]                 INT           NULL,
    [parent_id]           INT           NULL,
    [created_at]          DATETIME      NOT NULL,
    [updated_at]          DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_unit_of_measurements_on_lft]
    ON [dbo].[unit_of_measurements]([lft] ASC);


GO
CREATE NONCLUSTERED INDEX [index_unit_of_measurements_on_rgt]
    ON [dbo].[unit_of_measurements]([rgt] ASC);


GO
CREATE NONCLUSTERED INDEX [index_unit_of_measurements_on_parent_id]
    ON [dbo].[unit_of_measurements]([parent_id] ASC);

