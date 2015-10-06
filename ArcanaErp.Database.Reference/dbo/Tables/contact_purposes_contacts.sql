CREATE TABLE [dbo].[contact_purposes_contacts] (
    [contact_id]         INT NULL,
    [contact_purpose_id] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [contact_purposes_contacts_index]
    ON [dbo].[contact_purposes_contacts]([contact_id] ASC, [contact_purpose_id] ASC);

