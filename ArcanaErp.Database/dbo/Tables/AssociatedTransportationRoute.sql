CREATE TABLE [dbo].[AssociatedTransportationRoute] (
    [Id]                    INT           IDENTITY (1, 1) NOT NULL,
    [TransportationRouteId] INT           NULL,
    [AssociatedRecordId]    INT           NULL,
    [AssociatedRecordType]  VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AssociatedRouteRecordIdTypeIndex]
    ON [dbo].[AssociatedTransportationRoute]([AssociatedRecordId] ASC, [AssociatedRecordType] ASC);


GO
CREATE NONCLUSTERED INDEX [AssociatedRouteTransportationRouteIdIndex]
    ON [dbo].[AssociatedTransportationRoute]([TransportationRouteId] ASC);

