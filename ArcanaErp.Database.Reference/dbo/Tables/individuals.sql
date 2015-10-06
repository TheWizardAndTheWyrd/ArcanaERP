CREATE TABLE [dbo].[individuals] (
    [id]                           INT            IDENTITY (1, 1) NOT NULL,
    [party_id]                     INT            NULL,
    [current_last_name]            VARCHAR (255)  NULL,
    [current_first_name]           VARCHAR (255)  NULL,
    [current_middle_name]          VARCHAR (255)  NULL,
    [current_personal_title]       VARCHAR (255)  NULL,
    [current_suffix]               VARCHAR (255)  NULL,
    [current_nickname]             VARCHAR (255)  NULL,
    [gender]                       VARCHAR (1)    NULL,
    [birth_date]                   DATE           NULL,
    [height]                       DECIMAL (5, 2) NULL,
    [weight]                       INT            NULL,
    [mothers_maiden_name]          VARCHAR (255)  NULL,
    [marital_status]               VARCHAR (1)    NULL,
    [social_security_number]       VARCHAR (255)  NULL,
    [current_passport_number]      INT            NULL,
    [current_passport_expire_date] DATE           NULL,
    [total_years_work_experience]  INT            NULL,
    [comments]                     VARCHAR (255)  NULL,
    [encrypted_ssn]                VARCHAR (255)  NULL,
    [temp_ssn]                     VARCHAR (255)  NULL,
    [salt]                         VARCHAR (255)  NULL,
    [ssn_last_four]                VARCHAR (255)  NULL,
    [created_at]                   DATETIME       NOT NULL,
    [updated_at]                   DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [index_individuals_on_party_id]
    ON [dbo].[individuals]([party_id] ASC);

