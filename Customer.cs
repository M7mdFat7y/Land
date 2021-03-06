//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Land.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Customer()
        {
            this.Orders = new HashSet<Order>();
            this.OfferCustomerWishlists = new HashSet<OfferCustomerWishlist>();
            this.Ratings = new HashSet<Rating>();
        }
    
        public int CustomerID { get; set; }
        public string FullName { get; set; }
        public System.DateTime RegistrationDate { get; set; }
        public string PhoneNumber { get; set; }
        public string UserID { get; set; }
        public int ActivationID { get; set; }
        public int Country_Id { get; set; }
    
        public virtual ActivationStatu ActivationStatu { get; set; }
        public virtual Country Country { get; set; }
        public virtual Cart Cart { get; set; }
        public virtual wishlist wishlist { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Orders { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OfferCustomerWishlist> OfferCustomerWishlists { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rating> Ratings { get; set; }
    }
}
