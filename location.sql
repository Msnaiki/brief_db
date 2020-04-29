/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  4/28/2020 3:44:22 PM                     */
/*==============================================================*/


drop table if exists Admin;

drop table if exists Costumer;

drop table if exists Products;

drop table if exists Reservation;

create database location;
select user, host from mysql.user ;

use location;

CREATE USER 'mehdi2'@'localhost' IDENTIFIED BY 'password';
grant all privileges on locationtest to 'mehdi2'@'localhost';

	SELECT * FROM Costumer;
CREATE USER 'dopo'@'localhost' IDENTIFIED BY 'somepassword';

show tables;
/*==============================================================*/
/* Table : Admin                                                */
/*==============================================================*/
create table Admin
(
   idA                  varchar(254) not null,
   psswd                varchar(254),
   logInS               varchar(254),
   nameA                varchar(254),
   lastA                varchar(254),
   primary key (idA)
);

/*==============================================================*/
/* Table : Costumer                                             */
/*==============================================================*/
create table Costumer
(
   idC                  varchar(254) not null,
   pssd                 varchar(254),
   logInSs              varchar(254),
   nameC                varchar(254),
   lastNc               varchar(254),
   primary key (idC)
);

/*==============================================================*/
/* Table : Products                                             */
/*==============================================================*/
create table Products
(
   idA                  varchar(254),
   idProduct            varchar(254) not null,
   nProduct             varchar(254),
   sProduct             varchar(254),
   primary key (idProduct)
);

/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/
create table Reservation
(
   idC                  varchar(254),
   idProduct            varchar(254),
   id_location          varchar(254),
   N_of_days            varchar(254),
   N_transfer           varchar(254)
);
insert into Costumer (idC, pssd, logInSs, nameC, lastNc) values (3, 'dopo3', 'goofy3', 'ayoub', 'snaiki'),(2, 'dopo2', 'goofy2', 'hamza', 'snaiki');
SET SQL_SAFE_UPDATES = 0;
delete from Costumer where idC = 2;
update Costumer set nameC = 'yassine' where idC = 3;
alter table Products add constraint FK_association3 foreign key (idA)
      references Admin (idA) on delete restrict on update restrict;

alter table Reservation add constraint FK_association1 foreign key (idProduct)
      references Products (idProduct) on delete restrict on update restrict;

alter table Reservation add constraint FK_association2 foreign key (idC)
      references Costumer (idC) on delete restrict on update restrict;

