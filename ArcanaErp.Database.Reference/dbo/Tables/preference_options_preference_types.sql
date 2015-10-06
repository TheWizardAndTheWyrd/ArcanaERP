CREATE TABLE [dbo].[preference_options_preference_types] (
    [preference_type_id]   INT NULL,
    [preference_option_id] INT NULL
);


GO
CREATE NONCLUSTERED INDEX [pref_opt_pref_type_pref_type_id_idx]
    ON [dbo].[preference_options_preference_types]([preference_type_id] ASC);


GO
CREATE NONCLUSTERED INDEX [pref_opt_pref_type_pref_opt_id_idx]
    ON [dbo].[preference_options_preference_types]([preference_option_id] ASC);

