using Hotel.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace Hotel.Repositories.Hotels_Repository
{
    public class HotelRepository : IHotelRepository
    {
        private readonly TheoDbContext _hoteldbContext;
        public HotelRepository(TheoDbContext dbContext)
        {
            _hoteldbContext = dbContext;
        }




        public  HotelModel GetHotelById(int id)
        {
            return _hoteldbContext.Hotels.FirstOrDefault(hotel => hotel.HotelId == id);
        }




        public List<HotelModel> GetHotels()
        {
            return _hoteldbContext.Hotels.ToList();
        }



    }
}
