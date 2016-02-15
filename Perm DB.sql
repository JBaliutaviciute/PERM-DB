/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2016-02-15 14:59:26                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('"USER"')
            and   type = 'U')
   drop table "USER"
go

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER" (
   USERNAME             nvarchar(255)        not null,
   USERPASSWORD         nvarchar(64)         not null,
   ID                   numeric(4)           identity,
   SALT                 nvarchar(24)         not null,
   constraint PK_USER primary key nonclustered (ID)
)
go

