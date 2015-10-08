CREATE TABLE [dbo].[StatusApplication] (
    [Id]                          INT           IDENTITY (1, 1) NOT NULL,
    [TrackedStatusTypeId]         INT           NULL,
    [StatusApplicationRecordId]   INT           NULL,
    [StatusApplicationRecordType] VARCHAR (255) NULL,
    [FromDate]                    DATETIME      NULL,
    [thruDate]                    DATETIME      NULL,
    [CreatedAt]                   DATETIME      NOT NULL,
    [UpdatedAt]                   DATETIME      NOT NULL,
    [PartyId]                     INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [StatusApplicationRecordIndex]
    ON [dbo].[StatusApplication]([StatusApplicationRecordId] ASC, [StatusApplicationRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [TrackedStatusTypeIdIndex]
    ON [dbo].[StatusApplication]([TrackedStatusTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [FromDateIndex]
    ON [dbo].[StatusApplication]([FromDate] ASC);


GO
CREATE NONCLUSTERED INDEX [thruDateIndex]
    ON [dbo].[StatusApplication]([thruDate] ASC);


GO
CREATE NONCLUSTERED INDEX [StatusApplicationPartyIndex]
    ON [dbo].[StatusApplication]([PartyId] ASC);

