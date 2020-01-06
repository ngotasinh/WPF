using Microsoft.EntityFrameworkCore;
using QLcafe.Model;
using System.Configuration;

namespace QLcafe.Context
{
    public class DataContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=SINH\SQLEXPRESS;Initial Catalog=CoffeeWPF;Integrated Security=True;");
            base.OnConfiguring(optionsBuilder);
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<TableFood> TableFoods { get; set; }
    }
}
