
        use db;
        create table locations (
            title varchar(255),
            latitude decimal(10,5),
            longitude decimal(10,5),
            radius decimal(10,5),
            place_id varchar(255) primary key
        );
        insert ignore into locations 
    (
        title,
        latitude,
        longitude,
        radius,
        place_id
    )
    values 

('Fort Point National Historic Site',37.8106117,-122.47709,50,'ChIJ_fRRLeqGhYAROWsCl5027X8'),
('Immigrant Point Overlook',37.796164,-122.477916,50,'ChIJB7DvneOGhYARuJVZwPibqdQ'),
('Black Point',37.808362,-122.4282128,50,'ChIJqQVyliCBhYARn0s6DnsZio0'),
('Treasure Island View Point',37.8323883,-122.3732796,50,'ChIJG8d-cqKBhYARmPBe6CwpNPs'),
('viewpoint',37.7920319,-122.4091889,50,'ChIJD0R-s5-BhYARFyCXGsttlkY'),
('Golden Gate View Point',37.8287328,-122.4860231,50,'ChIJ61ua9CmEhYAR_xcXIMwgWKA'),
('Crissy Field',37.8040257,-122.4650165,50,'ChIJVbMlhdyGhYARADaqASKRFVs'),
('The Pier',37.7944776,-122.3897469,50,'ChIJv4ZHEjeBhYARl10l1XIUU9I'),
('Pioneer Park',37.8031199,-122.4058782,50,'ChIJI859IfeAhYARQ03LHCc3ilQ'),
('Peace Pagoda',37.7850239,-122.4298442,50,'ChIJb8fP0r6AhYARHk9jP9FizCU'),
('Tank Hill',37.7599053,-122.447707,50,'ChIJGTDJF_59j4ARUraPc7mH_cI'),
('Pantai Marshall\'s',37.8016521,-122.4798778,50,'ChIJmSeyzUeHhYARebfMjxlKL-g'),
('Patricias Green \In Hayes Valley',37.775961,-122.4243795,50,'ChIJ2XVVCaKAhYARg4v2LEG2hbw'),
('Memorial Court',37.7790768,-122.4210064,50,'ChIJozNxrJmAhYARg7ldfzyVBOQ'),
('Jefferson Square Park',37.78185,-122.4256783,50,'ChIJLa5_C72AhYAR7bHgmgQWrQo'),
('Alamo Square',37.7763694,-122.434819,50,'ChIJ5RdoUKWAhYARFfoSJGdFS5c'),
('Color Fountain Park',37.78224640000001,-122.4333358,50,'ChIJy5NjiLmAhYARXXbtM94bPhY'),
('Mile Rock Beach',37.787582057967334, -122.50605977848947,50, 'ChIJAbkG002GhYARBjBd9qF1AiQ'),
('Hellman Hollow Picnic Area',37.76917816698988, -122.48392313257594,50, 'ChIJWYSTo5iHhYARSUF4j5afF0s'),
('Strawberry Hill',37.7686382855714, -122.47532142099884,50, 'ChIJ6ZjurW6HhYARKAZKC5GoU4Y'),
('Andy Goldsworthy\'s Wood Line', 37.79319389282673, -122.4485966004554, 50, 'ChIJ3QPfEy2HhYARDqnvCZyMPu4'),
('Inspiration Point',37.79215118353762, -122.45839345807342, 50, 'ChIJweecq2aHhYARQBcuiGtSqNY'),
('Battery Spencer',37.827771916267174, -122.48169665075659,50, 'ChIJ49V7v4KGhYARhXD1ZWZDXYk'),
('Mile Rock Beach',37.78757038358421, -122.5060370136819,50,'ChIJAbkG002GhYARBjBd9qF1AiQ'),
('Dolores Park',37.75974978164087, -122.42711110617564,50,'ChIJp3CqeRd-j4ARYI0i8e_kGKY'),
('Vulcan Stairway',37.76353256626709, -122.44197049388208,50,'ChIJk8sDkQF-j4ARf4QtIFO2e_w');