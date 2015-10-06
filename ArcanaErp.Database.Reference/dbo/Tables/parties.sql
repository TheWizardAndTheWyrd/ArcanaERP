CREATE TABLE [dbo].[parties] (
    [id]                    INT           IDENTITY (1, 1) NOT NULL,
    [description]           VARCHAR (255) NULL,
    [business_party_id]     INT           NULL,
    [business_party_type]   VARCHAR (255) NULL,
    [list_view_image_id]    INT           NULL,
    [enterprise_identifier] VARCHAR (255) NULL,
    [created_at]            DATETIME      NOT NULL,
    [updated_at]            DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [besi_1]
    ON [dbo].[parties]([business_party_id] ASC, [business_party_type] ASC);

