CREATE TABLE [dbo].[CommunicationEvent] (
    [Id]                       INT           IDENTITY (1, 1) NOT NULL,
    [FromContactMechanismId]   INT           NULL,
    [FromContactMechanismType] VARCHAR (255) NULL,
    [ToContactMechanismId]     INT           NULL,
    [ToContactMechanismType]   VARCHAR (255) NULL,
    [RoleTypeIdFrom]           INT           NULL,
    [RoleTypeIdTo]             INT           NULL,
    [PartyIdFrom]              INT           NULL,
    [PartyIdTo]                INT           NULL,
    [ShortDescription]         VARCHAR (255) NULL,
    [StatusTypeId]             INT           NULL,
    [CaseId]                   INT           NULL,
    [DateTimeStarted]          DATETIME      NULL,
    [DateTimeEnded]            DATETIME      NULL,
    [Notes]                    VARCHAR (255) NULL,
    [ExternalIdentifier]       VARCHAR (255) NULL,
    [ExternalIdSource]         VARCHAR (255) NULL,
    [CreatedAt]                DATETIME      NOT NULL,
    [UpdatedAt]                DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventOnStatusTypeId]
    ON [dbo].[CommunicationEvent]([StatusTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventOnCaseId]
    ON [dbo].[CommunicationEvent]([CaseId] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventOnRoleTypeIdFrom]
    ON [dbo].[CommunicationEvent]([RoleTypeIdFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventOnRoleTypeIdTo]
    ON [dbo].[CommunicationEvent]([RoleTypeIdTo] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventOnPartyIdFrom]
    ON [dbo].[CommunicationEvent]([PartyIdFrom] ASC);


GO
CREATE NONCLUSTERED INDEX [IndexCommunicationEventOnPartyIdTo]
    ON [dbo].[CommunicationEvent]([PartyIdTo] ASC);


GO
CREATE NONCLUSTERED INDEX [ToContactMechanismIndex]
    ON [dbo].[CommunicationEvent]([ToContactMechanismId] ASC, [ToContactMechanismType] ASC);


GO
CREATE NONCLUSTERED INDEX [FromContactMechanismIndex]
    ON [dbo].[CommunicationEvent]([FromContactMechanismId] ASC, [FromContactMechanismType] ASC);

