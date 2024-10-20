﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using NetTopologySuite.Geometries;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using WhereIsOurCar;
using WhereIsOurCar.Car.Entity;

#nullable disable

namespace WhereIsOurCar.Migrations
{
    [DbContext(typeof(AppDbContext))]
    [Migration("20230301213324_v1")]
    partial class v1
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "7.0.3")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.HasPostgresEnum(modelBuilder, "car_user_kind", new[] { "owner", "regular" });
            NpgsqlModelBuilderExtensions.HasPostgresExtension(modelBuilder, "postgis");
            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("WhereIsOurCar.Car.Entity.Car", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("LicencePlate")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("licence_plate");

                    b.HasKey("Id")
                        .HasName("pk_car");

                    b.ToTable("car", (string)null);
                });

            modelBuilder.Entity("WhereIsOurCar.Car.Entity.CarUser", b =>
                {
                    b.Property<int>("CarId")
                        .HasColumnType("integer")
                        .HasColumnName("car_id");

                    b.Property<int>("UserId")
                        .HasColumnType("integer")
                        .HasColumnName("user_id");

                    b.Property<CarUserKind>("CarUserKind")
                        .HasColumnType("car_user_kind")
                        .HasColumnName("car_user_kind");

                    b.HasKey("CarId", "UserId")
                        .HasName("pk_car_user");

                    b.HasIndex("UserId")
                        .HasDatabaseName("ix_car_user_user_id");

                    b.ToTable("car_user", (string)null);
                });

            modelBuilder.Entity("WhereIsOurCar.PositionHistory.Entity.PositionHistory", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<int>("CarId")
                        .HasColumnType("integer")
                        .HasColumnName("car_id");

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("timestamp with time zone")
                        .HasColumnName("created_at");

                    b.Property<Point>("Location")
                        .IsRequired()
                        .HasColumnType("geometry")
                        .HasColumnName("location");

                    b.Property<int>("ParkedById")
                        .HasColumnType("integer")
                        .HasColumnName("parked_by_id");

                    b.Property<string>("PhotoUrl")
                        .HasColumnType("text")
                        .HasColumnName("photo_url");

                    b.HasKey("Id")
                        .HasName("pk_position_history");

                    b.HasIndex("CarId")
                        .HasDatabaseName("ix_position_history_car_id");

                    b.HasIndex("ParkedById")
                        .HasDatabaseName("ix_position_history_parked_by_id");

                    b.ToTable("position_history", (string)null);
                });

            modelBuilder.Entity("WhereIsOurCar.User.Entity.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer")
                        .HasColumnName("id");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("AvatarUrl")
                        .HasColumnType("text")
                        .HasColumnName("avatar_url");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("text")
                        .HasColumnName("email");

                    b.Property<string>("Name")
                        .HasColumnType("text")
                        .HasColumnName("name");

                    b.Property<string>("Password")
                        .HasColumnType("text")
                        .HasColumnName("password");

                    b.HasKey("Id")
                        .HasName("pk_user");

                    b.HasIndex("Email")
                        .IsUnique()
                        .HasDatabaseName("ix_user_email");

                    b.ToTable("user", (string)null);
                });

            modelBuilder.Entity("WhereIsOurCar.Car.Entity.CarUser", b =>
                {
                    b.HasOne("WhereIsOurCar.Car.Entity.Car", "Car")
                        .WithMany()
                        .HasForeignKey("CarId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_car_user_car_car_id");

                    b.HasOne("WhereIsOurCar.User.Entity.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_car_user_user_user_id");

                    b.Navigation("Car");

                    b.Navigation("User");
                });

            modelBuilder.Entity("WhereIsOurCar.PositionHistory.Entity.PositionHistory", b =>
                {
                    b.HasOne("WhereIsOurCar.Car.Entity.Car", "Car")
                        .WithMany()
                        .HasForeignKey("CarId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_position_history_car_car_id");

                    b.HasOne("WhereIsOurCar.User.Entity.User", "ParkedBy")
                        .WithMany()
                        .HasForeignKey("ParkedById")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired()
                        .HasConstraintName("fk_position_history_user_parked_by_id");

                    b.Navigation("Car");

                    b.Navigation("ParkedBy");
                });
#pragma warning restore 612, 618
        }
    }
}
