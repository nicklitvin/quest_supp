use db_2;

create table if not exists events (
    title varchar(255),
    latitude decimal(10,5),
    longitude decimal(10,5),
    radius decimal(10,5),
    place_id varchar(255),

    start_time datetime,
    end_time datetime, 
    link varchar(255),
    event_id varchar(255),

    primary key (event_id)
);

insert ignore into events  
(
    title,
    latitude,
    longitude,
    radius,
    place_id,
    start_time,
    end_time,
    link,
    event_id
)
values 
('Boston Marathon',42.2297571107653,-71.5182226497107,304.8,'ChIJ2wFqA1p05IkRfakv1j_cgHM','2024-04-15 11:00','2024-04-15 16:00','https://www.baa.org/','99fcd6a9978566f7b76527b6a28e49f2ca8dbd38ac932a52198266dd6722c73a54b35af36e88a51e86deebe8172f149e52e43eebbb1995f5dd115b43ae8ed');