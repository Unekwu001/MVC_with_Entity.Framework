using Hotel.Models;

namespace Hotel.Repositories.Hotels_Repository
{
    public interface IHotelRepository
	{
		List<HotelModel> GetHotels();
        Models.HotelModel GetHotelById(int id);


    }
}
