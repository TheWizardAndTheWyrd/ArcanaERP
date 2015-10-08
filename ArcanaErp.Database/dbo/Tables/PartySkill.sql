CREATE TABLE [dbo].[PartySkill] (
    [Id]          INT      IDENTITY (1, 1) NOT NULL,
    [PartyId]     INT      NULL,
    [SkillTypeId] INT      NULL,
    [CreatedAt]   DATETIME NOT NULL,
    [UpdatedAt]   DATETIME NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [PartySkillIndex]
    ON [dbo].[PartySkill]([PartyId] ASC, [SkillTypeId] ASC);

