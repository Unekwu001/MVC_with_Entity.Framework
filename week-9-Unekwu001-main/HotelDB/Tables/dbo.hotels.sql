CREATE TABLE dbo.hotels
(
	hotelID INT PRIMARY KEY IDENTITY (1, 1),
	hotelImageURL VARCHAR(500) NOT NULL,
	hotelName VARCHAR(255) NOT NULL,
	hotelLocation VARCHAR(255) NOT NULL,
	hotelPrice DECIMAL ,
	hotelDescription VARCHAR(255) NOT NULL,
	hotelPopularity VARCHAR(255),
	hotelImageUrl2 VARCHAR(500) NULL,
	hotelImageUrl3 VARCHAR(500) NULL,
	hotelAboutDPlace VARCHAR(MAX) NULL,
	bedRoom int,
	livingRoom int,
	bathRoom int,
	dinningRoom int,
	mbps int,
	unitsReady int,
	refrigerator int,
	television int
)
