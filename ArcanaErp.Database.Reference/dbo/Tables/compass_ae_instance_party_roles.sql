CREATE TABLE [dbo].[compass_ae_instance_party_roles] (
    [id]                     INT           IDENTITY (1, 1) NOT NULL,
    [description]            VARCHAR (255) NULL,
    [compass_ae_instance_id] INT           NULL,
    [party_id]               INT           NULL,
    [role_type_id]           INT           NULL,
    [created_at]             DATETIME      NOT NULL,
    [updated_at]             DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [compass_ae_instance_id_idx]
    ON [dbo].[compass_ae_instance_party_roles]([compass_ae_instance_id] ASC);


GO
CREATE NONCLUSTERED INDEX [party_id_idx]
    ON [dbo].[compass_ae_instance_party_roles]([party_id] ASC);


GO
CREATE NONCLUSTERED INDEX [role_type_id_idx]
    ON [dbo].[compass_ae_instance_party_roles]([role_type_id] ASC);

