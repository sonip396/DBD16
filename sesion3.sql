create table TEMPORADA(nombre varchar(5), constraint pktemporada primary key(nombre));

create table CATEGORIA(nombre varchar(2), descripcion varchar(80), supMin number(4,2), supMax number(4,2), 
constraint pkcategoria primary key(nombre), constraint chcatnombre check(nombre in ('D', 'DT', 'I', 'S')));

create table PVPTEMPORADA(categoria varchar(2), temporada varchar(5), pSA number(3), pAD number(3), pMP number(3), pPC number(3), 
constraint pkpvptemp primary key(categoria, temporada), 
constraint fkpvptempcat foreign key (categoria) references CATEGORIA,
constraint fkpvptemptemp foreign key (temporada) references TEMPORADA);


------------CREAR TABLA HABITACION----------------