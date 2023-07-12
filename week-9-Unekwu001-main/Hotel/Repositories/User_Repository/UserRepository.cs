using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using Hotel.Models;
 
using Microsoft.EntityFrameworkCore;

namespace Hotel.Repositories.User_Repository
{
    public class UserRepository : IUserRepository
	{

        private readonly TheoDbContext _userDbContext;
        public UserRepository(TheoDbContext dbContext)
        {
            _userDbContext = dbContext;
        }




        public SignUpModel GetUserByEmail(string email)
        {
            return _userDbContext.Users.FirstOrDefault(user => user.Email == email);
        }





        public SignUpModel GetUserByEmailAndPassword(string email, string password)
        {
            string hashedPassword = HashPassword(password);
            return _userDbContext.Users.FirstOrDefault(user => user.Email == email && user.Pwd == hashedPassword);
        }





        public void AddUser(SignUpModel user)
        {
            user.Pwd = HashPassword(user.Pwd);
            _userDbContext.Users.Add(user);
            _userDbContext.SaveChanges();
        }





        public List<SignUpModel> GetUsers()
        {
            return _userDbContext.Users.ToList();
        }






        public string HashPassword(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashedBytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
                return Convert.ToBase64String(hashedBytes);
            }
        }





    }
}

