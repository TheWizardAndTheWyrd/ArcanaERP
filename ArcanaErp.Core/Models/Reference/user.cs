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
    
    public partial class user
    {
        public int id { get; set; }
        public string username { get; set; }
        public string email { get; set; }
        public Nullable<int> party_id { get; set; }
        public string type { get; set; }
        public string salt { get; set; }
        public string crypted_password { get; set; }
        public Nullable<System.DateTime> last_login_at { get; set; }
        public Nullable<System.DateTime> last_logout_at { get; set; }
        public Nullable<System.DateTime> last_activity_at { get; set; }
        public Nullable<int> failed_logins_count { get; set; }
        public Nullable<System.DateTime> lock_expires_at { get; set; }
        public string remember_me_token { get; set; }
        public Nullable<System.DateTime> remember_me_token_expires_at { get; set; }
        public string reset_password_token { get; set; }
        public Nullable<System.DateTime> reset_password_token_expires_at { get; set; }
        public Nullable<System.DateTime> reset_password_email_sent_at { get; set; }
        public string activation_state { get; set; }
        public string activation_token { get; set; }
        public Nullable<System.DateTime> activation_token_expires_at { get; set; }
        public string security_question_1 { get; set; }
        public string security_answer_1 { get; set; }
        public string security_question_2 { get; set; }
        public string security_answer_2 { get; set; }
        public string auth_token { get; set; }
        public Nullable<System.DateTime> auth_token_expires_at { get; set; }
        public System.DateTime created_at { get; set; }
        public System.DateTime updated_at { get; set; }
        public string unlock_token { get; set; }
        public string last_login_from_ip_address { get; set; }
    }
}
