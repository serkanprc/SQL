--sum toplama
--avg ortalama
--like filtreleme 
--as isim verme 
--order by s�ralama desc: zden a ya asc:a dan z ye
--group by gruplama have �art yaz�l�r
--min max ad� �st�nde,
--count kay�t say�s�n� verir
--distinct e��siz verileri g�sterir
--replace de�i�tirmek
--concat birle�tirmeye yarar

select*from ogrenci

select concat(ogr_no, ' nolu ',ogr_ad,' ', ogr_soyad ,' vize notu : ',vize) from ogrenci