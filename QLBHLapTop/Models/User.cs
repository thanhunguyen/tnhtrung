//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLBHLapTop.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public User()
        {
            this.Orders = new HashSet<Order>();
        }
    
        public int f_ID { get; set; }
        public string f_Username { get; set; }
        public string f_Password { get; set; }
        public string f_Name { get; set; }
        public string f_Email { get; set; }
        public System.DateTime f_DOB { get; set; }
        public int f_Permission { get; set; }
    
        public virtual ICollection<Order> Orders { get; set; }
    }
}
