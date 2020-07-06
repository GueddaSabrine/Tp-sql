 AVION : la clé primaire NumAvion est autoincrémentée à partir de 100, par pas de 1 ;
create table if not exists Avion
(
idNumAvion int auto_increment,

)

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