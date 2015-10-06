CREATE TABLE [dbo].[contacts] (
    [id]                     INT           IDENTITY (1, 1) NOT NULL,
    [contact_mechanism_id]   INT           NULL,
    [contact_mechanism_type] VARCHAR (255) NULL,
    [is_primary]             BIT           NULL,
    [external_identifier]    VARCHAR (255) NULL,
    [external_id_source]     VARCHAR (255) NULL,
    [created_at]             DATETIME      NOT NULL,
    [updated_at]             DATETIME      NOT NULL,
    [contact_record_type]    VARCHAR (255) NULL,
    [contact_record_id]      INT           NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_contacts_on_is_primary]
    ON [dbo].[contacts]([is_primary] ASC);


GO
CREATE NONCLUSTERED INDEX [besi_2]
    ON [dbo].[contacts]([contact_mechanism_id] ASC, [contact_mechanism_type] ASC);


GO
CREATE NONCLUSTERED INDEX [contacts_contact_record_idx]
    ON [dbo].[contacts]([contact_record_type] ASC, [contact_record_id] ASC);

