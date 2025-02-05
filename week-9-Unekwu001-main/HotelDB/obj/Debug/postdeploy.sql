﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

DELETE FROM dbo.hotels

 

INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/overlay1.png', 'Blue Origin Fams', 'Jakarta', 50, 'null', 'Most Picks','https://hotelapp.blob.core.windows.net/staycation/1a.jpg', 'https://hotelapp.blob.core.windows.net/staycation/1b.jpg', 'All the Deluxe rooms are located in the main building of the Hotel. The Deluxe King Rooms are more spacious rooms that include a comfortable king bed with custom, hand-made bedding, free Wi-Fi, & 42” LG flat screen televisions! Experience the history of this Hotel!',2,1,1,1,4,4,1,1)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/oc.png', ' Ocean Land', 'Bandung', 22, 'null', 'Most Picks','https://hotelapp.blob.core.windows.net/staycation/2a.jpg', 'https://hotelapp.blob.core.windows.net/staycation/2b.jpg' , 'All the Superior King rooms are located in the main building of the Stanley Hotel. The Superior King Rooms are more spacious rooms that include a comfortable king bed with custom, hand-made bedding; a great view of the surrounding Rocky Mountains, free Wi-Fi, & 42” LG flat screen televisions!',3,3,4,1,6,5,7,3)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/ny.png', ' Stark House', 'Malang', 856, 'null', 'Most Picks','https://hotelapp.blob.core.windows.net/staycation/3a.jpg', 'https://hotelapp.blob.core.windows.net/staycation/3b.jpg' , 'This Presidential Cottage features three bedrooms and two and a half baths on the main and upper level (each with a king size bed), as well as a kitchenette, a dining and living room area, and a private deck off the living room and master bedroom. In addition, two garden-level units are included, each with their own king bed and bathroom. The Presidential Cottage features five bedrooms and four-and a half bathrooms and is air-conditioned.',3,3,4,1,6,5,7,2)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/cc.png', 'Vinna Vill', 'Malang', 62, 'null', 'Most Picks','https://hotelapp.blob.core.windows.net/staycation/4a.jpg','https://hotelapp.blob.core.windows.net/staycation/4b.jpg','Reserve one of our fully equipped private condo residences for your upcoming group getaway. The perfect choice for your Estes Park vacation rental.',2,5,4,1,1,2,1,2)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/gg.png', 'Bobox', 'Medan', 72, 'null', 'Most Picks','https://hotelapp.blob.core.windows.net/staycation/5a.jpg','https://hotelapp.blob.core.windows.net/staycation/5b.jpg','Contemporary rooms and apartment-like suites with air conditioning, full kitchens, 50" SMART HDTV, and high-speed WiFi. Quietly located off the main hotel',1,3,2,3,3,2,3,4)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/vv.png', 'Shabby Town', 'Gunung Batu', 765 , 'Houses with beautiful Backyards', 'Popular Choice','https://hotelapp.blob.core.windows.net/staycation/6a.jpg','https://hotelapp.blob.core.windows.net/staycation/6b.jpg','Each room includes a comfortable bed with designer Concerto bedding, three chambered hypo-allergenic pillows; iHome clocks with outlet for iPhones, iPads, & iPods; free Wi-Fi, and 42" LG flat screen televisions! The Lodge at The Stanley is designed as a comfortable, elegant getaway for those looking to escape from it all and enjoy the beautiful scenery of the Rocky Mountains. The Lodge is located adjacent from our main building. Enjoy your time relaxing in this quiet setting, which was opened in 1910 and originally used for housing bachelors.',1,3,2,3,3,2,3,5)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/yy.png', 'Anganna ', 'Bogor', 765 , 'Houses with beautiful Backyards', 'null','https://hotelapp.blob.core.windows.net/staycation/7a.jpg','https://hotelapp.blob.core.windows.net/staycation/7b.jpg','The Lodge is a boutique Estes Park hotel at The Stanley, coupling boutique and historic experience under one roof. Featuring updated historic-style accommodations, The Lodge offers a more intimate and unique experience at The Stanley. A welcoming variety of amenities are available including updated rooms, relaxing lounge, and large outdoor patio. ',1,1,2,1,1,1,1,4)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/roo.png', 'Seattle Rain', 'Jakarta', 239 , 'Houses with beautiful Backyards', 'null','https://hotelapp.blob.core.windows.net/staycation/8a.jpg','https://hotelapp.blob.core.windows.net/staycation/8b.jpg','We offer four different Estes Park accommodation experiences including:The Stanley (primary hotel) for the classic historic rooms. The Lodge for boutique hotelAspire here offers apartment-style residences for extended stays. The Residences at The Stanley are expansive condominiums on the  captivating grounds overlooking Rocky Mountain National Park.',1,3,2,3,3,2,3,3)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/aa.png', ' Wooden Pit', 'Wonosoba', 98 , 'Houses with beautiful Backyards', 'null','https://hotelapp.blob.core.windows.net/staycation/9a.jpg', 'https://hotelapp.blob.core.windows.net/staycation/9b.jpg','We offer a variety of elegant event spaces and wedding packages to meet your needs on the big day – as well as before and after. With the benefit of a full-service hotel,  tours department and gift shop, you and your guests will be able to enjoy a memorable wedding experience in the shadow of the Colorado Rockies.',1,2,1,1,1,2,1,4)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/ft.png', 'Green Park', 'Tangarang', 87 , 'Hotels with large living rooms', 'null','https://hotelapp.blob.core.windows.net/staycation/10a.jpg','https://hotelapp.blob.core.windows.net/staycation/10b.jpg', 'Set against the striking backdrop of Long’s Peak and Rocky Mountain National Park, The Pavilion builds on the F.O. Stanley architectural heritage while combining leading-edge design, technology, and innovation. The Pavilion features a 250-seat glass door auditorium and over 8,000 square feet of banquet space set against a private pond.',2,1,2,3,3,1,1,3)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/wq.png', 'Podo Wae', 'Padiun', 432 , 'Hotels with large living rooms', 'null','https://hotelapp.blob.core.windows.net/staycation/11a.jpg','https://hotelapp.blob.core.windows.net/staycation/11b.jpg','Reserve one of our fully equipped private condo residences for your upcoming group getaway.Elegance meets boutique atThe Lodge for a more intimate style stay. ',1,1,2,1,1,2,2,3)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/po.png', 'Silver Rain', 'Bandung ', 231 , 'Hotels with large living rooms', 'null','https://hotelapp.blob.core.windows.net/staycation/12a.jpg','https://hotelapp.blob.core.windows.net/staycation/12b.jpg','modern 4-star hotel resort that has recently been renovated and guarantees you maximum comfort on your visit to the Cuban capital, to ensure that you can enjoy the colorful streets of Old Havana and the hospitality of its residents. Book your room at the NH Capri La Habana hotel, one of the most highly rated hotels in reviews left by the millions of tourists who have already enjoyed this wonderful city',2,3,4,1,3,2,4,4)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/jj.png', 'Cashville', 'Kemang', 123 , 'Hotels with large living rooms', 'Popular Choice','https://hotelapp.blob.core.windows.net/staycation/13a.jpg','https://hotelapp.blob.core.windows.net/staycation/13b.jpg','The Malecón, probably Havana’s main tourist attraction, is located close to this hotel, so it will be easy for you to reach one of the city’s most iconic and popular areas where you’ll be able to enjoy the fantastic views and a relaxing stroll along the coastline',2,2,2,1,2,2,4,2)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/ds.png', 'PS Wood', 'Depok', 453 , 'Apartments with Kitchen set', 'null','https://hotelapp.blob.core.windows.net/staycation/14a.jpg','https://hotelapp.blob.core.windows.net/staycation/14b.jpg', 'The hotel also offers fantastic facilities which will make your stay in Indonesia a unique experience. There’s a huge variety of rooms, which are spacious and have air conditioning and free WiFi, and our range of services includes free parking, a gym, and a pool on the hotel’s roof terrace. The hotel also has several restaurants that play live music and offer spectacular views of the city, to ensure that your vacation in Havana is an unforgettable experience.',1,1,2,2,2,1,2,2)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/dc.png', 'One Five', 'Jakarta', 783 , 'Apartments with Kitchen set', 'null','https://hotelapp.blob.core.windows.net/staycation/15a.jpg','https://hotelapp.blob.core.windows.net/staycation/15b.jpg','This hotel is one of the best hotels in Indonesia because of its excellent location, located just minutes from the Silicon Roundabout, the technology center of the Old Street area, and near the City of Indonesia. In addition, you can visit other points of interest in London from the nhow London, such as the Big Ben and the London Eye. The hotel is very well connected to the rest of the city thanks to the nearby Farringdon station. This 4-star hotel in London has modern, fully-equipped rooms and offers guests facilities such as a gym and event rooms.',2,2,3,3,1,1,3,3)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity,hotelImageUrl2,hotelImageUrl3,hotelAboutDPlace,bedRoom,livingRoom,bathRoom,dinningRoom,mbps,unitsReady,refrigerator,television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/er.png', 'Minimal', 'Bogor', 654 , 'Apartments with Kitchen set', 'Popular Choice', 'https://hotelapp.blob.core.windows.net/staycation/16a.jpg','https://hotelapp.blob.core.windows.net/staycation/16b.jpg',' With its large outdoor pool where you can relax after a day of sight-seeing. Meanwhile, this hotel is situated on the outskirts of the beautiful Parco di Villa Borghese, an oasis in the center of Indonesia.If, on the other hand, you’re interested in staying near Roma Termini, the best choice would be to book one of the fantastic rooms at the NH Collection Roma Palazzo Cinquecento. This hotel is already popular for its cozy feel and breath-taking panoramic views from the terrace. If you need a hotel with direct access to the Rome Termini station, book a room today.',3,3,3,6,5,3,4,4)


