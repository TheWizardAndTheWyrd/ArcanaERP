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
    
    public partial class job_trackers
    {
        public int id { get; set; }
        public string job_name { get; set; }
        public string job_klass { get; set; }
        public string run_time { get; set; }
        public Nullable<System.DateTime> last_run_at { get; set; }
        public Nullable<System.DateTime> next_run_at { get; set; }
    }
}
