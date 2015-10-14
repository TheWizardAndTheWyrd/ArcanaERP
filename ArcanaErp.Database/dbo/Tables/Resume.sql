CREATE TABLE [dbo].[Resume] (
    [Id]            INT  IDENTITY (1, 1) NOT NULL,
    [PartyId]       INT  NULL,
    [FileContent]   TEXT NULL,
    [XmlResumeData] TEXT NULL,
	[CreatedAt]     DATETIME NOT NULL,
	[UpdatedAt]     DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

