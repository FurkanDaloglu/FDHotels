using FDHotelsProject.EntityLayer.Concrete;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDHotelsProject.DataAccessLayer.Concrete
{
    public class FDHotelsProjectContext: IdentityDbContext<AppUser, AppRole, int>
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=LAPTOP-7DCEO2K6\\SQLEXPRESS; database=DbFDHotelsProject; integrated security=true;TrustServerCertificate=true");
        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<Room>(entry =>
            {
                entry.ToTable("Rooms", tb => tb.HasTrigger("RoomDecrease"));
                entry.ToTable("Rooms", tb => tb.HasTrigger("RoomIncrease"));
            });
            builder.Entity<Staff>(entry =>
            {
                entry.ToTable("Staff", tb => tb.HasTrigger("StaffDecrease"));
                entry.ToTable("Staff", tb => tb.HasTrigger("StaffIncrease"));
            });
            builder.Entity<Guest>(entry =>
            {
                entry.ToTable("Guests", tb => tb.HasTrigger("GuestDecrease"));
                entry.ToTable("Guests", tb => tb.HasTrigger("GuestIncrease"));
            });
        }

        public DbSet<Room> Rooms { get; set; }
        public DbSet<Service> Services { get; set; }
        public DbSet<Staff> Staff { get; set; }
        public DbSet<Subscribe> Subscribes { get; set; }
        public DbSet<Testimonial> Testimonials { get; set; }
        public DbSet<About> Abouts { get; set; }
        public DbSet<Booking> Bookings { get; set; }
        public DbSet<Guest> Guests { get; set; }
        public DbSet<Contact> Contacts { get; set; }
        public DbSet<SendMessage> SendMessages { get; set; }
        public DbSet<MessageCategory> MessageCategories { get; set; }
        public DbSet<WorkLocation> WorkLocations { get; set; }
    }
}
