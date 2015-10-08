CREATE TABLE [dbo].[CommunicationEventPurpose] (
    [CommunicationEventId]           INT NULL,
    [CommunicationEventPuposeTypeId] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventPurposeOnCommunicationEventId]
    ON [dbo].[CommunicationEventPurpose]([CommunicationEventId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventPurposeOnCommunicationEventPuposeTypeId]
    ON [dbo].[CommunicationEventPurpose]([CommunicationEventPuposeTypeId] ASC);

