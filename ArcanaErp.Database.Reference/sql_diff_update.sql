CREATE TABLE "Report" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Name" varchar(255), "Internal_Identifier" varchar(255), "Template" text, "Query" text, "Created_At" datetime NOT NULL, "Updated_At" datetime NOT NULL);
GO
CREATE Index "Report_Internal_Identifier_Index" ON "Report" ("Internal_Identifier"); 
GO
CREATE TABLE "Agreement" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Agreement_Type_Id" integer, "Agreement_Status" varchar(255), "Product_Id" integer, "Agreement_Date" date, "From_Date" date, "Through_Date" date, "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_On_Agreement_Type_Id" ON "Agreement" ("Agreement_Type_Id"); 
GO
CREATE Index "Index_Agreement_On_Product_Id" ON "Agreement" ("Product_Id"); 
GO
CREATE TABLE "Agreement_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_Type_On_Parent_Id" ON "Agreement_Type" ("Parent_Id"); 
GO
CREATE Index "Index_Agreement_Type_On_LeftValue" ON "Agreement_Type" ("LeftValue"); 
GO
CREATE Index "Index_Agreement_Type_On_RightValue" ON "Agreement_Type" ("RightValue"); 
GO
CREATE TABLE "Agreement_Item" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Agreement_Id" integer, "Agreement_Item_Type_Id" integer, "Agreement_Item_Value" varchar(255), "Description" varchar(255), "Agreement_Item_Rule_String" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_Item_On_Agreement_Id" ON "Agreement_Item" ("Agreement_Id"); 
GO
CREATE Index "Index_Agreement_Item_On_Agreement_Item_Type_Id" ON "Agreement_Item" ("Agreement_Item_Type_Id"); 
GO
CREATE TABLE "Agreement_Item_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_Item_Type_On_Parent_Id" ON "Agreement_Item_Type" ("Parent_Id"); 
GO
CREATE Index "Index_Agreement_Item_Type_On_LeftValue" ON "Agreement_Item_Type" ("LeftValue"); 
GO
CREATE Index "Index_Agreement_Item_Type_On_RightValue" ON "Agreement_Item_Type" ("RightValue"); 
GO
CREATE TABLE "Agreement_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Agreement_Id" integer, "Party_Id" integer, "Role_Type_Id" integer, "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_Party_Role_On_Agreement_Id" ON "Agreement_Party_Role" ("Agreement_Id"); 
GO
CREATE Index "Index_Agreement_Party_Role_On_Party_Id" ON "Agreement_Party_Role" ("Party_Id"); 
GO
CREATE Index "Index_Agreement_Party_Role_On_Role_Type_Id" ON "Agreement_Party_Role" ("Role_Type_Id"); 
GO
CREATE TABLE "Agreement_Relationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Agreement_Relationship_Type_Id" integer, "Description" varchar(255), "Agreement_Id_From" integer, "Agreement_Id_To" integer, "Role_Type_Id_From" integer, "Role_Type_Id_To" integer, "Status_Type_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_Relationship_On_Agreement_Relationship_Type_Id" ON "Agreement_Relationship" ("Agreement_Relationship_Type_Id"); 
GO
CREATE Index "Index_Agreement_Relationship_On_Status_Type_Id" ON "Agreement_Relationship" ("Status_Type_Id"); 
GO
CREATE TABLE "Agreement_Relationship_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Valid_From_Role_Type_Id" integer, "Valid_To_Role_Type_Id" integer, "Name" varchar(255), "Description" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_Relationship_Type_On_Parent_Id" ON "Agreement_Relationship_Type" ("Parent_Id"); 
GO
CREATE Index "Index_Agreement_Relationship_Type_On_Valid_From_Role_Type_Id" ON "Agreement_Relationship_Type" ("Valid_From_Role_Type_Id"); 
GO
CREATE Index "Index_Agreement_Relationship_Type_On_Valid_To_Role_Type_Id" ON "Agreement_Relationship_Type" ("Valid_To_Role_Type_Id"); 
GO
CREATE TABLE "Agreement_Role_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Agreement_Role_Type_On_Parent_Id" ON "Agreement_Role_Type" ("Parent_Id"); 
GO
CREATE Index "Index_Agreement_Role_Type_On_LeftValue" ON "Agreement_Role_Type" ("LeftValue"); 
GO
CREATE Index "Index_Agreement_Role_Type_On_RightValue" ON "Agreement_Role_Type" ("RightValue"); 
GO
CREATE TABLE "Loyalty_Program_Code" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Identifier" varchar(255), "Name" varchar(255), "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Fee" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Fee_Record_Id" integer, "Fee_Record_Type" varchar(255), "Money_Id" integer, "Fee_Type_Id" integer, "Description" varchar(255), "Start_Date" DATETIME, "End_Date" DATETIME, "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Fee_Record_Index" ON "Fee" ("Fee_Record_Id", "Fee_Record_Type"); 
GO
CREATE Index "Index_Fee_On_Fee_Type_Id" ON "Fee" ("Fee_Type_Id"); 
GO
CREATE Index "Index_Fee_On_Money_Id" ON "Fee" ("Money_Id"); 
GO
CREATE TABLE "Fee_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Description" varchar(255), "Comments" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Price_Component_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Pricing_Plan" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "From_Date" date, "Through_Date" date, "matching_rules" varchar(255), "Pricing_calculation" varchar(255), "Is_simple_Amount" BIT, "currency_Id" integer, "Money_Amount" decimal(8,2), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Pricing_Plan_Component" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Price_Component_Type_Id" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "matching_rules" varchar(255), "Pricing_calculation" varchar(255), "Is_simple_Amount" BIT, "currency_Id" integer, "Money_Amount" decimal(8,2), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Pricing_Plan_Component_On_Price_Component_Type_Id" ON "Pricing_Plan_Component" ("Price_Component_Type_Id"); 
GO
CREATE TABLE "Valid_Price_Plan_Component" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Pricing_Plan_Id" integer, "Pricing_Plan_Component_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Valid_Price_Plan_Component_On_Pricing_Plan_Id" ON "Valid_Price_Plan_Component" ("Pricing_Plan_Id"); 
GO
CREATE Index "Index_Valid_Price_Plan_Component_On_Pricing_Plan_Component_Id" ON "Valid_Price_Plan_Component" ("Pricing_Plan_Component_Id"); 
GO
CREATE TABLE "Pricing_Plan_Assignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Pricing_Plan_Id" integer, "Priceable_Item_Id" integer, "Priceable_Item_Type" varchar(255), "Priority" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Pricing_Plan_Assignment_On_Pricing_Plan_Id" ON "Pricing_Plan_Assignment" ("Pricing_Plan_Id"); 
GO
CREATE Index "Priceable_Item_Index" ON "Pricing_Plan_Assignment" ("Priceable_Item_Id", "Priceable_Item_Type"); 
GO
CREATE TABLE "Price" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Priced_Item_Id" integer, "Priced_Item_Type" varchar(255), "Pricing_Plan_Id" integer, "Money_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Price_On_Money_Id" ON "Price" ("Money_Id"); 
GO
CREATE Index "Index_Price_On_Pricing_Plan_Id" ON "Price" ("Pricing_Plan_Id"); 
GO
CREATE Index "Priced_Item_Index" ON "Price" ("Priced_Item_Id", "Priced_Item_Type"); 
GO
CREATE TABLE "Price_Component" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Pricing_Plan_Component_Id" integer, "Price_Id" integer, "Money_Id" integer, "Priced_Component_Id" integer, "Priced_Component_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Price_Component_On_Money_Id" ON "Price_Component" ("Money_Id"); 
GO
CREATE Index "Index_Price_Component_On_Pricing_Plan_Component_Id" ON "Price_Component" ("Pricing_Plan_Component_Id"); 
GO
CREATE Index "Index_Price_Component_On_Price_Id" ON "Price_Component" ("Price_Id"); 
GO
CREATE Index "Priced_Component_Index" ON "Price_Component" ("Priced_Component_Id", "Priced_Component_Type"); 
GO
CREATE TABLE "Payment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Success" BIT, "Reference_Number" varchar(255), "Financial_Taxation_Id" integer, "current_state" varchar(255), "authorization_Code" varchar(255), "External_Identifier" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Payment_On_Financial_Taxation_Id" ON "Payment" ("Financial_Taxation_Id"); 
GO
CREATE TABLE "Payment_Gateways" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Params" varchar(255), "Payment_Gateway_Action_Id" integer, "Payment_Id" integer, "response" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Payment_Gateway_Action" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Payment_Gateway_Action_On_Internal_Identifier" ON "Payment_Gateway_Action" ("Internal_Identifier"); 
GO
CREATE TABLE "Credit_Card" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Crypted_Private_Card_Number" varchar(255), "Crypted_Private_Cvc" varchar(255), "Expiration_month" integer, "Expiration_year" integer, "Description" varchar(255), "name_On_Card" varchar(255), "Card_Type" varchar(255), "Postal_Address_Id" integer, "Credit_Card_Token" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Credit_Card_Account" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Credit_Card_Account_Pupose_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Credit_Card_Account_Pupose_Index" ON "Credit_Card_Account" ("Credit_Card_Account_Pupose_Id"); 
GO
CREATE TABLE "Credit_Card_Account_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Credit_Card_Account_Id" integer, "Role_Type_Id" integer, "Party_Id" integer, "Credit_Card_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Credit_Card_Account_Party_Role_On_Credit_Card_Account_Id" ON "Credit_Card_Account_Party_Role" ("Credit_Card_Account_Id"); 
GO
CREATE Index "Index_Credit_Card_Account_Party_Role_On_Role_Type_Id" ON "Credit_Card_Account_Party_Role" ("Role_Type_Id"); 
GO
CREATE Index "Index_Credit_Card_Account_Party_Role_On_Party_Id" ON "Credit_Card_Account_Party_Role" ("Party_Id"); 
GO
CREATE Index "Index_Credit_Card_Account_Party_Role_On_Credit_Card_Id" ON "Credit_Card_Account_Party_Role" ("Credit_Card_Id"); 
GO
CREATE TABLE "Credit_Card_Account_Purpose" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Accepted_Credit_Card" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Organization_Id" integer, "Card_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Bank_Account_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Internal_Identifier" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Bank_Account" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Routing_Number" varchar(255), "Crypted_Private_Account_Number" varchar(255), "name_On_Account" varchar(255), "Bank_Account_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Bank_Account_Account_Type_Index" ON "Bank_Account" ("Bank_Account_Type_Id"); 
GO
CREATE TABLE "Order_Taxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Order_Taxation_Type_Id" integer, "Order_Taxation_Record_Id" integer, "Order_Taxation_Record_Type" varchar(255), "email" varchar(255), "phone_Number" varchar(255), "ship_To_first_name" varchar(255), "ship_To_last_name" varchar(255), "ship_To_Address_Line_1" varchar(255), "ship_To_Address_Line_2" varchar(255), "ship_To_city" varchar(255), "ship_To_state" varchar(255), "ship_To_Postal_Code" varchar(255), "ship_To_country_name" varchar(255), "Customer_ip" varchar(255), "Order_Number" varchar(255), "error_Message" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Payment_Gateway_Taxation_Id" varchar(255), "Credit_Card_Id" integer, "bill_To_first_name" varchar(255), "bill_To_last_name" varchar(255), "bill_To_Address_Line_1" varchar(255), "bill_To_Address_Line_2" varchar(255), "bill_To_city" varchar(255), "bill_To_state" varchar(255), "bill_To_Postal_Code" varchar(255), "bill_To_country_name" varchar(255), "bill_To_country" varchar(255), "ship_To_country" varchar(255), "Sales_Tax" decimal(8,2)); 
GO
CREATE Index "Index_Order_Taxation_On_Order_Taxation_Type_Id" ON "Order_Taxation" ("Order_Taxation_Type_Id"); 
GO
CREATE Index "Order_Taxation_Record_Index" ON "Order_Taxation" ("Order_Taxation_Record_Id", "Order_Taxation_Record_Type"); 
GO
CREATE TABLE "Product_Instance" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Product_Instance_Record_Id" integer, "Product_Instance_Record_Type" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Product_Type_Id" integer, "Type" varchar(255), "Product_Availability_Status_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Instance_Parent_Id_Index" ON "Product_Instance" ("Parent_Id"); 
GO
CREATE Index "Product_Instance_LeftValue_Index" ON "Product_Instance" ("LeftValue"); 
GO
CREATE Index "Product_Instance_RightValue_Index" ON "Product_Instance" ("RightValue"); 
GO
CREATE Index "Product_Instance_Poly_Index" ON "Product_Instance" ("Product_Instance_Record_Id", "Product_Instance_Record_Type"); 
GO
CREATE Index "Product_Instance_Product_Type_Index" ON "Product_Instance" ("Product_Type_Id"); 
GO
CREATE TABLE "Product_Offer" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Offer_Record_Id" integer, "Product_Offer_Record_Type" varchar(255), "Description" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Valid_From" date, "Valid_To" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Offer_Poly_Index" ON "Product_Offer" ("Product_Offer_Record_Id", "Product_Offer_Record_Type"); 
GO
CREATE Index "Product_Offer_Valid_From_Index" ON "Product_Offer" ("Valid_From"); 
GO
CREATE Index "Product_Offer_Valid_To_Index" ON "Product_Offer" ("Valid_To"); 
GO
CREATE TABLE "simple_Product_Offer" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Type_Id" integer, "Description" varchar(255), "string" varchar(255), "Base_Price" decimal(8,2), "uom" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "simple_Product_Offer_Product_Type_Id_Index" ON "simple_Product_Offer" ("Product_Type_Id"); 
GO
CREATE TABLE "Product_Instance_Relationship_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Relationship_Type_Parent_Id_Index" ON "Product_Instance_Relationship_Type" ("Parent_Id"); 
GO
CREATE Index "Product_Relationship_Type_LeftValue_Index" ON "Product_Instance_Relationship_Type" ("LeftValue"); 
GO
CREATE Index "Product_Relationship_Type_RightValue_Index" ON "Product_Instance_Relationship_Type" ("RightValue"); 
GO
CREATE TABLE "Product_Instance_Role_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Instance_Role_Type_Parent_Id_Index" ON "Product_Instance_Role_Type" ("Parent_Id"); 
GO
CREATE Index "Product_Instance_Role_Type_LeftValue_Index" ON "Product_Instance_Role_Type" ("LeftValue"); 
GO
CREATE Index "Product_Instance_Role_Type_RightValue_Index" ON "Product_Instance_Role_Type" ("RightValue"); 
GO
CREATE TABLE "Product_Instance_Relationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Instance_Relationship_Type_Id" integer, "Description" varchar(255), "Product_Instance_Id_From" integer, "Product_Instance_Id_To" integer, "Role_Type_Id_From" integer, "Role_Type_Id_To" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Instance_Relationship_Type_Index" ON "Product_Instance_Relationship" ("Product_Instance_Relationship_Type_Id"); 
GO
CREATE Index "Product_Instance_Relationship_Instance_From_Index" ON "Product_Instance_Relationship" ("Product_Instance_Id_From"); 
GO
CREATE Index "Product_Instance_Relationship_Instance_To_Index" ON "Product_Instance_Relationship" ("Product_Instance_Id_To"); 
GO
CREATE Index "Product_Instance_Relationship_Type_From_Index" ON "Product_Instance_Relationship" ("Role_Type_Id_From"); 
GO
CREATE Index "Product_Instance_Relationship_Type_To_Index" ON "Product_Instance_Relationship" ("Role_Type_Id_To"); 
GO
CREATE TABLE "Product_Type_Relationship_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Type_Relationship_Type_Parent_Id_Index" ON "Product_Instance_Role_Type" ("Parent_Id"); 
GO
CREATE Index "Product_Type_Relationship_Type_LeftValue_Index" ON "Product_Instance_Role_Type" ("LeftValue"); 
GO
CREATE Index "Product_Type_Relationship_Type_RightValue_Index" ON "Product_Instance_Role_Type" ("RightValue"); 
GO
CREATE TABLE "Product_Type_Role_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Type_Role_Type_Parent_Id_Index" ON "Product_Instance_Role_Type" ("Parent_Id"); 
GO
CREATE Index "Product_Type_Role_Type_LeftValue_Index" ON "Product_Instance_Role_Type" ("LeftValue"); 
GO
CREATE Index "Product_Type_Role_Type_RightValue_Index" ON "Product_Instance_Role_Type" ("RightValue"); 
GO
CREATE TABLE "Product_Type_Relationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Type_Relationship_Type_Id" integer, "Description" varchar(255), "Product_Type_Id_From" integer, "Product_Type_Id_To" integer, "Role_Type_Id_From" integer, "Role_Type_Id_To" integer, "Status_Type_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Type_Relationship_Type_Index" ON "Product_Type_Relationship" ("Product_Type_Relationship_Type_Id"); 
GO
CREATE Index "Product_Type_Relationship_Type_From_Index" ON "Product_Type_Relationship" ("Product_Type_Id_From"); 
GO
CREATE Index "Product_Type_Relationship_Type_To_Index" ON "Product_Type_Relationship" ("Product_Type_Id_To"); 
GO
CREATE Index "Product_Type_Relationship_Role_From_Index" ON "Product_Type_Relationship" ("Role_Type_Id_From"); 
GO
CREATE Index "Product_Type_Relationship_Role_To_Index" ON "Product_Type_Relationship" ("Role_Type_Id_To"); 
GO
CREATE TABLE "Product_Availability_Status_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Avail_Status_Type_Parent_Id_Index" ON "Product_Availability_Status_Type" ("Parent_Id"); 
GO
CREATE Index "Product_Avail_Status_Type_LeftValue_Index" ON "Product_Availability_Status_Type" ("LeftValue"); 
GO
CREATE Index "Product_Avail_Status_Type_RightValue_Index" ON "Product_Availability_Status_Type" ("RightValue"); 
GO
CREATE TABLE "Product_Type_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Party_Id" integer, "Role_Type_Id" integer, "Product_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Type_Party_Role_Party_Index" ON "Product_Type_Party_Role" ("Party_Id"); 
GO
CREATE Index "Product_Type_Party_Role_Role_Index" ON "Product_Type_Party_Role" ("Role_Type_Id"); 
GO
CREATE Index "Product_Type_Party_Role_Product_Type_Index" ON "Product_Type_Party_Role" ("Product_Type_Id"); 
GO
CREATE TABLE "Product_Feature_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Product_Feature_Applicability" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Feature_Of_Record_Id" integer, "Feature_Of_Record_Type" varchar(255), "Product_Feature_Id" integer, "Is_mandatory" BIT, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Feature_Record_Index" ON "Product_Feature_Applicability" ("Feature_Of_Record_Type", "Feature_Of_Record_Id"); 
GO
CREATE TABLE "Product_Feature_Type_Product_Feature_Value" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Feature_Type_Id" integer, "Product_Feature_Value_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Feature_Type_Feature_Value_Type_Index" ON "Product_Feature_Type_Product_Feature_Value" ("Product_Feature_Type_Id"); 
GO
CREATE Index "Product_Feature_Type_Feature_Value_Value_Index" ON "Product_Feature_Type_Product_Feature_Value" ("Product_Feature_Value_Id"); 
GO
CREATE TABLE "Product_Feature" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Feature_Type_Id" integer, "Product_Feature_Value_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Feature_Type_Index" ON "Product_Feature" ("Product_Feature_Type_Id"); 
GO
CREATE Index "Product_Feature_Value_Index" ON "Product_Feature" ("Product_Feature_Value_Id"); 
GO
CREATE TABLE "Product_Feature_Value" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "value" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Product_Feature_Interaction_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Communication_Event" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "From_Contact_Mechanism_Id" integer, "From_Contact_Mechanism_Type" varchar(255), "To_Contact_Mechanism_Id" integer, "To_Contact_Mechanism_Type" varchar(255), "Role_Type_Id_From" integer, "Role_Type_Id_To" integer, "Party_Id_From" integer, "Party_Id_To" integer, "Short_Description" varchar(255), "Status_Type_Id" integer, "Case_Id" integer, "date_Time_Started" DATETIME, "date_Time_Ended" DATETIME, "notes" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Communication_Event_On_Status_Type_Id" ON "Communication_Event" ("Status_Type_Id"); 
GO
CREATE Index "Index_Communication_Event_On_Case_Id" ON "Communication_Event" ("Case_Id"); 
GO
CREATE Index "Index_Communication_Event_On_Role_Type_Id_From" ON "Communication_Event" ("Role_Type_Id_From"); 
GO
CREATE Index "Index_Communication_Event_On_Role_Type_Id_To" ON "Communication_Event" ("Role_Type_Id_To"); 
GO
CREATE Index "Index_Communication_Event_On_Party_Id_From" ON "Communication_Event" ("Party_Id_From"); 
GO
CREATE Index "Index_Communication_Event_On_Party_Id_To" ON "Communication_Event" ("Party_Id_To"); 
GO
CREATE Index "To_Contact_Mechanism_Index" ON "Communication_Event" ("To_Contact_Mechanism_Id", "To_Contact_Mechanism_Type"); 
GO
CREATE Index "From_Contact_Mechanism_Index" ON "Communication_Event" ("From_Contact_Mechanism_Id", "From_Contact_Mechanism_Type"); 
GO
CREATE TABLE "Communication_Event_Pupose_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Communication_Event_Pupose_Type_On_Parent_Id" ON "Communication_Event_Pupose_Type" ("Parent_Id"); 
GO
CREATE TABLE "Communication_Event_Purpose" ("Communication_Event_Id" integer, "Communication_Event_Pupose_Type_Id" integer); 
GO
CREATE Index "Index_Communication_Event_Purpose_On_Communication_Event_Id" ON "Communication_Event_Purpose" ("Communication_Event_Id"); 
GO
CREATE Index "Index_Communication_Event_Purpose_On_Communication_Event_Pupose_Type_Id" ON "Communication_Event_Purpose" ("Communication_Event_Pupose_Type_Id"); 
GO
CREATE TABLE "Communication_Event_Status" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Communication_Event_Status_On_Parent_Id" ON "Communication_Event_Status" ("Parent_Id"); 
GO
CREATE TABLE "GeneralLedger_Account" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Price_Plan_Comp_GeneralLedger_Account" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Pricing_Plan_Component_Id" integer, "GeneralLedger_Account_Id" integer, "mapping_Rule_klass" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Inventory_Entry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Inventory_Entry_Record_Id" integer, "Inventory_Entry_Record_Type" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Product_Type_Id" integer, "Number_Available" integer, "sku" varchar(255), "Number_Sold" integer, "Unit_Of_Measurement_Id" integer, "Number_In_Stock" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Inventory_Entry_UnitOfMeasurement_Index" ON "Inventory_Entry" ("Unit_Of_Measurement_Id"); 
GO
CREATE Index "Bii_1" ON "Inventory_Entry" ("Inventory_Entry_Record_Id", "Inventory_Entry_Record_Type"); 
GO
CREATE Index "Index_Inventory_Entry_On_Product_Type_Id" ON "Inventory_Entry" ("Product_Type_Id"); 
GO
CREATE TABLE "Inventory_Entry_Relationship_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Inventory_Entry_Relationship_Type_On_Parent_Id" ON "Inventory_Entry_Relationship_Type" ("Parent_Id"); 
GO
CREATE TABLE "Inventory_Entry_Role_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Inventory_Entry_Role_Type_On_Parent_Id" ON "Inventory_Entry_Role_Type" ("Parent_Id"); 
GO
CREATE TABLE "Inventory_Entry_Relationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Inventory_Entry_Relationship_Type_Id" integer, "Description" varchar(255), "Inventory_Entry_Id_From" integer, "Inventory_Entry_Id_To" integer, "Role_Type_Id_From" integer, "Role_Type_Id_To" integer, "Status_Type_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Inventory_Entry_Relationship_On_Inventory_Entry_Relationship_Type_Id" ON "Inventory_Entry_Relationship" ("Inventory_Entry_Relationship_Type_Id"); 
GO
CREATE Index "Index_Inventory_Entry_Relationship_On_Status_Type_Id" ON "Inventory_Entry_Relationship" ("Status_Type_Id"); 
GO
CREATE TABLE "Product_Instance_Inventory_Entry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Instance_Id" integer, "Inventory_Entry_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Product_Instance_Inventory_Entry_On_Product_Instance_Id" ON "Product_Instance_Inventory_Entry" ("Product_Instance_Id"); 
GO
CREATE Index "Index_Product_Instance_Inventory_Entry_On_Inventory_Entry_Id" ON "Product_Instance_Inventory_Entry" ("Inventory_Entry_Id"); 
GO
CREATE TABLE "Inventory_Entry_Location" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Inventory_Entry_Id" integer, "Facility_Id" integer, "Valid_From" DATETIME, "Valid_Through" DATETIME, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Inventory_Entry_Location_Inventory_Entry_Index" ON "Inventory_Entry_Location" ("Inventory_Entry_Id"); 
GO
CREATE Index "Inventory_Entry_Location_Facility_Index" ON "Inventory_Entry_Location" ("Facility_Id"); 
GO
CREATE TABLE "Inventory_Pickup_Taxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Fixed_Asset_Id" integer, "Description" varchar(255), "Quantity" integer, "Unit_Of_Measurement_Id" integer, "Comment" text, "Inventory_Entry_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Inventory_Pickup_Taxation_On_Fixed_Asset_Id" ON "Inventory_Pickup_Taxation" ("Fixed_Asset_Id"); 
GO
CREATE Index "Index_Inventory_Pickup_Taxation_On_Inventory_Entry_Id" ON "Inventory_Pickup_Taxation" ("Inventory_Entry_Id"); 
GO
CREATE TABLE "Inventory_DropOff_Taxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Fixed_Asset_Id" integer, "Description" varchar(255), "Quantity" integer, "Unit_Of_Measurement_Id" integer, "Comment" text, "Inventory_Entry_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Inventory_DropOff_Taxation_On_Fixed_Asset_Id" ON "Inventory_DropOff_Taxation" ("Fixed_Asset_Id"); 
GO
CREATE Index "Index_Inventory_DropOff_Taxation_On_Inventory_Entry_Id" ON "Inventory_DropOff_Taxation" ("Inventory_Entry_Id"); 
GO
CREATE TABLE "Invoice" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Invoice_Number" varchar(255), "Description" varchar(255), "Message" varchar(255), "Invoice_Date" date, "Due_Date" date, "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Product_Id" integer, "Invoice_Type_Id" integer, "Billing_Account_Id" integer, "Invoice_Payment_Strategy_Type_Id" integer, "Balance_Id" integer, "Calculate_Balance_Strategy_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Sales_Tax" decimal(8,2)); 
GO
CREATE Index "Product_Type_Index" ON "Invoice" ("Product_Id"); 
GO
CREATE Index "Invoice_Type_Index" ON "Invoice" ("Invoice_Type_Id"); 
GO
CREATE Index "Invoice_Billing_Account_Index" ON "Invoice" ("Billing_Account_Id"); 
GO
CREATE Index "Invoice_Payment_stragegy_Index" ON "Invoice" ("Invoice_Payment_Strategy_Type_Id"); 
GO
CREATE TABLE "Invoice_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Invoice_Payment_Strategy_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Invoiced_Record" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Invoice_Item_Id" integer, "Invoiceable_Item_Id" integer, "Invoiceable_Item_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Invoiced_Record_Invoiceable_Item_Index" ON "Invoiced_Record" ("Invoiceable_Item_Id", "Invoiceable_Item_Type"); 
GO
CREATE TABLE "Invoice_Item_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Invoice_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Role_Type_Id" integer, "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Invoice_Id" integer, "Party_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Invoice_Party_Invoice_Id_Index" ON "Invoice_Party_Role" ("Invoice_Id"); 
GO
CREATE Index "Invoice_Party_Party_Id_Index" ON "Invoice_Party_Role" ("Party_Id"); 
GO
CREATE TABLE "Billing_Account" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "SEnd_Paper_Bills" BIT Default 'f', "Payable_Online" BIT Default 'f', "Billing_Date" date, "Calculate_Balance_Strategy_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Billing_Contact_Mechanism" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Contact_Mechanism_Id" integer, "Contact_Mechanism_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Billing_Contact_Mechanism_Index" ON "Billing_Contact_Mechanism" ("Contact_Mechanism_Id", "Contact_Mechanism_Type"); 
GO
CREATE TABLE "Recurring_Payment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Payment_Account_Id" integer, "Payment_Account_Type" varchar(255), "Billing_Account_Id" integer, "Pay_Up_To_Amount" decimal(8,2), "Payment_Amount" decimal(8,2), "Payment_Day" integer, "From_Date" date, "Through_Date" date, "enabled" BIT, "text_To_pay" BIT, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Payment_Account_Index" ON "Recurring_Payment" ("Payment_Account_Id", "Payment_Account_Type"); 
GO
CREATE Index "Index_Recurring_Payment_On_Billing_Account_Id" ON "Recurring_Payment" ("Billing_Account_Id"); 
GO
CREATE TABLE "Payment_Application" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Financial_Taxation_Id" integer, "Payment_Applied_To_Id" integer, "Payment_Applied_To_Type" varchar(255), "Applied_Money_Amount_Id" integer, "Comment" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Payment_Applied_To_Index" ON "Payment_Application" ("Payment_Applied_To_Id", "Payment_Applied_To_Type"); 
GO
CREATE Index "Index_Payment_Application_On_Financial_Taxation_Id" ON "Payment_Application" ("Financial_Taxation_Id"); 
GO
CREATE Index "Index_Payment_Application_On_Applied_Money_Amount_Id" ON "Payment_Application" ("Applied_Money_Amount_Id"); 
GO
CREATE TABLE "Invoice_Payment_Term_Set" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Invoice_Id" integer, "Invoice_Item_Id" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Invoice_Payment_Term_Set_On_Invoice_Id" ON "Invoice_Payment_Term_Set" ("Invoice_Id"); 
GO
CREATE Index "Index_Invoice_Payment_Term_Set_On_Invoice_Item_Id" ON "Invoice_Payment_Term_Set" ("Invoice_Item_Id"); 
GO
CREATE TABLE "Invoice_Payment_Term" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Invoice_Payment_Term_Type_Id" integer, "Invoice_Payment_Term_Set_Id" integer, "Description" varchar(255), "Pay_by" date, "Amount" decimal(8,2), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Invoice_Payment_Term_On_Invoice_Payment_Term_Type_Id" ON "Invoice_Payment_Term" ("Invoice_Payment_Term_Type_Id"); 
GO
CREATE Index "Index_Invoice_Payment_Term_On_Invoice_Payment_Term_Set_Id" ON "Invoice_Payment_Term" ("Invoice_Payment_Term_Set_Id"); 
GO
CREATE TABLE "Invoice_Payment_Term_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Calculate_Balance_Strategy_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Invoice_Item" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Invoice_Id" integer, "Invoice_Item_Type_Id" integer, "Item_seq_Id" integer, "Item_Description" text(255), "Quantity" decimal(8,2), "Amount" decimal(8,2), "Taxable" BIT, "Unit_Price" decimal(8,2), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Sales_Tax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "Invoice_Id_Index" ON "Invoice_Item" ("Invoice_Id"); 
GO
CREATE Index "Invoice_Item_Type_Id_Index" ON "Invoice_Item" ("Invoice_Item_Type_Id"); 
GO
CREATE TABLE "Order_Taxation_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Order_Taxation_Type_On_Parent_Id" ON "Order_Taxation_Type" ("Parent_Id"); 
GO
CREATE TABLE "Order_Line_Item" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Order_Taxation_Id" integer, "Order_Line_Item_Type_Id" integer, "Product_Instance_Id" integer, "Product_Instance_Description" varchar(255), "Product_Type_Id" integer, "Product_Type_Description" varchar(255), "Sold_Price" decimal(8,2), "Sold_Price_UnitOfMeasurement" integer, "Sold_Amount" integer, "Sold_Amount_UnitOfMeasurement" integer, "Product_Offer_Id" integer, "Quantity" integer, "Unit_Of_Measurement_Id" integer, "Product_Offer_Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Unit_Price" decimal, "Sales_Tax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "Order_Line_Item_UnitOfMeasurement_Index" ON "Order_Line_Item" ("Unit_Of_Measurement_Id"); 
GO
CREATE Index "Index_Order_Line_Item_On_Order_Taxation_Id" ON "Order_Line_Item" ("Order_Taxation_Id"); 
GO
CREATE Index "Index_Order_Line_Item_On_Order_Line_Item_Type_Id" ON "Order_Line_Item" ("Order_Line_Item_Type_Id"); 
GO
CREATE Index "Index_Order_Line_Item_On_Product_Instance_Id" ON "Order_Line_Item" ("Product_Instance_Id"); 
GO
CREATE Index "Index_Order_Line_Item_On_Product_Type_Id" ON "Order_Line_Item" ("Product_Type_Id"); 
GO
CREATE Index "Index_Order_Line_Item_On_Product_Offer_Id" ON "Order_Line_Item" ("Product_Offer_Id"); 
GO
CREATE TABLE "Order_Line_Item_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Order_Line_Item_Type_On_Parent_Id" ON "Order_Line_Item_Type" ("Parent_Id"); 
GO
CREATE TABLE "Order_Line_Item_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Role_Type_Id" integer, "Business_Taxation_Account_Root_Id" integer, "Order_Line_Item_Id" integer, "Party_Id" integer, "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Order_Line_Item_Party_Role_Order_Line_Item_Index" ON "Order_Line_Item_Party_Role" ("Order_Line_Item_Id"); 
GO
CREATE Index "Order_Line_Item_Party_Role_Party_Index" ON "Order_Line_Item_Party_Role" ("Party_Id"); 
GO
CREATE Index "Order_Line_Item_Party_Role_Role_Type_Index" ON "Order_Line_Item_Party_Role" ("Role_Type_Id"); 
GO
CREATE Index "Order_Line_Item_Party_Role_Business_Taxation_Account_Root_Index" ON "Order_Line_Item_Party_Role" ("Business_Taxation_Account_Root_Id"); 
GO
CREATE TABLE "Order_Line_Item_Relationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Order_Line_Item_Relationship_Type_Id" integer, "Description" varchar(255), "Order_Line_Item_Id_From" integer, "Order_Line_Item_Id_To" integer, "Status_Type_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Order_Line_Item_Relationship_On_Order_Line_Item_Relationship_Type_Id" ON "Order_Line_Item_Relationship" ("Order_Line_Item_Relationship_Type_Id"); 
GO
CREATE Index "Index_Order_Line_Item_Relationship_On_Status_Type_Id" ON "Order_Line_Item_Relationship" ("Status_Type_Id"); 
GO
CREATE TABLE "Order_Line_Item_Relationship_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Order_Line_Item_Relationship_Type_On_Parent_Id" ON "Order_Line_Item_Relationship_Type" ("Parent_Id"); 
GO
CREATE TABLE "Charge_Lines" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Sti_Type" varchar(255), "Money_Id" integer, "Description" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Charged_Item_Id" integer, "Charged_Item_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Charge_Type_Id" integer, "Sales_Tax" decimal(8,2), "Taxed" BIT); 
GO
CREATE Index "Charged_Item_Index" ON "Charge_Lines" ("Charged_Item_Id", "Charged_Item_Type"); 
GO
CREATE TABLE "Charge_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Internal_Identifier" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Taxable" BIT); 
GO
CREATE TABLE "Sales_Tax_Lines" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Sales_Tax_Policy_Id" integer, "Rate" decimal(8,2), "Comment" text, "Taxed_Record_Id" integer, "Taxed_Record_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Sales_Tax_Policy" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Internal_Identifier" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Product_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Product_Type_Record_Id" integer, "Product_Type_Record_Type" varchar(255), "External_Identifier" varchar(255), "Internal_Identifier" varchar(255), "External_Id_Source" varchar(255), "Default_Image_Url" varchar(255), "List_View_Image_Id" integer, "Type" varchar(255), "sku" varchar(255), "Comment" text, "Unit_Of_Measurement_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Available_On_Web" BIT, "Length" decimal, "Width" decimal, "Height" decimal, "Weight" decimal, "Cylindrical" BIT, "Taxable" BIT); 
GO
CREATE Index "Product_Type_Parent_Id_Index" ON "Product_Type" ("Parent_Id"); 
GO
CREATE Index "Product_Type_LeftValue_Index" ON "Product_Type" ("LeftValue"); 
GO
CREATE Index "Product_Type_RightValue_Index" ON "Product_Type" ("RightValue"); 
GO
CREATE Index "Product_Type_UnitOfMeasurement_Index" ON "Product_Type" ("Unit_Of_Measurement_Id"); 
GO
CREATE Index "Product_Type_Poly_Index" ON "Product_Type" ("Product_Type_Record_Id", "Product_Type_Record_Type"); 
GO
CREATE Index "Index_Product_Type_On_Available_On_Web" ON "Product_Type" ("Available_On_Web"); 
GO
CREATE TABLE "Product_Feature_InterAction" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Product_Feature_From_Id" integer, "Product_Feature_To_Id" integer, "Product_Feature_Interaction_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Product_Feature_int_Feature_Index" ON "Product_Feature_InterAction" ("Product_Feature_From_Id"); 
GO
CREATE Index "Product_Feature_int_interacted_Feature_Index" ON "Product_Feature_InterAction" ("Product_Feature_To_Id"); 
GO
CREATE Index "Product_Feature_int_interacted_Feature_Type_Index" ON "Product_Feature_InterAction" ("Product_Feature_Interaction_Type_Id"); 
GO
CREATE Index "Product_ft_vals_IId_Index" ON "Product_Feature_Value" ("Internal_Identifier"); 
GO
CREATE Index "Product_ft_int_Type_IId_Index" ON "Product_Feature_Interaction_Type" ("Internal_Identifier"); 
GO
CREATE Index "Product_ft_Type_IId_Index" ON "Product_Feature_Type" ("Internal_Identifier"); 
GO
CREATE Index "Product_ft_Type_Nested_Set_Index" ON "Product_Feature_Type" ("RightValue", "LeftValue", "Parent_Id"); 
GO
CREATE TABLE "Business_Taxation_Event" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Business_Taxation_Account_Root_Id" integer, "Business_Taxation_Type_Id" integer, "Entered_Date" DATETIME, "Post_Date" DATETIME, "Business_Taxation_Record_Id" integer, "Business_Taxation_Record_Type" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Event_On_Business_Taxation_Account_Root_Id" ON "Business_Taxation_Event" ("Business_Taxation_Account_Root_Id"); 
GO
CREATE Index "Index_Business_Taxation_Event_On_Business_Taxation_Type_Id" ON "Business_Taxation_Event" ("Business_Taxation_Type_Id"); 
GO
CREATE Index "Btai_1" ON "Business_Taxation_Event" ("Business_Taxation_Record_Id", "Business_Taxation_Record_Type"); 
GO
CREATE TABLE "Business_Taxation_Event_Description" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Business_Taxation_Event_Id" integer, "Language_Id" integer, "Locale_Id" integer, "Priority" integer, "Sequence" integer, "Short_Description" varchar(255), "Long_Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Event_Description_On_Business_Taxation_Event_Id" ON "Business_Taxation_Event_Description" ("Business_Taxation_Event_Id"); 
GO
CREATE Index "Index_Business_Taxation_Event_Description_On_Language_Id" ON "Business_Taxation_Event_Description" ("Language_Id"); 
GO
CREATE Index "Index_Business_Taxation_Event_Description_On_Locale_Id" ON "Business_Taxation_Event_Description" ("Locale_Id"); 
GO
CREATE TABLE "Business_Taxation_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Business_Taxation_Type_Nested_Set_Index" ON "Business_Taxation_Type" ("Parent_Id", "LeftValue", "RightValue"); 
GO
CREATE TABLE "Business_Taxation_Relationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Business_Taxation_Relationship_Type_Id" integer, "Description" varchar(255), "Taxation_Event_Id_From" integer, "Taxation_Event_Id_To" integer, "Status_Type_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Relationship_On_Business_Taxation_Relationship_Type_Id" ON "Business_Taxation_Relationship" ("Business_Taxation_Relationship_Type_Id"); 
GO
CREATE Index "Index_Business_Taxation_Relationship_On_Status_Type_Id" ON "Business_Taxation_Relationship" ("Status_Type_Id"); 
GO
CREATE TABLE "Business_Taxation_Relationship_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Relationship_Type_On_Parent_Id" ON "Business_Taxation_Relationship_Type" ("Parent_Id"); 
GO
CREATE TABLE "Business_Taxation_Status" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Comments" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Business_Taxation_Task" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Business_Taxation_Task_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Task_Type_On_Parent_Id" ON "Business_Taxation_Task_Type" ("Parent_Id"); 
GO
CREATE TABLE "Business_Taxation_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Business_Taxation_Event_Id" integer, "Party_Id" integer, "Business_Taxation_Party_Role_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Party_Role_On_Business_Taxation_Event_Id" ON "Business_Taxation_Party_Role" ("Business_Taxation_Event_Id"); 
GO
CREATE Index "Index_Business_Taxation_Party_Role_On_Party_Id" ON "Business_Taxation_Party_Role" ("Party_Id"); 
GO
CREATE Index "Index_Business_Taxation_Party_Role_On_Business_Taxation_Party_Role_Type_Id" ON "Business_Taxation_Party_Role" ("Business_Taxation_Party_Role_Type_Id"); 
GO
CREATE TABLE "Business_Taxation_Party_Role_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Party_Role_Type_On_Parent_Id" ON "Business_Taxation_Party_Role_Type" ("Parent_Id"); 
GO
CREATE TABLE "Business_Taxation_Account_Root" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Status" integer, "Business_Taxation_Account_Id" integer, "Business_Taxation_Account_Type" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Type" varchar(255), "Business_Taxation_Account_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Btai_2" ON "Business_Taxation_Account_Root" ("Business_Taxation_Account_Id", "Business_Taxation_Account_Type"); 
GO
CREATE Index "Btai_3" ON "Business_Taxation_Account_Root" ("Business_Taxation_Account_Type_Id"); 
GO
CREATE TABLE "Business_Taxation_Account_Status_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Business_Taxation_Account_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Account_Type_On_Parent_Id" ON "Business_Taxation_Account_Type" ("Parent_Id"); 
GO
CREATE TABLE "Business_Taxation_Account_Status" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Business_Taxation_Account_Relationship_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Account_Relationship_Type_On_Parent_Id" ON "Business_Taxation_Account_Relationship_Type" ("Parent_Id"); 
GO
CREATE TABLE "Business_Taxation_Account_Relationship" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Business_Taxation_Account_Relationship_Type_Id" integer, "Description" varchar(255), "Business_Taxation_Account_Root_Id_From" integer, "Business_Taxation_Account_Root_Id_To" integer, "Status_Type_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Account_Relationship_On_Business_Taxation_Account_Relationship_Type_Id" ON "Business_Taxation_Account_Relationship" ("Business_Taxation_Account_Relationship_Type_Id"); 
GO
CREATE Index "Index_Business_Taxation_Account_Relationship_On_Status_Type_Id" ON "Business_Taxation_Account_Relationship" ("Status_Type_Id"); 
GO
CREATE TABLE "Business_Taxation_Account_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Business_Taxation_Account_Root_Id" integer, "Party_Id" integer, "Business_Taxation_Account_Party_Type_Id" integer, "Is_Default_Billing_Account_Flag" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Account_Party_Role_On_Business_Taxation_Account_Root_Id" ON "Business_Taxation_Account_Party_Role" ("Business_Taxation_Account_Root_Id"); 
GO
CREATE Index "Index_Business_Taxation_Account_Party_Role_On_Party_Id" ON "Business_Taxation_Account_Party_Role" ("Party_Id"); 
GO
CREATE Index "Index_Business_Taxation_Account_Party_Role_On_Business_Taxation_Account_Party_Type_Id" ON "Business_Taxation_Account_Party_Role" ("Business_Taxation_Account_Party_Type_Id"); 
GO
CREATE TABLE "Business_Taxation_Account_Party_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Account_Party_Type_On_Parent_Id" ON "Business_Taxation_Account_Party_Type" ("Parent_Id"); 
GO
CREATE TABLE "Business_Account_Taxation_Task" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Business_Taxation_Task_Id" integer, "Business_Taxation_Account_Id" integer, "Description" varchar(255), "Comments" varchar(255), "Entered_Date" DATETIME, "requested_Date" DATETIME, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Account_Taxation_Task_On_Business_Taxation_Task_Id" ON "Business_Account_Taxation_Task" ("Business_Taxation_Task_Id"); 
GO
CREATE Index "Index_Business_Account_Taxation_Task_On_Business_Taxation_Account_Id" ON "Business_Account_Taxation_Task" ("Business_Taxation_Account_Id"); 
GO
CREATE TABLE "Business_Taxation_Agreement_Role_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Agreement_Role_Type_On_Parent_Id" ON "Business_Taxation_Agreement_Role_Type" ("Parent_Id"); 
GO
CREATE TABLE "Business_Taxation_Agreement_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Business_Taxation_Event_Id" integer, "Business_Taxation_Event_Type" varchar(255), "Agreement_Id" integer, "Business_Taxation_Agreement_Role_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Business_Taxation_Agreement_Role_On_Agreement_Id" ON "Business_Taxation_Agreement_Role" ("Agreement_Id"); 
GO
CREATE Index "Index_Business_Taxation_Agreement_Role_On_Business_Taxation_Agreement_Role_Type_Id" ON "Business_Taxation_Agreement_Role" ("Business_Taxation_Agreement_Role_Type_Id"); 
GO
CREATE TABLE "Financial_Taxation" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Money_Id" integer, "apply_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Financial_Taxation_Assignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Financial_Taxation_Id" integer, "Financial_Taxation_Record_Id" integer, "Financial_Taxation_Record_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Financial_Taxation_Account" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Account_Number" varchar(255), "Agreement_Id" integer, "Balance_Id" integer, "Balance_Date" date, "Calculate_Balance" BIT, "Payment_Due_Id" integer, "Due_Date" date, "Financial_Account_Id" integer, "Financial_Account_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Base_Taxation_Context" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Business_Taxation_Event_Id" integer, "Taxation_Context_Record_Id" integer, "Taxation_Context_Record_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Taxation_Context_Record_Index" ON "Base_Taxation_Context" ("Taxation_Context_Record_Id", "Taxation_Context_Record_Type"); 
GO
CREATE TABLE "Skill_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Party_Skill" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Party_Id" integer, "Skill_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Party_Skill_Index" ON "Party_Skill" ("Party_Id", "Skill_Type_Id"); 
GO
CREATE TABLE "Good_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Deliverable" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Deliverable_Record_Type" varchar(255), "Deliverable_Record_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Deliverable_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Requirement" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Type" varchar(255), "Projected_Completion_Time" integer, "Estimated_budget_Money_Id" integer, "Requirement_Type_Id" integer, "Requirement_Record_Id" integer, "Requirement_Record_Type" varchar(255), "Fixed_Asset_Id" integer, "Product_Id" integer, "Deliverable_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Requirement_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Requirement_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Requirement_Id" integer, "Party_Id" integer, "Role_Type_Id" integer, "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Valid_From" DATETIME, "Valid_To" DATETIME, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Requirement_Party_Role_Index" ON "Requirement_Party_Role" ("Requirement_Id", "Party_Id", "Role_Type_Id"); 
GO
CREATE TABLE "Associated_Work_Effort" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Associated_Record_Id" integer, "Associated_Record_Type" varchar(255)); 
GO
CREATE Index "Associated_Record_Id_Type_Index" ON "Associated_Work_Effort" ("Associated_Record_Id", "Associated_Record_Type"); 
GO
CREATE Index "Index_Associated_Work_Effort_On_Work_Effort_Id" ON "Associated_Work_Effort" ("Work_Effort_Id"); 
GO
CREATE TABLE "Work_Effort_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Work_Effort_Pupose_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Work_Effort_Association_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Valid_From_Role_Type_Id" integer, "Valid_To_Role_Type_Id" integer, "Name" varchar(255), "Description" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Work_Effort_Association_Type_On_Valid_From_Role_Type_Id" ON "Work_Effort_Association_Type" ("Valid_From_Role_Type_Id"); 
GO
CREATE Index "Index_Work_Effort_Association_Type_On_Valid_To_Role_Type_Id" ON "Work_Effort_Association_Type" ("Valid_To_Role_Type_Id"); 
GO
CREATE TABLE "Work_Effort_Association" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Association_Type_Id" integer, "Description" varchar(255), "Work_Effort_Id_From" integer, "Work_Effort_Id_To" integer, "Role_Type_Id_From" integer, "Role_Type_Id_To" integer, "Relationship_Type_Id" integer, "Effective_From" DATETIME, "Effective_Through" DATETIME, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Lag" integer, "Lag_Unit" varchar(255)); 
GO
CREATE Index "Index_Work_Effort_Association_On_Relationship_Type_Id" ON "Work_Effort_Association" ("Relationship_Type_Id"); 
GO
CREATE TABLE "Work_Order_Item_Fulfillment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Order_Line_Item_Id" integer, "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Work_Order_Item_Fulfillment_Index" ON "Work_Order_Item_Fulfillment" ("Work_Effort_Id", "Order_Line_Item_Id"); 
GO
CREATE TABLE "Work_Order_Item" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Order_Requirement_Commitment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Order_Line_Item_Id" integer, "Requirement_Id" integer, "Description" varchar(255), "Quantity" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Order_Item_Requirement_Fulfillment_Index" ON "Order_Requirement_Commitment" ("Order_Line_Item_Id", "Requirement_Id"); 
GO
CREATE TABLE "Work_Requirement_Fulfillment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Work_Effort_Id" integer, "Requirement_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Work_Order_Requirement_Fulfillment_Index" ON "Work_Requirement_Fulfillment" ("Work_Effort_Id", "Requirement_Id"); 
GO
CREATE TABLE "Work_Effort_Party_Assignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Role_Type_Id" integer, "Party_Id" integer, "assigned_From" DATETIME, "assigned_Through" DATETIME, "Comments" text, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Resource_allocation" integer); 
GO
CREATE Index "Index_Work_Effort_Party_Assignment_On_assigned_From" ON "Work_Effort_Party_Assignment" ("assigned_From"); 
GO
CREATE Index "Index_Work_Effort_Party_Assignment_On_assigned_Through" ON "Work_Effort_Party_Assignment" ("assigned_Through"); 
GO
CREATE Index "Index_Work_Effort_Party_Assignment_On_Work_Effort_Id" ON "Work_Effort_Party_Assignment" ("Work_Effort_Id"); 
GO
CREATE Index "Index_Work_Effort_Party_Assignment_On_Party_Id" ON "Work_Effort_Party_Assignment" ("Party_Id"); 
GO
CREATE TABLE "Work_Effort_Inventory_Assignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Inventory_Entry_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Work_Effort_Inventory_Assignment_Index" ON "Work_Effort_Inventory_Assignment" ("Work_Effort_Id", "Inventory_Entry_Id"); 
GO
CREATE TABLE "Work_Effort_Fixed_Asset_Assignment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Fixed_Asset_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Work_Effort_Fixed_Asset_assign_Index" ON "Work_Effort_Fixed_Asset_Assignment" ("Work_Effort_Id", "Fixed_Asset_Id"); 
GO
CREATE TABLE "Work_Effort_Type_Association" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Type_Assoc_Type" integer, "Work_Effort_Type_Id_From" integer, "Work_Effort_Type_Id_To" integer, "Description" varchar(255), "Comments" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Work_Effort_Fixed_Asset_Standard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Fixed_Asset_Type_Id" integer, "Estimated_Quantity" decimal, "Estimated_Duration" decimal, "Estimated_Cost_Money_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Work_Effort_Fixed_Asset_Standard_On_Work_Effort_Id" ON "Work_Effort_Fixed_Asset_Standard" ("Work_Effort_Id"); 
GO
CREATE Index "Index_Work_Effort_Fixed_Asset_Standard_On_Fixed_Asset_Type_Id" ON "Work_Effort_Fixed_Asset_Standard" ("Fixed_Asset_Type_Id"); 
GO
CREATE TABLE "Work_Effort_Skill_Standard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Skill_Type_Id" integer, "Estimated_Number_People" decimal, "Estimated_Duration" decimal, "Estimated_Cost_Money_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Work_Effort_Skill_Standard_On_Work_Effort_Id" ON "Work_Effort_Skill_Standard" ("Work_Effort_Id"); 
GO
CREATE Index "Index_Work_Effort_Skill_Standard_On_Skill_Type_Id" ON "Work_Effort_Skill_Standard" ("Skill_Type_Id"); 
GO
CREATE TABLE "Work_Effort_Good_Standard" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Good_Type_Id" integer, "Estimated_Quantity" decimal, "Estimated_Cost_Money_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Work_Effort_Good_Standard_On_Work_Effort_Id" ON "Work_Effort_Good_Standard" ("Work_Effort_Id"); 
GO
CREATE TABLE "Work_Effort_Inventory_Produced" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Inventory_Entry_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Work_Effort_Inventory_Produced_On_Work_Effort_Id" ON "Work_Effort_Inventory_Produced" ("Work_Effort_Id"); 
GO
CREATE Index "Index_Work_Effort_Inventory_Produced_On_Inventory_Entry_Id" ON "Work_Effort_Inventory_Produced" ("Inventory_Entry_Id"); 
GO
CREATE TABLE "Work_Effort_Deliverable_Produced" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Deliverable_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Work_Effort_Deliverable_Produced_On_Work_Effort_Id" ON "Work_Effort_Deliverable_Produced" ("Work_Effort_Id"); 
GO
CREATE Index "Index_Work_Effort_Deliverable_Produced_On_Deliverable_Id" ON "Work_Effort_Deliverable_Produced" ("Deliverable_Id"); 
GO
CREATE TABLE "Work_Effort_Fixed_Asset_Serviced" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Fixed_Asset_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Work_Effort_Fixed_Asset_Serviced_On_Work_Effort_Id" ON "Work_Effort_Fixed_Asset_Serviced" ("Work_Effort_Id"); 
GO
CREATE Index "Index_Work_Effort_Fixed_Asset_Serviced_On_Fixed_Asset_Id" ON "Work_Effort_Fixed_Asset_Serviced" ("Fixed_Asset_Id"); 
GO
CREATE TABLE "Party_Resource_Availability" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "From_Date" DATETIME, "To_Date" DATETIME, "Party_Id" integer, "Party_Type_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Party_Resource_Availability_On_From_Date" ON "Party_Resource_Availability" ("From_Date"); 
GO
CREATE Index "Index_Party_Resource_Availability_On_To_Date" ON "Party_Resource_Availability" ("To_Date"); 
GO
CREATE Index "Index_Party_Resource_Availability_On_Party_Type_Id" ON "Party_Resource_Availability" ("Party_Type_Id"); 
GO
CREATE Index "Index_Party_Resource_Availability_On_Party_Id" ON "Party_Resource_Availability" ("Party_Id"); 
GO
CREATE TABLE "Party_Resource_Availability_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Internal_Identifier" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Party_Resource_Availability_Type_On_Internal_Identifier" ON "Party_Resource_Availability_Type" ("Internal_Identifier"); 
GO
CREATE Index "Index_Party_Resource_Availability_Type_On_Description" ON "Party_Resource_Availability_Type" ("Description"); 
GO
CREATE TABLE "Transportation_Route" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Description" varchar(255), "Comments" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Transportation_Route_Segment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Description" varchar(255), "Comments" varchar(255), "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Sequence" integer, "Estimated_Start" DATETIME, "Estimated_Arrival" DATETIME, "Actual_Start" DATETIME, "Actual_Arrival" DATETIME, "Start_Mileage" integer, "End_Mileage" integer, "Fuel_Used" integer, "Transportation_Route_Id" integer, "From_Transportation_Route_stop_Id" integer, "To_Transportation_Route_stop_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Transportation_Route_Stop" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Description" varchar(255), "Postal_Address_Id" integer, "GeoLocation" varchar(255), "Sequence" integer, "External_Identifier" varchar(255), "External_Id_Source" varchar(255), "Transportation_Route_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Associated_Transportation_Route" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Transportation_Route_Id" integer, "Associated_Record_Id" integer, "Associated_Record_Type" varchar(255)); 
GO
CREATE Index "Associated_Route_Record_Id_Type_Index" ON "Associated_Transportation_Route" ("Associated_Record_Id", "Associated_Record_Type"); 
GO
CREATE Index "Associated_Route_Transportation_Route_Id_Index" ON "Associated_Transportation_Route" ("Transportation_Route_Id"); 
GO
CREATE TABLE "Role_Type_Work_Effort" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Role_Type_Id" integer, "Work_Effort_Id" integer); 
GO
CREATE Index "Role_Type_Work_Effort_Index" ON "Role_Type_Work_Effort" ("Role_Type_Id", "Work_Effort_Id"); 
GO
CREATE TABLE "Position_Type" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Internal_Identifier" varchar(255), "External_Identifier" varchar(255), "External_Identifer_Source" varchar(255), "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Title" varchar(255), "Benefit_Percent" decimal(8,2), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Position_Type_On_Parent_Id" ON "Position_Type" ("Parent_Id"); 
GO
CREATE Index "Index_Position_Type_On_LeftValue" ON "Position_Type" ("LeftValue"); 
GO
CREATE Index "Index_Position_Type_On_RightValue" ON "Position_Type" ("RightValue"); 
GO
CREATE TABLE "Position" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Party_Id" integer, "Position_Type_Id" integer, "Estimated_From_Date" date, "Estimated_Through_Date" date, "Salary_Flag" BIT, "exempt_Flag" BIT, "full_Time_Flag" BIT, "temporary_Flag" BIT, "Actual_From_Date" date, "Actual_Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Position_On_Position_Type_Id" ON "Position" ("Position_Type_Id"); 
GO
CREATE Index "Index_Position_On_Party_Id" ON "Position" ("Party_Id"); 
GO
CREATE TABLE "Position_Fulfillment" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "held_by_Party_Id" integer, "Position_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Position_Fulfillment_On_Position_Id" ON "Position_Fulfillment" ("Position_Id"); 
GO
CREATE Index "Index_Position_Fulfillment_On_held_by_Party_Id" ON "Position_Fulfillment" ("held_by_Party_Id"); 
GO
CREATE TABLE "Time_sheet_Entry" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Work_Effort_Id" integer, "Description" varchar(255), "Worked_Date" date, "Entered_Date" DATETIME, "regular_hours_Worked" decimal(5,2), "overTime_hours_Worked" decimal(5,2), "Start_Time" DATETIME, "End_Time" DATETIME, "Comments" text, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Time_sheet_Entry_On_Work_Effort_Id" ON "Time_sheet_Entry" ("Work_Effort_Id"); 
GO
CREATE TABLE "Time_sheet_Entry_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Time_sheet_Entry_Id" integer, "Party_Id" integer, "Role_Type_Id" integer, "From_Date" date, "Through_Date" date, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Index_Time_sheet_Entry_Party_Role_On_Time_sheet_Entry_Id" ON "Time_sheet_Entry_Party_Role" ("Time_sheet_Entry_Id"); 
GO
CREATE Index "Index_Time_sheet_Entry_Party_Role_On_Party_Id" ON "Time_sheet_Entry_Party_Role" ("Party_Id"); 
GO
CREATE Index "Index_Time_sheet_Entry_Party_Role_On_Role_Type_Id" ON "Time_sheet_Entry_Party_Role" ("Role_Type_Id"); 
GO
CREATE TABLE "Experience" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "staffing_Position" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Internal_Identifier" varchar(255), "Custom_Fields" text, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Wc_Code" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Party_Id" integer, "Wc_Code" varchar(255), "Description" varchar(255), "Internal_Identifier" varchar(255), "Custom_Fields" text, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Shift" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Party_Id" integer, "Description" varchar(255), "Internal_Identifier" varchar(255), "Custom_Fields" text, "Shift_Start" DATETIME, "Shift_End" DATETIME, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Candidate_Submission" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Order_Line_Item_Id" integer, "Description" varchar(255), "Internal_Identifier" varchar(255), "Custom_Fields" text, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Resume" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Party_Id" integer, "File_Content" text, "Xml_Resume_Data" text); 
GO
CREATE TABLE "Calendar_Event" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Title" varchar(255), "StartTime" DATETIME, "EndTime" DATETIME, "All_Day" BIT Default 'f', "Is_Public" BIT Default 't', "Description" text, "List_View_Image_Url" varchar(255), "Status" varchar(255), "Custom_Fields" text, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Calendar_Event_Id_Index" ON "Calendar_Event" ("Id"); 
GO
CREATE Index "Calendar_Event_StartTime_Index" ON "Calendar_Event" ("StartTime"); 
GO
CREATE Index "Calendar_Event_EndTime_Index" ON "Calendar_Event" ("EndTime"); 
GO
CREATE TABLE "Calendar_Event_Party_Role" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Party_Id" integer, "Role_Type_Id" integer, "Calendar_Event_Id" integer, "Description" text, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "CalendarEventPartyRole_Id_Index" ON "Calendar_Event_Party_Role" ("Id"); 
GO
CREATE Index "CalendarEventPartyRole_Party_Id_Index" ON "Calendar_Event_Party_Role" ("Party_Id"); 
GO
CREATE Index "CalendarEventPartyRole_EventId_Index" ON "Calendar_Event_Party_Role" ("Calendar_Event_Id"); 
GO
CREATE Index "CalendarEventPartyRole_RoleType_Id_Index" ON "Calendar_Event_Party_Role" ("Role_Type_Id"); 
GO
CREATE TABLE "Calendar_Invite" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Title" varchar(255), "Invite_text" text, "Calendar_Event_Id" integer, "Inviter_Id" integer, "Invitee_Id" integer, "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE Index "Calendar_Invite_Id_Index" ON "Calendar_Invite" ("Id"); 
GO
CREATE Index "CalendarInvite_Event_Id_Index" ON "Calendar_Invite" ("Calendar_Event_Id"); 
GO
CREATE Index "CalendarInvite_Inviter_Id_Index" ON "Calendar_Invite" ("Inviter_Id"); 
GO
CREATE Index "CalendarInvite_Invitee_Id_Index" ON "Calendar_Invite" ("Invitee_Id"); 
GO
CREATE TABLE "Project" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Description" varchar(255), "Project_Record_Id" integer, "Project_Record_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL); 
GO
CREATE TABLE "Work_Effort" ("Id" INTEGER PRIMARY KEY IDENTITY NOT NULL, "Parent_Id" integer, "LeftValue" integer, "RightValue" integer, "Facility_Id" integer, "Projected_Cost_Money_Id" integer, "Actual_Cost_Money_Id" integer, "Fixed_Asset_Id" integer, "Work_Effort_Pupose_Type_Id" integer, "Work_Effort_Type_Id" integer, "Description" varchar(255), "Type" varchar(255), "Start_At" DATETIME, "End_At" DATETIME, "Work_Effort_Record_Id" integer, "Work_Effort_Record_Type" varchar(255), "Work_Effort_Item_Id" integer, "Work_Effort_Item_Type" varchar(255), "Created_At" DATETIME NOT NULL, "Updated_At" DATETIME NOT NULL, "Comments" text, "Percent_Done" integer, "Duration" integer, "Duration_Unit" varchar(255), "Effort" integer, "Effort_Unit" varchar(255), "Base_Line_Start_At" DATETIME, "Base_Line_End_At" DATETIME, "Base_Line_Percent_Done" integer, "Project_Id" integer, "Sequence" integer Default 0); 
GO
CREATE Index "Work_Effort_Record_Id_Type_Index" ON "Work_Effort" ("Work_Effort_Record_Id", "Work_Effort_Record_Type"); 
GO
CREATE Index "Work_Item_Index" ON "Work_Effort" ("Work_Effort_Item_Type", "Work_Effort_Item_Id"); 
GO
CREATE Index "Index_Work_Effort_On_Fixed_Asset_Id" ON "Work_Effort" ("Fixed_Asset_Id"); 
GO
CREATE Index "Index_Work_Effort_On_finished_At" ON "Work_Effort" ("End_At"); 
GO
CREATE Index "Work_Effort_Project_Index" ON "Work_Effort" ("Project_Id"); 
GO