using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Hotel.Models;


//THE SCAFFOLDER COMMAND
//Scaffold-DbContext "Data Source=THEO;Integrated Security=True;database=HotelDB;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Connect Timeout=60;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models



public partial class TheoDbContext : DbContext
{
    public TheoDbContext()
    {
    }

    public TheoDbContext(DbContextOptions<TheoDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<HotelModel> Hotels { get; set; }

    public virtual DbSet<SignUpModel> Users { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
 
        => optionsBuilder.UseSqlServer("Data Source=THEO;Integrated Security=True;database=HotelDB;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Connect Timeout=60;Encrypt=False;Trust Server Certificate=False;Command Timeout=0");





    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<HotelModel>(entity =>
        {
            entity.HasKey(e => e.HotelId).HasName("PK__hotels__17ADC492CC3DC2DA");

            entity.ToTable("hotels");

            entity.Property(e => e.HotelId).HasColumnName("hotelID");
            entity.Property(e => e.BathRoom).HasColumnName("bathRoom");
            entity.Property(e => e.BedRoom).HasColumnName("bedRoom");
            entity.Property(e => e.DinningRoom).HasColumnName("dinningRoom");
            entity.Property(e => e.HotelAboutDplace)
                .IsUnicode(false)
                .HasColumnName("hotelAboutDPlace");
            entity.Property(e => e.HotelDescription)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("hotelDescription");
            entity.Property(e => e.HotelImageUrl)
                .HasMaxLength(500)
                .IsUnicode(false)
                .HasColumnName("hotelImageURL");
            entity.Property(e => e.HotelImageUrl2)
                .HasMaxLength(500)
                .IsUnicode(false)
                .HasColumnName("hotelImageUrl2");
            entity.Property(e => e.HotelImageUrl3)
                .HasMaxLength(500)
                .IsUnicode(false)
                .HasColumnName("hotelImageUrl3");
            entity.Property(e => e.HotelLocation)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("hotelLocation");
            entity.Property(e => e.HotelName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("hotelName");
            entity.Property(e => e.HotelPopularity)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("hotelPopularity");
            entity.Property(e => e.HotelPrice)
                .HasColumnType("decimal(18, 0)")
                .HasColumnName("hotelPrice");
            entity.Property(e => e.LivingRoom).HasColumnName("livingRoom");
            entity.Property(e => e.Mbps).HasColumnName("mbps");
            entity.Property(e => e.Refrigerator).HasColumnName("refrigerator");
            entity.Property(e => e.Television).HasColumnName("television");
            entity.Property(e => e.UnitsReady).HasColumnName("unitsReady");
        });






        modelBuilder.Entity<SignUpModel>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__users__CB9A1CDF2ABE3E13");

            entity.ToTable("users");

            entity.Property(e => e.UserId).HasColumnName("userID");
            entity.Property(e => e.DateCreation)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("smalldatetime")
                .HasColumnName("dateCreation");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.Fullname)
                .HasMaxLength(500)
                .IsUnicode(false)
                .HasColumnName("fullname");
            entity.Property(e => e.Pwd)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("pwd");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
