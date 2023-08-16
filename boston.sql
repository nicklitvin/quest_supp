
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

('Public Garden',42.3540639,-71.0700921,50,'ChIJu2Argp5w44kRAecWXgt_18s'),
('Observation Deck at Independence Wharf',42.3541519,-71.05141069999999,50,'ChIJJwN77YBw44kRAfA-_NICwdk'),
('Charles River Esplanade',42.3556187,-71.0788876,50,'ChIJv9lnBgp644kRes_e1eIVHvA'),
('Wright\'s Tower',42.4327042,-71.10489559999999,50,'ChIJDaJ8Fal244kRRmGHJmWzIzU'),
('North Point Park',42.36901599999999,-71.0690224,50,'ChIJ_fz6HpRw44kRc60n7gmu5tw'),
('Leonard P. Zakim Bunker Hill Memorial Bridge',42.3688121,-71.063493,50,'ChIJVX0tQJJw44kR8VYTxn31my8'),
('Harvard Square',42.3732168,-71.1202181,50,'ChIJecplvEJ344kRdjumhjIYylk'),
('Faneuil Hall Marketplace',42.360189,-71.0551145,50,'ChIJpyiwa4Zw44kRBQSGWKv4wgA'),
('Fresh Pond Reservation',42.3829042,-71.14385899999999,50,'ChIJKUalHZ5344kRiJoFR2557a4'),
('Back Bay Fens',42.3414805,-71.0956061,50,'ChIJ3XyYKR5644kRad_7oDpJVm4'),
('Christopher Columbus Waterfront Park',42.3609921,-71.0516339,50,'ChIJj_zwcYhw44kRnACtdwYYGDI'),
('Menotomy Rocks Park',42.4107892,-71.16785399999999,50,'ChIJybkWjEp244kRiKSj-ebgZ-U'),
('Harborwalk Lookout Terrace',42.354722,-71.044459,50,'ChIJi8i90wxx44kRmSbB2MZ0Xw0'),
('Riverbend Park',42.36918509999999,-71.1179284,50,'ChIJqawa215344kROpcUJbbE0Vg'),
('Charles River Reservation',42.36484919999999,-71.1355085,50,'ChIJTwyILAh644kR8xD41jV-yBk'),
('Revere Beach',42.42020443296804, -70.98584272463435,50,'ChIJZe1An-ht44kRWfHchPNKQFE'),
('M Street Beach',42.3300643129627, -71.03140587286778,50,'ChIJdaHHkZR644kRoj09Zb62RBw'),
('LoPresti Park',42.370155005639084, -71.04363968334384,50,'ChIJYZCJ4l1w44kRJepl5BZnZpQ'),
('Arnold Arboretum',42.30192634824234, -71.11917687591286,50,'ChIJ32mdTFR544kRDe-FqJ83pWQ'),
('Graffiti Alley',42.36500219203066, -71.1021594933944,50,'ChIJ6yoO91N344kRgJcRiIekXaw');
