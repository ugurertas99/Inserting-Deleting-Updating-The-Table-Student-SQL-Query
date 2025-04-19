use OKUL

select * from Ogrenci

insert into Ogrenci(ogrenciNo,adSoyad,Adres) VALUES('22','hasan','Ýstanbul - Kadýköy')

create proc sp_Ekle3(
@ogrenciNo nvarchar(50),
@adSoyad nvarchar(50),
@Adres nvarchar(50))
as
begin
insert into Ogrenci(ogrenciNo,adSoyad,Adres) VALUES(@ogrenciNo,@adSoyad,@Adres)
end

create proc spGuncelle(
@ogrenciNo nvarchar(50),
@adSoyad nvarchar (50),
@Adres nvarchar (50))
as
begin
UPDATE  Ogrenci 

SET adSoyad = @adSoyad, Adres = @Adres
WHERE ogrenciNo = @ogrenciNo
END;


create procedure sp_delete
@ogrencino nvarchar(50)
as
begin
delete from Ogrenci
where ogrenciNo=@ogrencino
end;

create proc sp_Goruntule
as
begin

select * from Ogrenci
end