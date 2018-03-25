create database kiosko;

use kiosko;

create table tipo_producto(
id int not null auto_increment,
descripcion varchar(150),
primary key (id)
);


create table producto(
id int not null auto_increment,
id_tipo int,
nombreProducto varchar(150),
precio int,
stock int,
primary key (id),
foreign key (id_tipo) references tipo_producto(id)
);


create table venta(
id int not null auto_increment,
id_producto int,
cantidad int ,
primary key (id),
foreign key (id_producto) references producto(id)
);

create table boleta(
id int not null auto_increment,
id_venta int,
fecha datetime,
subtotal int,
total int,
primary key(id),
foreign key (id_venta)references venta(id)
);

select * from producto;
select * from tipo_producto;
select * from venta;
select * from boleta;





