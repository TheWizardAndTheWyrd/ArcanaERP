//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ArcanaErp.Core.Models.Reference
{
    using System;
    using System.Collections.Generic;
    
    public partial class configuration_item_types_configuration_options
    {
        public int id { get; set; }
        public Nullable<int> configuration_item_type_id { get; set; }
        public Nullable<int> configuration_option_id { get; set; }
        public Nullable<bool> is_default { get; set; }
        public System.DateTime created_at { get; set; }
        public System.DateTime updated_at { get; set; }
    }
}