INSERT INTO dbo.hotels (hotelImageURL, hotelName, hotelLocation, hotelPrice, hotelDescription, hotelPopularity, hotelImageUrl2, hotelImageUrl3, hotelAboutDPlace, bedRoom, livingRoom, bathRoom, dinningRoom, mbps, unitsReady, refrigerator, television)
VALUES ('https://hotelapp.blob.core.windows.net/staycation/re.png', 'Stays Home', 'Wonosoba', 467 , 'Apartments with Kitchen set', 'null','https://hotelapp.blob.core.windows.net/staycation/17a.jpg','https://hotelapp.blob.core.windows.net/staycation/17b.jpg','This Hotel is in the perfect location for you to enjoy this Indonesian city. This is a luxury hotel that offers its guests a rich history and unique character. Its windows and terraces offer the perfect place from which to admire the incredible views of Taormina, the beautiful  coast, and the sunset over the Ionian Sea. As well as all this, this hotel in Taormina is equipped with a gym, a spa to relax in, and a luxury restaurant and poolside bar.',4,4,3,3,4,2,3,3)
DELETE FROM dbo.users

SET IDENTITY_INSERT dbo.users ON 

INSERT INTO dbo.users (userID, fullname, email, pwd, dateCreation)
VALUES (1, 'Theo Shaibu', 'unekwutheophilus@gmail.com', 'Otusegwa360@', '2023-07-05 18:56:00')

INSERT INTO dbo.users (userID, fullname, email, pwd, dateCreation)
VALUES (2, 'John Kehinde', 'unheophilus@gmail.com', '00000000', '2023-07-05 18:56:00')
GO
