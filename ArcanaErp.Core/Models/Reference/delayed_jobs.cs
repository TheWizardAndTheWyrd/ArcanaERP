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
    
    public partial class delayed_jobs
    {
        public int id { get; set; }
        public Nullable<int> priority { get; set; }
        public Nullable<int> attempts { get; set; }
        public string handler { get; set; }
        public string last_error { get; set; }
        public Nullable<System.DateTime> run_at { get; set; }
        public Nullable<System.DateTime> locked_at { get; set; }
        public Nullable<System.DateTime> failed_at { get; set; }
        public string locked_by { get; set; }
        public string queue { get; set; }
        public System.DateTime created_at { get; set; }
        public System.DateTime updated_at { get; set; }
    }
}
