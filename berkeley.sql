
        use db;
        drop table if exists locations;
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

('Inspiration Point',37.9054408,-122.2442749,50,'ChIJDT9m3fR7hYARq7sFJLd4Bsk'),
('Point Isabel Regional Shoreline',37.90096279999999,-122.3247311,50,'ChIJLfv5yuh4hYARF56bPJEMHOQ'),
('Grizzly Peak Overlook - KPFA Tower pullout',37.86522679999999,-122.2219709,50,'ChIJWfjShXN9hYARY_ZFBEsMPR8'),
('Port View Park',37.8055566,-122.3332487,50,'ChIJOZ-ygd1_hYARqKy_gKoK8dQ'),
('Shorebird Park Nature Center',37.8616235,-122.3162801,50,'ChIJ6x6F-SF_hYARZwzBYuu1Bvs'),
('Observation Pier',37.8212862,-122.3302213,50,'ChIJ9c2biUV_hYAR49AVQ1tq5nY'),
('Indian Rock Park',37.892185,-122.2726983,50,'ChIJAcK7wax-hYARYxSnYWfJjTA'),
('Emeryville Marina Park',37.8388629,-122.3152083,50,'ChIJR_fvTap_hYARFQi1Hm81Tqk'),
('Big C',37.8745762,-122.2495706,50,'ChIJZXKkyTt8hYARhVTCXYZyJuU'),
('The Pergola at Lake Merritt',37.8085518,-122.249744,50,'ChIJlUm6wUaHj4ARiH5OIjfaNGg'),
('Martin Luther King Jr. Civic Center Park',37.8693887,-122.2716234,50,'ChIJj3ZE5Jt-hYAReY-WppHyVDw'),
('Berkeley Rose Garden',37.88529940000001,-122.2628894,50,'ChIJAXUZGh18hYARe7Uug71u2io'),
('Regional Parks Botanic Garden',37.892886,-122.2429438,50,'ChIJ3YjYqhJ8hYARXNbly3BB8vw'),
('Willard Park',37.8610841,-122.2566194,50,'ChIJG5e13yx8hYARtyq-Kr8-lcQ'),
('Cragmont Rock Park',37.8920762,-122.2637155,50,'ChIJNY6tkwF8hYARbk-Crt8jBjQ'),
('Lawrence Hall of Science',37.879205,-122.246517,50,'ChIJVVbd7z58hYARmsbuevROjI0'),
('Lake Anza Beach',37.89555654893338, -122.25108841126328, 50, 'ChIJCx2SKQl8hYARWaFRLNrXVMM'),
('Old Tunnel Road Staging Area', 37.85608367486487, -122.20609985671042, 50, 'ChIJ9QshKW19hYARuoLba6HlAkI'),
('Lake Temescal Beach',37.847394033635425, -122.23040934588397,50, 'ChIJfX9tO5h9hYARgF4RHHtiCBY'),
('Sunset viewpoint',37.86742209942765, -122.24053737965063, 50, 'ChIJ9TVzWzN9hYARzg1txABaQZA'),
('Berkeley Overlook Vista Point',37.86447962376693, -122.24354193816416,50, 'ChIJQw7jfp99hYARPpRzRqUu7KM'),
('Ocean Beach',37.759416914164106, -122.51082489123446,50, 'ChIJY8btaZSHhYAR_GctC494Hoo'),
('Albany Bulb',37.889785193359735, -122.32468908582257,50,'ChIJ746aXcR4hYARZknGByhzmU0');