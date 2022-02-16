CREATE TABLE etat
(
	code char(5) constraint pk_etat primary key,
	nom varchar(24) constraint nn_nom not null,
	capitale varchar(32) constraint nn_capitale not null,
	nbHab number constraint ck_nbHab check ( nbHab > 500000)
);

CREATE TABLE prenom
(
	idP number(6) constraint pk_prenom primary key,
	libelle varchar(24) constraint ck_libelle check initCap(libelle)=libelle,
	estCelebre varchar(7 char) ,
	constraint ck_estCelebre check ( estCelebre in ( 'oui', 'non', 'inconnu'))
);

CREATE TABLE 
(

);



tatouage number (6) constraint pk_chien primary key ,
nom varchar2 (10 char ) constraint nn_chien_nom not null ,
ddn date ,
sexe char (1) constraint nn_chien_sexe not null ,
idA number (3) constraint nn_chien_idA not null ,
idR char (2) ,
constraint fk_chien_idA foreign key ( idA ) references adherent ,
constraint fk_chien_idR foreign key ( idR ) references race ,
constraint ck_chien_sexe check ( sexe in ( 'M ', 'F '))
) ;