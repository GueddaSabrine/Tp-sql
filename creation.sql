-- # DDL ===> Data Definition Language
-- # create database mocodo_db; ==> leve une exception si la BDD existe
create database if not exists mocodo_db;

-- # selectionne la base de donnée courante
use mocodo_db;

-- # Creation de la table Client
create table if not exists Client
(
    idClient int unsigned auto_increment,
    nom varchar(20) not null,
    email varchar(50) not null,
    mdp varchar(15),
    sexe char(1),
    constraint pk_client primary key (idClient),
    constraint uq_client_email unique (email)
);

# alter peut modifier yn objet
alter table Client
alter sexe set default 'F';

# ajout de colonne
alter table Client
add age int not null ;

alter table Client
    modify ddn YEAR  ;

insert into Client
values(1, 'Roxana','roxana@dawm.ge', '1234','F');

insert into Client
values(2, 'Miri','miri@dawm.ge', '1234','F');

insert into Client(idClient, nom, email)
values(3, 'Toulepi','toulepi@dawm.ge')

insert into Client(nom, idClient,  email)
values('Souly', 4, 'souly@dawm.ge');

insert into Client(nom, idClient,  email)
values('Sab', 5, 'sab@dawm.ge');

create table if not exists Commande(
    idCommande Int unsigned auto_increment,
    idClient int unsigned,
    numero smallint unsigned,
    dataCommande date,
    constraint pk_commande primary key (idCommande),
    constraint fk_commande_client foreign key (idClient) references Client (idClient)
);
# =================================================================================
# Bonne pratique
# =================================================================================

create table if not exists Commande
(
idCommande Int unsigned auto_increment,
idClient int unsigned,
numero smallint unsigned,
dataCommande date,
constraint pk_commande primary key (idCommande),
constraint fk_commande_client foreign key (idClient) references Client (idClient)
);

-- # Creation de la table Client
create table if not exists Client
(
    idClient int unsigned auto_increment,
    nom varchar(20) not null,
    email varchar(50) not null,
    mdp varchar(15),
    sexe char(1),
    constraint pk_client primary key (idClient),
    constraint uq_client_email unique (email)
);


alter  table Commande
    ajouter la contrainte fk_commande_client clé étrangère (idClient)
    référence Client (idClient);

alter  table Client
    ajouter une contrainte uq_client_email unique (email);

alter  table Client
    alter sexe définir le « M» par défaut ;