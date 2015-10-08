CREATE TABLE [dbo].[ContactPurposeContact] (
    [ContactId]        INT NULL,
    [ContactpurposeId] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [ContactPurposeContactIndex]
    ON [dbo].[ContactPurposeContact]([ContactId] ASC, [ContactpurposeId] ASC);

