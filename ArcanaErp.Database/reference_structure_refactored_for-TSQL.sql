CREATE TABLE "SchemaMigration" ("Version" VARCHAR(255) NOT NULL);
GO
CREATE UNIQUE INDEX "UniqueSchemaMigration" ON "SchemaMigration" ("Version"); 
GO
CREATE TABLE "ArcanaErpInstance" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Version" decimal(8,3), "Type" VARCHAR(255), "Schema" VARCHAR(255) DEFAULT 'public', "ParentId" INTEGER, "GuId" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IIdIndex" ON "ArcanaErpInstance" ("InternalIdentifier"); 
GO
CREATE INDEX "SchemaIndex" ON "ArcanaErpInstance" ("Schema"); 
GO
CREATE INDEX "TypeIndex" ON "ArcanaErpInstance" ("Type"); 
GO
CREATE INDEX "ParentIdIndex" ON "ArcanaErpInstance" ("ParentId"); 
GO
CREATE INDEX "GuIdIndex" ON "ArcanaErpInstance" ("GuId"); 
GO
CREATE TABLE "ArcanaErpInstancePartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "ArcanaErpInstanceId" INTEGER, "PartyId" INTEGER, "RoleTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ArcanaErpInstanceIdIndex" ON "ArcanaErpInstancePartyRole" ("ArcanaErpInstanceId"); 
GO
CREATE INDEX "PartyIdIndex" ON "ArcanaErpInstancePartyRole" ("PartyId"); 
GO
CREATE INDEX "RoleTypeIdIndex" ON "ArcanaErpInstancePartyRole" ("RoleTypeId"); 
GO
CREATE TABLE "Party" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "BusinessPartyId" INTEGER, "BusinessPartyType" VARCHAR(255), "ListViewImageId" INTEGER, "EnterpriseIdentifier" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "Besi1" ON "Party" ("BusinessPartyId", "BusinessPartyType"); 
GO
CREATE TABLE "PartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "PartyId" INTEGER, "RoleTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPartyRoleOnPartyId" ON "PartyRole" ("PartyId"); 
GO
CREATE INDEX "IndexPartyRoleOnRoleTypeId" ON "PartyRole" ("RoleTypeId"); 
GO
CREATE TABLE "RoleType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdSource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "RoleTypeIIdIndex" ON "RoleType" ("InternalIdentifier"); 
GO
CREATE INDEX "RoleTypeParentIdIndex" ON "RoleType" ("ParentId"); 
GO
CREATE INDEX "RoleTypeLeftValueIndex" ON "RoleType" ("LeftValue"); 
GO
CREATE INDEX "RoleTypeRightValueIndex" ON "RoleType" ("RightValue"); 
GO
CREATE TABLE "RelationshipType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "ValidFromRoleTypeId" INTEGER, "ValidToRoleTypeId" INTEGER, "Name" VARCHAR(255), "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexRelationshipTypeOnValidFromRoleTypeId" ON "RelationshipType" ("ValidFromRoleTypeId"); 
GO
CREATE INDEX "IndexRelationshipTypeOnValidToRoleTypeId" ON "RelationshipType" ("ValidToRoleTypeId"); 
GO
CREATE INDEX "RelationshipTypeParentIdIndex" ON "RelationshipType" ("ParentId"); 
GO
CREATE INDEX "RelationshipTypeInternalIdentifierIndex" ON "RelationshipType" ("InternalIdentifier"); 
GO
CREATE TABLE "PartyRelationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "PartyIdFrom" INTEGER, "PartyIdTo" INTEGER, "RoleTypeIdFrom" INTEGER, "RoleTypeIdTo" INTEGER, "StatusTypeId" INTEGER, "PriorityTypeId" INTEGER, "RelationshipTypeId" INTEGER, "FromDate" Date, "thruDate" Date, "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPartyRelationshipOnStatusTypeId" ON "PartyRelationship" ("StatusTypeId"); 
GO
CREATE INDEX "IndexPartyRelationshipOnPriorityTypeId" ON "PartyRelationship" ("PriorityTypeId"); 
GO
CREATE INDEX "IndexPartyRelationshipOnRelationshipTypeId" ON "PartyRelationship" ("RelationshipTypeId"); 
GO
CREATE TABLE "OrganizatiOn" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "TaxIdnumber" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Individual" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "CurrentLastName" VARCHAR(255), "CurrentFirstName" VARCHAR(255), "CurrentmIddleName" VARCHAR(255), "CurrentpersOnalTitle" VARCHAR(255), "Currentsuffix" VARCHAR(255), "CurrentnickName" VARCHAR(255), "gender" VARCHAR(1), "birthDate" Date, "Height" decimal(5,2), "weight" INTEGER, "mothersmaIdenName" VARCHAR(255), "maritalStatus" VARCHAR(1), "socialSecuritynumber" VARCHAR(255), "Currentpassportnumber" INTEGER, "CurrentpassportexpireDate" Date, "Totalyearsworkexperience" INTEGER, "Comments" VARCHAR(255), "enCryptedssn" VARCHAR(255), "tempssn" VARCHAR(255), "Salt" VARCHAR(255), "ssnLastfour" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexIndividualOnPartyId" ON "Individual" ("PartyId"); 
GO
CREATE TABLE "ContactType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexContactTypeOnParentId" ON "ContactType" ("ParentId"); 
GO
CREATE INDEX "IndexContactTypeOnLeftValue" ON "ContactType" ("LeftValue"); 
GO
CREATE INDEX "IndexContactTypeOnRightValue" ON "ContactType" ("RightValue"); 
GO
CREATE INDEX "ContactTypeInternalIdentifierIndex" ON "ContactType" ("InternalIdentifier"); 
GO
CREATE TABLE "ContactPurpose" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexContactPurposeOnParentId" ON "ContactPurpose" ("ParentId"); 
GO
CREATE TABLE "ContactPurposeContact" ("ContactId" INTEGER, "ContactpurposeId" INTEGER); 
GO
CREATE INDEX "ContactPurposeContactIndex" ON "ContactPurposeContact" ("ContactId", "ContactpurposeId"); 
GO
CREATE INDEX "ContactPurposeInternalIdentifierIndex" ON "ContactPurpose" ("InternalIdentifier"); 
GO
CREATE TABLE "PostalAddresses" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Addressline1" VARCHAR(255), "Addressline2" VARCHAR(255), "city" VARCHAR(255), "State" VARCHAR(255), "zip" VARCHAR(255), "Country" VARCHAR(255), "Description" VARCHAR(255), "GeoCountryId" INTEGER, "GeozOneId" INTEGER, "latitude" decimal(12,8), "lOngitude" decimal(12,8), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPostalAddressesOnGeoCountryId" ON "PostalAddresses" ("GeoCountryId"); 
GO
CREATE INDEX "IndexPostalAddressesOnGeozOneId" ON "PostalAddresses" ("GeozOneId"); 
GO
CREATE TABLE "EmailAddress" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "EmailAddress" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "PhoneNumber" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Phonenumber" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "Money" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "amount" decimal(8,2), "CurrencyId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexMoneyOnCurrencyId" ON "Money" ("CurrencyId"); 
GO
CREATE TABLE "Currency" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "definitiOn" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "numericcode" VARCHAR(255), "majorunitsymbol" VARCHAR(255), "minorunitsymbol" VARCHAR(255), "ratioofminorunitTomajorunit" VARCHAR(255), "postfixlabel" VARCHAR(255), "introductiOnDate" DATETIME, "expiratiOnDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexCurrencyOnInternalIdentifier" ON "Currency" ("InternalIdentifier"); 
GO
CREATE TABLE "Category" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "FromDate" DATETIME, "ToDate" DATETIME, "InternalIdentifier" VARCHAR(255), "CategoryRecordId" INTEGER, "CategoryRecordType" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CategoryPolymorphic" ON "Category" ("CategoryRecordId", "CategoryRecordType"); 
GO
CREATE INDEX "CategoryInternalIdentifierIndex" ON "Category" ("InternalIdentifier"); 
GO
CREATE INDEX "CategoryParentIdIndex" ON "Category" ("ParentId"); 
GO
CREATE INDEX "CategoryLeftValueIndex" ON "Category" ("LeftValue"); 
GO
CREATE INDEX "CategoryRightValueIndex" ON "Category" ("RightValue"); 
GO
CREATE TABLE "CategoryClassification" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CategoryId" INTEGER, "ClassificationType" VARCHAR(255), "ClassificationId" INTEGER, "FromDate" DATETIME, "ToDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ClassificationPolymorphic" ON "CategoryClassification" ("ClassificationId", "ClassificationType"); 
GO
CREATE INDEX "CategoryClassificationCategoryIdIndex" ON "CategoryClassification" ("CategoryId"); 
GO
CREATE TABLE "DescriptiveAsset" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ViewTypeId" INTEGER, "InternalIdentifier" VARCHAR(255), "Description" text, "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "DescribedRecordId" INTEGER, "DescribedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexDescriptiveAssetOnViewTypeId" ON "DescriptiveAsset" ("ViewTypeId"); 
GO
CREATE INDEX "DescribedRecordIndex" ON "DescriptiveAsset" ("DescribedRecordId", "DescribedRecordType"); 
GO
CREATE INDEX "DescriptiveAssetInternalIdentifierIndex" ON "DescriptiveAsset" ("InternalIdentifier"); 
GO
CREATE TABLE "ViewType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexViewTypeOnLeftValue" ON "ViewType" ("LeftValue"); 
GO
CREATE INDEX "IndexViewTypeOnRightValue" ON "ViewType" ("RightValue"); 
GO
CREATE INDEX "IndexViewTypeOnParentId" ON "ViewType" ("ParentId"); 
GO
CREATE INDEX "ViewTypeInternalIdentifierIndex" ON "ViewType" ("InternalIdentifier"); 
GO
CREATE TABLE "GeoCountry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "IsoCode2" VARCHAR(255), "isocode3" VARCHAR(255), "display" BIT DEFAULT 't', "ExternalId" INTEGER, "CreatedAt" DATETIME); 
GO
CREATE INDEX "IndexGeoCountryOnName" ON "GeoCountry" ("Name"); 
GO
CREATE INDEX "IndexGeoCountryOnIsoCode2" ON "GeoCountry" ("IsoCode2"); 
GO
CREATE TABLE "GeoZone" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "GeoCountryId" INTEGER, "ZoneCode" VARCHAR(255) DEFAULT 2, "ZoneName" VARCHAR(255), "CreatedAt" DATETIME); 
GO
CREATE INDEX "IndexGeoZoneOnGeoCountryId" ON "GeoZone" ("GeoCountryId"); 
GO
CREATE INDEX "IndexGeoZoneOnZoneName" ON "GeoZone" ("ZoneName"); 
GO
CREATE INDEX "IndexGeoZoneOnZoneCode" ON "GeoZone" ("ZoneCode"); 
GO
CREATE TABLE "Note" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CreatedById" INTEGER, "Content" text, "NotedRecordId" INTEGER, "NotedRecordType" VARCHAR(255), "NoteTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexNoteOnNotedRecordIdandNotedRecordType" ON "Note" ("NotedRecordId", "NotedRecordType"); 
GO
CREATE INDEX "IndexNoteOnNoteTypeId" ON "Note" ("NoteTypeId"); 
GO
CREATE INDEX "IndexNoteOnCreatedById" ON "Note" ("CreatedById"); 
GO
CREATE TABLE "NoteType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "NoteTypeRecordId" INTEGER, "NoteTypeRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "NoteTypeRecordIndex" ON "NoteType" ("NoteTypeRecordId", "NoteTypeRecordType"); 
GO
CREATE INDEX "NoteTypeParentIdIndex" ON "NoteType" ("ParentId"); 
GO
CREATE INDEX "NoteTypeInternalIdentifierIndex" ON "NoteType" ("InternalIdentifier"); 
GO
CREATE TABLE "ValidNoteType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ValidNoteTypeRecordId" INTEGER, "ValidNoteTypeRecordType" VARCHAR(255), "NoteTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ValidNoteTypeRecordIndex" ON "ValidNoteType" ("ValidNoteTypeRecordId", "ValidNoteTypeRecordType"); 
GO
CREATE INDEX "IndexValidNoteTypeOnNoteTypeId" ON "ValidNoteType" ("NoteTypeId"); 
GO
CREATE TABLE "StatusApplication" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "TrackedStatusTypeId" INTEGER, "StatusApplicationRecordId" INTEGER, "StatusApplicationRecordType" VARCHAR(255), "FromDate" DATETIME, "thruDate" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "PartyId" INTEGER); 
GO
CREATE INDEX "StatusApplicationRecordIndex" ON "StatusApplication" ("StatusApplicationRecordId", "StatusApplicationRecordType"); 
GO
CREATE INDEX "TrackedStatusTypeIdIndex" ON "StatusApplication" ("TrackedStatusTypeId"); 
GO
CREATE INDEX "FromDateIndex" ON "StatusApplication" ("FromDate"); 
GO
CREATE INDEX "thruDateIndex" ON "StatusApplication" ("thruDate"); 
GO
CREATE TABLE "TrackedStatusType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "TrackedStatusTypeIIdIndex" ON "TrackedStatusType" ("InternalIdentifier"); 
GO
CREATE INDEX "IndexTrackedStatusTypeOnLeftValue" ON "TrackedStatusType" ("LeftValue"); 
GO
CREATE INDEX "IndexTrackedStatusTypeOnRightValue" ON "TrackedStatusType" ("RightValue"); 
GO
CREATE INDEX "IndexTrackedStatusTypeOnParentId" ON "TrackedStatusType" ("ParentId"); 
GO
CREATE TABLE "Facility" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "FacilityTypeId" INTEGER, "PostalAddressId" INTEGER, "FacilityRecordId" INTEGER, "FacilityRecordType" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FacilityRecordIndex" ON "Facility" ("FacilityRecordId", "FacilityRecordType"); 
GO
CREATE INDEX "FacilityPostalAddressIndex" ON "Facility" ("PostalAddressId"); 
GO
CREATE TABLE "FacilityType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdentifersource" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FacilityTypenestedsetIndex" ON "FacilityType" ("ParentId", "LeftValue", "RightValue"); 
GO
CREATE TABLE "FixedAsset" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FixedAssetTypeId" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "FixedAssetRecordType" VARCHAR(255), "FixedAssetRecordId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FixedAssetRecordIndex" ON "FixedAsset" ("FixedAssetRecordType", "FixedAssetRecordId"); 
GO
CREATE INDEX "FixedAssetFixedAssetTypeIndex" ON "FixedAsset" ("FixedAssetTypeId"); 
GO
CREATE TABLE "FixedAssetType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "Description" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FixedAssetTypenestedsetIndex" ON "FixedAssetType" ("ParentId", "LeftValue", "RightValue"); 
GO
CREATE TABLE "PartyFixedAssetAssignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "FixedAssetId" INTEGER, "AssignedFrom" DATETIME, "Assignedthru" DATETIME, "allocatedcostMoneyId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "PartyFixedAssetAssignIndex" ON "PartyFixedAssetAssignment" ("PartyId", "FixedAssetId"); 
GO
CREATE TABLE "FixedAssetPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "FixedAssetId" INTEGER, "RoleTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "UnitOfMeasurement" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "Domain" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Comments" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexUnitOfMeasurementOnLeftValue" ON "UnitOfMeasurement" ("LeftValue"); 
GO
CREATE INDEX "IndexUnitOfMeasurementOnRightValue" ON "UnitOfMeasurement" ("RightValue"); 
GO
CREATE INDEX "IndexUnitOfMeasurementOnParentId" ON "UnitOfMeasurement" ("ParentId"); 
GO
CREATE TABLE "GeneratedItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "GeneratedById" INTEGER, "GeneratedByType" VARCHAR(255), "GeneratedRecordId" INTEGER, "GeneratedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "GeneratedByIndex" ON "GeneratedItems" ("GeneratedByType", "GeneratedById"); 
GO
CREATE INDEX "GeneratedRecordIndex" ON "GeneratedItems" ("GeneratedRecordType", "GeneratedRecordId"); 
GO
CREATE TABLE "EntityPartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PartyId" INTEGER, "RoleTypeId" INTEGER, "EntityRecordId" INTEGER, "EntityRecordType" VARCHAR(255)); 
GO
CREATE INDEX "IndexEntityPartyRoleOnPartyId" ON "EntityPartyRole" ("PartyId"); 
GO
CREATE INDEX "IndexEntityPartyRoleOnRoleTypeId" ON "EntityPartyRole" ("RoleTypeId"); 
GO
CREATE INDEX "EntityPartyRoleEntityRecordIndex" ON "EntityPartyRole" ("EntityRecordId", "EntityRecordType"); 
GO
CREATE TABLE "Contact" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ContactMechanismId" INTEGER, "ContactMechanismType" VARCHAR(255), "IsPrimary" BIT, "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "ContactRecordType" VARCHAR(255), "ContactRecordId" INTEGER); 
GO
CREATE INDEX "IndexContactOnIsPrimary" ON "Contact" ("IsPrimary"); 
GO
CREATE INDEX "Besi2" ON "Contact" ("ContactMechanismId", "ContactMechanismType"); 
GO
CREATE INDEX "ContactContactRecordIndex" ON "Contact" ("ContactRecordType", "ContactRecordId"); 
GO
CREATE INDEX "StatusApplicationPartyIndex" ON "StatusApplication" ("PartyId"); 
GO
CREATE TABLE "Users" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "UserName" VARCHAR(255), "Email" VARCHAR(255), "PartyId" INTEGER, "Type" VARCHAR(255), "Salt" VARCHAR(255), "CryptedPassword" VARCHAR(255), "LastLoginAt" DATETIME, "LastLogoutAt" DATETIME, "LastActivityAt" DATETIME, "FailedLoginsCount" INTEGER DEFAULT 0, "LockExpiresAt" DATETIME, "RememberMeToken" VARCHAR(255), "RememberMeTokenExpiresAt" DATETIME, "ResetPasswordToken" VARCHAR(255), "ResetPasswordTokenExpiresAt" DATETIME, "ResetPasswordEmailsentat" DATETIME, "ActivationState" VARCHAR(255), "ActivationToken" VARCHAR(255), "ActivationTokenExpiresAt" DATETIME, "SecurityQuestion1" VARCHAR(255), "SecurityAnswer1" VARCHAR(255), "SecurityQuestion2" VARCHAR(255), "SecurityAnswer2" VARCHAR(255), "AuthToken" VARCHAR(255), "AuthTokenExpiresAt" DATETIME, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "UnlockToken" VARCHAR(255) DEFAULT NULL, "LastloginFromIpAddress" VARCHAR(255) DEFAULT NULL); 
GO
CREATE UNIQUE INDEX "IndexUsersOnEmail" ON "Users" ("Email"); 
GO
CREATE UNIQUE INDEX "IndexUsersOnUserName" ON "Users" ("UserName"); 
GO
CREATE INDEX "ActivityIndex" ON "Users" ("LastLogoutAt", "LastActivityAt"); 
GO
CREATE INDEX "IndexUsersOnRememberMeToken" ON "Users" ("RememberMeToken"); 
GO
CREATE INDEX "IndexUsersOnResetPasswordToken" ON "Users" ("ResetPasswordToken"); 
GO
CREATE INDEX "IndexUsersOnActivationToken" ON "Users" ("ActivationToken"); 
GO
CREATE INDEX "UsersPartyIdIndex" ON "Users" ("PartyId"); 
GO
CREATE TABLE "Groups" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE TABLE "SecurityRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "LeftValue" INTEGER, "RightValue" INTEGER, "ParentId" INTEGER); 
GO
CREATE INDEX "SecurityRoleInternalIdentifierIndex" ON "SecurityRole" ("InternalIdentifier"); 
GO
CREATE TABLE "Sessions" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "sessiOnId" VARCHAR(255) NOT NULL, "Data" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexSessionsOnsessiOnId" ON "Sessions" ("sessiOnId"); 
GO
CREATE INDEX "IndexSessionsOnUpdatedAt" ON "Sessions" ("UpdatedAt"); 
GO
CREATE TABLE "AuditLog" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Application" VARCHAR(255), "Description" VARCHAR(255), "PartyId" INTEGER, "additiOnalinfo" text, "AuditLogTypeId" INTEGER, "EventRecordId" INTEGER, "EventRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexAuditLogOnPartyId" ON "AuditLog" ("PartyId"); 
GO
CREATE INDEX "EventRecordIndex" ON "AuditLog" ("EventRecordId", "EventRecordType"); 
GO
CREATE INDEX "AuditLogAuditLogTypeIdIndex" ON "AuditLog" ("AuditLogTypeId"); 
GO
CREATE TABLE "AuditLogType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "ErrorCode" VARCHAR(255), "Comments" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "AuditLogTypeInternalIdentifierIndex" ON "AuditLogType" ("InternalIdentifier"); 
GO
CREATE INDEX "AuditLogTypeParentIdIndex" ON "AuditLogType" ("ParentId"); 
GO
CREATE TABLE "AuditLogItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "AuditLogId" INTEGER, "AuditLogItemTypeId" INTEGER, "AuditLogItemValue" VARCHAR(255), "AuditLogItemoldValue" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "AuditLogItemsAuditLogIdIndex" ON "AuditLogItems" ("AuditLogId"); 
GO
CREATE INDEX "AuditLogItemsAuditLogItemTypeIdIndex" ON "AuditLogItems" ("AuditLogItemTypeId"); 
GO
CREATE TABLE "AuditLogItemType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "ExternalIdentifier" VARCHAR(255), "ExternalIdsource" VARCHAR(255), "Description" VARCHAR(255), "Comments" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "AuditLogItemTypeInternalIdentifierIndex" ON "AuditLogItemType" ("InternalIdentifier"); 
GO
CREATE INDEX "AuditLogItemTypeParentIdIndex" ON "AuditLogItemType" ("ParentId"); 
GO
CREATE INDEX "AuditLogItemTypeLeftValueIndex" ON "AuditLogItemType" ("LeftValue"); 
GO
CREATE INDEX "AuditLogItemTypeRightValueIndex" ON "AuditLogItemType" ("RightValue"); 
GO
CREATE TABLE "FileAsset" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "Name" VARCHAR(255), "Directory" VARCHAR(255), "DataFileName" VARCHAR(255), "DataContentType" VARCHAR(255), "DataFileSize" INTEGER, "DataUpdatedAt" DATETIME, "Width" VARCHAR(255), "Height" VARCHAR(255), "ScopedBy" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexFileAssetOnType" ON "FileAsset" ("Type"); 
GO
CREATE INDEX "IndexFileAssetOnName" ON "FileAsset" ("Name"); 
GO
CREATE INDEX "IndexFileAssetOnDirectory" ON "FileAsset" ("Directory"); 
GO
CREATE TABLE "FileAssetHolder" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "FileAssetId" INTEGER, "FileAssetHolderId" INTEGER, "FileAssetHolderType" VARCHAR(255), "ScopedBy" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "FileAssetHolderFileIdIndex" ON "FileAssetHolder" ("FileAssetId"); 
GO
CREATE INDEX "FileAssetHolderIndex" ON "FileAssetHolder" ("FileAssetHolderId", "FileAssetHolderType"); 
GO
CREATE TABLE "DelayedJob" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Priority" INTEGER DEFAULT 0, "Attempts" INTEGER DEFAULT 0, "handler" text, "Lasterror" text, "RunAt" DATETIME, "LockedAt" DATETIME, "FailedAt" DATETIME, "LockedBy" VARCHAR(255), "Queue" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DelayedJobPriority" ON "DelayedJob" ("Priority", "RunAt"); 
GO
CREATE TABLE "CapableModels" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CapableModelRecordId" INTEGER, "CapableModelRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CapableModelRecordIndex" ON "CapableModels" ("CapableModelRecordId", "CapableModelRecordType"); 
GO
CREATE TABLE "CapabilityType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CapabilityTypeInternalIdentifierIndex" ON "CapabilityType" ("InternalIdentifier"); 
GO
CREATE TABLE "Capability" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "CapabilityTypeId" INTEGER, "CapabilityresourceId" INTEGER, "CapabilityresourceType" VARCHAR(255), "ScopeTypeId" INTEGER, "ScopeQueryText" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexCapabilityOnCapabilityTypeId" ON "Capability" ("CapabilityTypeId"); 
GO
CREATE INDEX "IndexCapabilityOnScopeTypeId" ON "Capability" ("ScopeTypeId"); 
GO
CREATE INDEX "CapabilityresourceIndex" ON "Capability" ("CapabilityresourceId", "CapabilityresourceType"); 
GO
CREATE TABLE "CapabilityAccessor" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CapabilityaccessorRecordId" INTEGER, "CapabilityaccessorRecordType" VARCHAR(255), "CapabilityId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexCapabilityAccessorOnCapabilityId" ON "CapabilityAccessor" ("CapabilityId"); 
GO
CREATE INDEX "CapabilityaccessorRecordIndex" ON "CapabilityAccessor" ("CapabilityaccessorRecordId", "CapabilityaccessorRecordType"); 
GO
CREATE TABLE "ScopeType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexScopeTypeOnInternalIdentifier" ON "ScopeType" ("InternalIdentifier"); 
GO
CREATE TABLE "PartySecurityRole" ("PartyId" INTEGER, "SecurityRoleId" INTEGER); 
GO
CREATE INDEX "IndexPartySecurityRoleOnPartyId" ON "PartySecurityRole" ("PartyId"); 
GO
CREATE INDEX "IndexPartySecurityRoleOnSecurityRoleId" ON "PartySecurityRole" ("SecurityRoleId"); 
GO
CREATE TABLE "Notification" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "CreatedById" INTEGER, "Message" text, "NotificationTypeId" INTEGER, "CurrentState" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL, "cusTomfields" text); 
GO
CREATE INDEX "IndexNotificationOnNotificationTypeId" ON "Notification" ("NotificationTypeId"); 
GO
CREATE INDEX "IndexNotificationOnCreatedById" ON "Notification" ("CreatedById"); 
GO
CREATE INDEX "IndexNotificationOnType" ON "Notification" ("Type"); 
GO
CREATE TABLE "NotificationType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexNotificationTypeOnInternalIdentifier" ON "NotificationType" ("InternalIdentifier"); 
GO
CREATE INDEX "IndexSecurityRoleOnParentId" ON "SecurityRole" ("ParentId"); 
GO
CREATE INDEX "IndexSecurityRoleOnLeftValue" ON "SecurityRole" ("LeftValue"); 
GO
CREATE INDEX "IndexSecurityRoleOnRightValue" ON "SecurityRole" ("RightValue"); 
GO
CREATE TABLE "Preference" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PreferenceoptiOnId" INTEGER, "PreferenceTypeId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPreferenceOnPreferenceoptiOnId" ON "Preference" ("PreferenceoptiOnId"); 
GO
CREATE INDEX "IndexPreferenceOnPreferenceTypeId" ON "Preference" ("PreferenceTypeId"); 
GO
CREATE TABLE "PreferenceType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "DefaultPreferenceOptionId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPreferenceTypeOnDefaultPreferenceOptionId" ON "PreferenceType" ("DefaultPreferenceOptionId"); 
GO
CREATE INDEX "PreferenceTypeInternalIdentifierIndex" ON "PreferenceType" ("InternalIdentifier"); 
GO
CREATE TABLE "PreferenceOption" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Value" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "PreferenceOptionInternalIdentifierIndex" ON "PreferenceOption" ("InternalIdentifier"); 
GO
CREATE TABLE "PreferenceOptionPreferenceType" ("PreferenceTypeId" INTEGER, "PreferenceoptiOnId" INTEGER); 
GO
CREATE INDEX "prefoptprefTypeprefTypeIdIndex" ON "PreferenceOptionPreferenceType" ("PreferenceTypeId"); 
GO
CREATE INDEX "prefoptprefTypeprefoptIdIndex" ON "PreferenceOptionPreferenceType" ("PreferenceoptiOnId"); 
GO
CREATE TABLE "ValidPreferenceType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PreferenceTypeId" INTEGER, "PreferencedRecordId" INTEGER, "PreferencedRecordType" VARCHAR(255)); 
GO
CREATE INDEX "ValidPreferenceTypePreferenceTypeIdIndex" ON "ValidPreferenceType" ("PreferenceTypeId"); 
GO
CREATE INDEX "ValidPreferenceTypePreferencedRecordIdIndex" ON "ValidPreferenceType" ("PreferencedRecordId"); 
GO
CREATE TABLE "UsersPreference" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "UsersId" INTEGER, "PreferenceId" INTEGER, "PreferencedRecordId" INTEGER, "PreferencedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexUsersPreferenceOnUsersId" ON "UsersPreference" ("UsersId"); 
GO
CREATE INDEX "IndexUsersPreferenceOnPreferenceId" ON "UsersPreference" ("PreferenceId"); 
GO
CREATE INDEX "IndexUsersPreferenceOnPreferencedRecordId" ON "UsersPreference" ("PreferencedRecordId"); 
GO
CREATE INDEX "IndexUsersPreferenceOnPreferencedRecordType" ON "UsersPreference" ("PreferencedRecordType"); 
GO
CREATE TABLE "Application" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "Icon" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Type" VARCHAR(255), "CanDelete" BIT DEFAULT 't', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ApplicationInternalIdentifierIndex" ON "Application" ("InternalIdentifier"); 
GO
CREATE TABLE "ApplicationUsers" ("ApplicationId" INTEGER, "UsersId" INTEGER); 
GO
CREATE INDEX "AppUsersAppIndex" ON "ApplicationUsers" ("ApplicationId"); 
GO
CREATE INDEX "AppUsersUsersIndex" ON "ApplicationUsers" ("UsersId"); 
GO
CREATE TABLE "TreeMenuNodeDef" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "NodeType" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "MenuShortName" VARCHAR(255), "MenuDescription" VARCHAR(255), "text" VARCHAR(255), "IconUrl" VARCHAR(255), "targetUrl" VARCHAR(255), "resourceclass" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexTreeMenuNodeDefOnParentId" ON "TreeMenuNodeDef" ("ParentId"); 
GO
CREATE TABLE "Configuration" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Active" BIT, "isTempateText" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexConfigurationOnisTempateText" ON "Configuration" ("isTempateText"); 
GO
CREATE INDEX "ConfigurationInternalIdentifierIndex" ON "Configuration" ("InternalIdentifier"); 
GO
CREATE TABLE "ValidConfiguration" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ConfiguredItemId" INTEGER, "ConfiguredItemType" VARCHAR(255), "ConfigurationId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ConfiguredItempolyIndex" ON "ValidConfiguration" ("ConfiguredItemId", "ConfiguredItemType"); 
GO
CREATE INDEX "IndexValidConfigurationOnConfigurationId" ON "ValidConfiguration" ("ConfigurationId"); 
GO
CREATE TABLE "ConfigurationItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ConfigurationId" INTEGER, "ConfigurationItemTypeId" INTEGER, "ConfigurationoptiOnId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexConfigurationItemsOnConfigurationId" ON "ConfigurationItems" ("ConfigurationId"); 
GO
CREATE INDEX "IndexConfigurationItemsOnConfigurationItemTypeId" ON "ConfigurationItems" ("ConfigurationItemTypeId"); 
GO
CREATE INDEX "IndexConfigurationItemsOnConfigurationoptiOnId" ON "ConfigurationItems" ("ConfigurationoptiOnId"); 
GO
CREATE TABLE "ConfigurationItemType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "precedence" INTEGER DEFAULT 0, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "AllowUserDefinedOption" BIT DEFAULT 'f', "IsMultiOptional" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ConfigurationItemTypeParentIdIndex" ON "ConfigurationItemType" ("ParentId"); 
GO
CREATE INDEX "ConfigurationItemTypeLeftValueIndex" ON "ConfigurationItemType" ("LeftValue"); 
GO
CREATE INDEX "ConfigurationItemTypeRightValueIndex" ON "ConfigurationItemType" ("RightValue"); 
GO
CREATE INDEX "ConfigurationItemTypeInternalIdentifierIndex" ON "ConfigurationItemType" ("InternalIdentifier"); 
GO
CREATE INDEX "ConfigItemTypeprecedenceIndex" ON "ConfigurationItemType" ("precedence"); 
GO
CREATE TABLE "ConfigurationItemTypeConfiguration" ("ConfigurationItemTypeId" INTEGER, "ConfigurationId" INTEGER); 
GO
CREATE INDEX "ConfConfTypeIdItemIndex" ON "ConfigurationItemTypeConfiguration" ("ConfigurationItemTypeId"); 
GO
CREATE INDEX "ConfIdIndex" ON "ConfigurationItemTypeConfiguration" ("ConfigurationId"); 
GO
CREATE UNIQUE INDEX "ConfConfigTypeuniqIndex" ON "ConfigurationItemTypeConfiguration" ("ConfigurationItemTypeId", "ConfigurationId"); 
GO
CREATE TABLE "ConfigurationOption" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Value" VARCHAR(255), "Comment" text, "Usersdefined" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexConfigurationOptionOnValue" ON "ConfigurationOption" ("Value"); 
GO
CREATE INDEX "IndexConfigurationOptionOnInternalIdentifier" ON "ConfigurationOption" ("InternalIdentifier"); 
GO
CREATE INDEX "IndexConfigurationOptionOnUsersdefined" ON "ConfigurationOption" ("Usersdefined"); 
GO
CREATE TABLE "ConfigurationItemTypeConfigurationOption" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ConfigurationItemTypeId" INTEGER, "ConfigurationoptiOnId" INTEGER, "isdefault" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ConfItemTypeConfoptIdItemIndex" ON "ConfigurationItemTypeConfigurationOption" ("ConfigurationItemTypeId"); 
GO
CREATE INDEX "ConfItemTypeConfoptIdoptIndex" ON "ConfigurationItemTypeConfigurationOption" ("ConfigurationoptiOnId"); 
GO
CREATE TABLE "ConfigurationItemsConfigurationOption" ("ConfigurationItemId" INTEGER, "ConfigurationoptiOnId" INTEGER); 
GO
CREATE INDEX "ConfItemConfoptIdItemIndex" ON "ConfigurationItemsConfigurationOption" ("ConfigurationItemId"); 
GO
CREATE INDEX "ConfItemConfoptIdoptIndex" ON "ConfigurationItemsConfigurationOption" ("ConfigurationoptiOnId"); 
GO
CREATE TABLE "JobTracker" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "JobName" VARCHAR(255), "JobClass" VARCHAR(255), "RunTime" VARCHAR(255), "LastRunAt" DATETIME, "nextRunAt" DATETIME); 
GO
CREATE TABLE "WebSites" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "Title" VARCHAR(255), "SubTitle" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Publishing" BIT DEFAULT 'f', "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "WebSitesInternalIdentifierIndex" ON "WebSites" ("InternalIdentifier"); 
GO
CREATE TABLE "WebSiteHost" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Host" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteHostOnWebSiteId" ON "WebSiteHost" ("WebSiteId"); 
GO
CREATE TABLE "WebSiteInquiry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "FirstName" VARCHAR(255), "LastName" VARCHAR(255), "Email" VARCHAR(255), "Message" text, "CreatedById" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteInquiryOnWebSiteId" ON "WebSiteInquiry" ("WebSiteId"); 
GO
CREATE INDEX "InquiryCreatedByIndex" ON "WebSiteInquiry" ("CreatedById"); 
GO
CREATE TABLE "WebSiteSection" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Title" VARCHAR(255), "Type" VARCHAR(255), "WebSiteId" INTEGER, "Path" VARCHAR(255), "PermaLink" VARCHAR(255), "Layout" text, "InMenu" BIT, "Position" INTEGER DEFAULT 0, "UseMarkDown" BIT, "InternalIdentifier" VARCHAR(255), "Version" INTEGER, "renderbaseLayout" BIT DEFAULT 't', "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteSectionOnPermaLink" ON "WebSiteSection" ("PermaLink"); 
GO
CREATE INDEX "IndexWebSiteSectionOnWebSiteId" ON "WebSiteSection" ("WebSiteId"); 
GO
CREATE INDEX "IndexWebSiteSectionOnPosition" ON "WebSiteSection" ("Position"); 
GO
CREATE INDEX "IndexWebSiteSectionOnParentId" ON "WebSiteSection" ("ParentId"); 
GO
CREATE INDEX "IndexWebSiteSectionOnLeftValue" ON "WebSiteSection" ("LeftValue"); 
GO
CREATE INDEX "IndexWebSiteSectionOnRightValue" ON "WebSiteSection" ("RightValue"); 
GO
CREATE INDEX "IndexWebSiteSectionOnVersion" ON "WebSiteSection" ("Version"); 
GO
CREATE INDEX "SectionIdIndex" ON "WebSiteSection" ("InternalIdentifier"); 
GO
CREATE TABLE "WebSiteSectionVersions" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteSectionId" INTEGER, "Version" INTEGER, "Title" VARCHAR(255) DEFAULT NULL, "WebSiteId" INTEGER DEFAULT NULL, "Path" VARCHAR(255) DEFAULT NULL, "PermaLink" VARCHAR(255) DEFAULT NULL, "Layout" text DEFAULT NULL, "InMenu" BIT DEFAULT NULL, "Position" INTEGER DEFAULT 0, "UseMarkDown" BIT DEFAULT NULL, "InternalIdentifier" VARCHAR(255) DEFAULT NULL, "renderbaseLayout" BIT DEFAULT 't', "CreatedAt" DATETIME DEFAULT NULL, "UpdatedAt" DATETIME DEFAULT NULL, "VersionedType" VARCHAR(255) DEFAULT NULL); 
GO
CREATE INDEX "IndexWebSiteSectionVersionsOnWebSiteSectionId" ON "WebSiteSectionVersions" ("WebSiteSectionId"); 
GO
CREATE INDEX "WebSiteSectionVersionsWebSiteIdIndex" ON "WebSiteSectionVersions" ("WebSiteId"); 
GO
CREATE INDEX "WebSiteSectionVersionsInternalIdentifierIndex" ON "WebSiteSectionVersions" ("InternalIdentifier"); 
GO
CREATE TABLE "Content" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Type" VARCHAR(255), "Title" VARCHAR(255), "PermaLink" VARCHAR(255), "ExcerptHtml" text, "BodyHtml" text, "CreatedById" INTEGER, "UpdatedById" INTEGER, "InternalIdentifier" VARCHAR(255), "displayTitle" BIT, "Version" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexContentOnType" ON "Content" ("Type"); 
GO
CREATE INDEX "IndexContentOnCreatedById" ON "Content" ("CreatedById"); 
GO
CREATE INDEX "IndexContentOnUpdatedById" ON "Content" ("UpdatedById"); 
GO
CREATE INDEX "IndexContentOnPermaLink" ON "Content" ("PermaLink"); 
GO
CREATE INDEX "IndexContentOnVersion" ON "Content" ("Version"); 
GO
CREATE INDEX "ContentIIdIndex" ON "Content" ("InternalIdentifier"); 
GO
CREATE TABLE "ContentVersions" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ContentId" INTEGER, "Version" INTEGER, "Title" VARCHAR(255) DEFAULT NULL, "PermaLink" VARCHAR(255) DEFAULT NULL, "ExcerptHtml" text DEFAULT NULL, "BodyHtml" text DEFAULT NULL, "CreatedById" INTEGER DEFAULT NULL, "UpdatedById" INTEGER DEFAULT NULL, "InternalIdentifier" VARCHAR(255) DEFAULT NULL, "displayTitle" BIT DEFAULT NULL, "CreatedAt" DATETIME DEFAULT NULL, "UpdatedAt" DATETIME DEFAULT NULL, "VersionedType" VARCHAR(255) DEFAULT NULL); 
GO
CREATE INDEX "IndexContentVersionsOnContentId" ON "ContentVersions" ("ContentId"); 
GO
CREATE INDEX "ContentVersionsCreatedByIdIndex" ON "ContentVersions" ("CreatedById"); 
GO
CREATE INDEX "ContentVersionsUpdatedByIdIndex" ON "ContentVersions" ("UpdatedById"); 
GO
CREATE INDEX "ContentVersionsInternalIdentifierIndex" ON "ContentVersions" ("InternalIdentifier"); 
GO
CREATE TABLE "WebSiteSectionContent" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteSectionId" INTEGER, "ContentId" INTEGER, "Contentarea" VARCHAR(255), "Position" INTEGER DEFAULT 0, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnWebSiteSectionId" ON "WebSiteSectionContent" ("WebSiteSectionId"); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnContentId" ON "WebSiteSectionContent" ("ContentId"); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnPosition" ON "WebSiteSectionContent" ("Position"); 
GO
CREATE INDEX "IndexWebSiteSectionContentOnContentarea" ON "WebSiteSectionContent" ("Contentarea"); 
GO
CREATE TABLE "Theme" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Name" VARCHAR(255), "themeId" VARCHAR(255), "Author" VARCHAR(255), "Version" INTEGER, "HomePage" VARCHAR(255), "Summary" text, "Active" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexThemeOnWebSiteId" ON "Theme" ("WebSiteId"); 
GO
CREATE INDEX "IndexThemeOnActive" ON "Theme" ("Active"); 
GO
CREATE TABLE "PublishedWebSites" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Comment" text, "Version" decimal(18,6), "Active" BIT, "PublishedById" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexPublishedWebSitesOnWebSiteId" ON "PublishedWebSites" ("WebSiteId"); 
GO
CREATE INDEX "IndexPublishedWebSitesOnVersion" ON "PublishedWebSites" ("Version"); 
GO
CREATE INDEX "IndexPublishedWebSitesOnActive" ON "PublishedWebSites" ("Active"); 
GO
CREATE INDEX "IndexPublishedWebSitesOnPublishedById" ON "PublishedWebSites" ("PublishedById"); 
GO
CREATE TABLE "Publishedelements" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "PublishedWebSiteId" INTEGER, "PublishedelementRecordId" INTEGER, "PublishedelementRecordType" VARCHAR(255), "Version" INTEGER, "PublishedById" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "PublishedelmIndex" ON "Publishedelements" ("PublishedelementRecordId", "PublishedelementRecordType"); 
GO
CREATE INDEX "IndexPublishedelementsOnPublishedWebSiteId" ON "Publishedelements" ("PublishedWebSiteId"); 
GO
CREATE INDEX "IndexPublishedelementsOnVersion" ON "Publishedelements" ("Version"); 
GO
CREATE INDEX "IndexPublishedelementsOnPublishedById" ON "Publishedelements" ("PublishedById"); 
GO
CREATE TABLE "Comments" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "CommentorName" VARCHAR(255), "Email" VARCHAR(255), "Comment" text, "approved" INTEGER, "approvedat" DATETIME, "UsersId" INTEGER, "CommentedRecordId" INTEGER, "CommentedRecordType" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "CommentedRecordIndex" ON "Comments" ("CommentedRecordId", "CommentedRecordType"); 
GO
CREATE INDEX "IndexCommentsOnapproved" ON "Comments" ("approved"); 
GO
CREATE INDEX "IndexCommentsOnUsersId" ON "Comments" ("UsersId"); 
GO
CREATE TABLE "WebSitenavItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSitenavId" INTEGER, "Title" VARCHAR(255), "Url" VARCHAR(255), "Position" INTEGER DEFAULT 0, "linkedToItemId" INTEGER, "linkedToItemType" VARCHAR(255), "ParentId" INTEGER, "LeftValue" INTEGER, "RightValue" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "linkedToIndex" ON "WebSitenavItems" ("linkedToItemId", "linkedToItemType"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnWebSitenavId" ON "WebSitenavItems" ("WebSitenavId"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnPosition" ON "WebSitenavItems" ("Position"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnParentId" ON "WebSitenavItems" ("ParentId"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnLeftValue" ON "WebSitenavItems" ("LeftValue"); 
GO
CREATE INDEX "IndexWebSitenavItemsOnRightValue" ON "WebSitenavItems" ("RightValue"); 
GO
CREATE TABLE "WebSitenavs" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "Name" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSitenavsOnWebSiteId" ON "WebSitenavs" ("WebSiteId"); 
GO
CREATE TABLE "tags" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255)); 
GO
CREATE TABLE "taggings" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "tagId" INTEGER, "taggableId" INTEGER, "taggerId" INTEGER, "taggerType" VARCHAR(255), "taggableType" VARCHAR(255), "Context" VARCHAR(255), "CreatedAt" DATETIME); 
GO
CREATE INDEX "IndextaggingsOntagId" ON "taggings" ("tagId"); 
GO
CREATE INDEX "taggablepolyIndex" ON "taggings" ("taggableId", "taggableType", "Context"); 
GO
CREATE TABLE "WebSitePartyRole" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "WebSiteId" INTEGER, "RoleTypeId" INTEGER, "PartyId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "IndexWebSitePartyRoleOnWebSiteId" ON "WebSitePartyRole" ("WebSiteId"); 
GO
CREATE INDEX "IndexWebSitePartyRoleOnRoleTypeId" ON "WebSitePartyRole" ("RoleTypeId"); 
GO
CREATE INDEX "IndexWebSitePartyRoleOnPartyId" ON "WebSitePartyRole" ("PartyId"); 
GO
CREATE TABLE "DocumentedItems" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "DocumentedClass" VARCHAR(255), "DocumentedContentId" INTEGER, "OnlineDocumentSectionId" INTEGER, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DocumentedItemsDocumentedContentIdIndex" ON "DocumentedItems" ("DocumentedContentId"); 
GO
CREATE INDEX "DocumentedItemsOnlineDocumentSectionIdIndex" ON "DocumentedItems" ("OnlineDocumentSectionId"); 
GO
CREATE TABLE "Documents" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ExternalIdentifier" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "DocumentDate" DATETIME, "DocumentRecordId" INTEGER, "DocumentRecordType" VARCHAR(255), "DocumentTypeId" INTEGER, "cusTomfields" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DocumentRecordpolyIndex" ON "Documents" ("DocumentRecordType", "DocumentRecordId"); 
GO
CREATE INDEX "DocumentTypeIndex" ON "Documents" ("DocumentTypeId"); 
GO
CREATE INDEX "DocumentsInternalIdentifierIndex" ON "Documents" ("InternalIdentifier"); 
GO
CREATE TABLE "DocumentType" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "ExternalIdentifier" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "Description" VARCHAR(255), "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "DocumentTypeInternalIdentifierIndex" ON "DocumentType" ("InternalIdentifier"); 
GO
CREATE TABLE "ValidDocuments" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "DocumentId" INTEGER, "DocumentedModelId" INTEGER, "DocumentedModelType" VARCHAR(255)); 
GO
CREATE INDEX "IndexValidDocumentsOnDocumentId" ON "ValidDocuments" ("DocumentId"); 
GO
CREATE INDEX "ValidDocumentsModelIndex" ON "ValidDocuments" ("DocumentedModelId", "DocumentedModelType"); 
GO
CREATE TABLE "Report" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" VARCHAR(255), "InternalIdentifier" VARCHAR(255), "TempateText" text, "QueryText" text, "CreatedAt" DATETIME NOT NULL, "UpdatedAt" DATETIME NOT NULL); 
GO
CREATE INDEX "ReportInternalIdentifierIndex" ON "Report" ("InternalIdentifier"); 
GO
CREATE TABLE "DataMigrations" ("Version" VARCHAR(255)); 
GO


--INSERT INTo schemaMigrations (Version) ValUES ('20100819181805'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064122'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064123'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064124'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064125'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064126'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064127'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064128'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064129'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064130'); 
--GO

--INSERT INTo schemaMigrations (Version) ValUES ('20151006064131'); 
--GO