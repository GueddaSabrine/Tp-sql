
create database  if not exists `compagnie aerienne`;
use `compagnie aerienne`;


create table if not exists avion
(
    NumAvion  varchar(6),
    TypeAvion varchar(6),
    BaseAeroport varchar(6)
);

 alter table avion
    add constraint PK_numavion PRIMARY KEY (NumAvion);
alter table avion
     auto_increment=100;



insert into avion
value ( 100,'A320','NYC'),
      (101,'B707','CDG'),
      (102,'A302','BLA'),
        (103,'DC10','BLA'),
        (104,'B747','ORL'),
        (105,'A320','GRE'),
        (106,'ATR42','CDG'),
        (107,'B727','LYS'),
        (108,'B727','NAN'),
        (109,'A340','BAS')

;
-- --------------------------------------------------------------------------------------------- --



create table if not exists constructeur
(
    IdConstructeur varchar(5),
    NomConstructeur varchar(15)

);

alter table constructeur
    add constraint PK_idconstructeur PRIMARY KEY (IdConstructeur);

alter table constructeur
     auto_increment=1;


insert into constructeur
value ('1','Aerospatiale'),
    ('2','Boeing'),
    ('3','Cessna'),
    ('4','Douglas')
;
-- ----------------------------------------------------------------------------------------------- --

create table if not exists type
(
    idConstructeur varchar(15) null,
    capacite varchar(3),
    typeAvion varchar(10)
    -- not null default 100
);

 ALTER TABLE  type ADD PRIMARY KEY (idConstructeur);
alter table type
add constraint pk_type primary key type(typeAvion);
ALTER TABLE `type` MODIFY `idConstructeur` INT UNSIGNED NOT NULL;

insert into type
    value
    ('A320','300','1'),
    ('A340','350','1'),
    ('ATR42','50','1'),
    ('B707','250','2'),
    ('B727','300','2'),
    ('B747','400','2'),
    ('DC10','200','4')

;
-- --------------------------------------------------------------------------------------------- --

create table if not exists aeroport
(
    idAeroport varchar(5),
    NomAeroport varchar(20) not null,
    NomVilleDesservie varchar(20)  null
);
alter table aeroport
    add constraint PK_LVMT PRIMARY KEY (idAeroport);




insert into aeroport
value ('BAS','Poretta','Bastia'),
    ('BLA','Blagnac','Toulouse'),
    ('BRI','Brive','Brive'),
    ('CDG','Roissy','Paris'),
    ('GRE','Saint Geoir','Grenoble'),
    ('LYS','Saint exupery','Lyon'),
    ('NAN','Saint Herblain','Nantes'),
    ('NIC','Nice cote dazur','Nice'),
    ('ORL','Orly','Paris')

;

-- ---------------------------------------------------------------------------------------------- --


create table vol
(
    NumVol varchar(10),
    AeroportDept varchar(10),
    Hdepart varchar(10),
    AeroportArr varchar(10),
    Harrivee varchar(6)
);

alter table vol
add constraint PK_IT150 PRIMARY KEY (NumVol);


insert into vol
value ('IT100','NIC','7:00','CDG','9:00'),
    ('IT101','ORL','11:00','BLA','12:00'),
    ('IT102','CDG','12:00','NIC','14:00'),
    ('IT103','GRE','9:00','BLA','11:00'),
    ('IT104','BLA','17:00','GRE','19:00'),
    ('IT105','LYS','6:00','ORL','7:00'),
    ('IT106','BAS','10:00','ORL','13:00'),
    ('IT107','NIC','7:00','BRI','8:00'),
    ('IT108','BRI','19:00','ORL','20:00'),
    ('IT109','NIC','18:00','ORL','19:00'),
    ('IT110','ORL','15:00','NIC','16:00'),
    ('IT111','NIC','17:00','NAN','19:00')
;



-- ---------------------------------------------------------------------------------------------- --


create table affectation
(
    NumVol varchar(10),
    DateVol varchar(15),
    NumAvion varchar(10),
    IdPilote varchar(10) null
);

alter table affectation
add constraint pk_affectation primary key (NumVol,DateVol);
ALTER TABLE `affectation` MODIFY `IdPilote` INT UNSIGNED NOT NULL;


insert into affectation
value
    ('IT100','6 avril 2001','100','1'),
    ('IT100','7 avril 2001','101','2'),
    ('IT101','6 avril 2001','100','2'),
    ('IT101','7 avril 2001','103','4'),
    ('IT102','6 avril 2001','101','1'),
    ('IT102','7 avril 2001','102','3'),
    ('IT103','6 avril 2001','105','3'),
    ('IT103','7 avril 2001','104','2'),
    ('IT104','6 avril 2001','105','3'),
    ('IT104','7 avril 2001','107','8'),
    ('IT105','6 avril 2001','107','7'),
    ('IT105','7 avril 2001','106','7'),
    ('IT106','6 avril 2001','109','8'),
    ('IT106','7 avril 2001','104','5'),
    ('IT107','6 avril 2001','106','9'),
    ('IT107','7 avril 2001','103','8'),
    ('IT108','6 avril 2001','106','9'),
    ('IT108','7 avril 2001','106','5'),
    ('IT109','6 avril 2001','107','7'),
    ('IT109','7 avril 2001','105','1'),
    ('IT110','6 avril 2001','102','2'),
    ('IT110','7 avril 2001','104','3'),
    ('IT111','6 avril 2001','101','4'),
    ('IT111','7 avril 2001','100','1')

;

-- ------------------------------------------------------------------------------------------ --
create table pilote
(
    IdPilote varchar(10),
    NompPilote varchar(10) unique ,
    PrenomPilote varchar(10)unique
);
alter table pilote
 add constraint PK_idpiloteT PRIMARY KEY (IdPilote);
alter table pilote
 AUTO_INCREMENT=1;

insert into pilote
value
    ('1','GAINSBOURG','Serge'),
    ('2','FERRAT','Jean'),
    ('3','NOUGARO','Claude'),
    ('4','SHUMMAN','Robert'),
    ('5','STROGOFF','Michel'),
    ('6','SORREL','Lucien'),
    ('7','TAVERNIER','Bertrand'),
    ('8','FAYOLLE','Marc'),
    ('9','LECU','Regis');