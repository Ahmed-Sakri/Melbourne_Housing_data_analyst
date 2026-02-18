-- Create Housing table with primary key
create TABLE public.Housing
        (Suburb VARCHAR(50),
        Address VARCHAR(100),
        Rooms NUMERIC(10, 2),
        Type VARCHAR(25),
        Price NUMERIC(10, 2),
        Method VARCHAR(50),
        SellerG VARCHAR(50),
        Date Date,
        Distance NUMERIC(5, 2),
        Postcode NUMERIC(10, 2),
        Bedroom2 NUMERIC(10, 2),
        Bathroom NUMERIC(10, 2),
        Car NUMERIC(10, 2),
        Landsize NUMERIC(10, 2),
        BuildingArea NUMERIC(10, 2),
        YearBuilt NUMERIC(10, 2),
        CouncilArea VARCHAR(100),
        Lattitude NUMERIC(10, 5),
        Longtitude NUMERIC(10, 5),
        Regionname VARCHAR(255),
        Propertycount NUMERIC(10, 2)
);

create TABLE public.Melbourne_Housing
        (index INT,
        Suburb VARCHAR(50),
        Address VARCHAR(100),
        Rooms NUMERIC(10, 2),
        Type VARCHAR(25),
        Price NUMERIC(10, 2),
        Method VARCHAR(50),
        SellerG VARCHAR(50),
        Date Date,
        Distance NUMERIC(5, 2),
        Postcode NUMERIC(10, 2),
        Bedroom2 NUMERIC(10, 2),
        Bathroom NUMERIC(10, 2),
        Car NUMERIC(10, 2),
        Landsize NUMERIC(10, 2),
        BuildingArea NUMERIC(10, 2),
        YearBuilt NUMERIC(10, 2),
        CouncilArea VARCHAR(100),
        Lattitude NUMERIC(10, 5),
        Longtitude NUMERIC(10, 5),
        Regionname VARCHAR(255),
        Propertycount NUMERIC(10, 2)
);

-- Set ownership of the tables to the postgres user
ALTER TABLE public.Housing OWNER to postgres;

ALTER TABLE public.Melbourne_Housing OWNER to postgres;

