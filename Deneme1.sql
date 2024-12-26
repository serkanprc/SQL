--sum toplama
--avg ortalama
--like filtreleme 
--as isim verme 
--order by sýralama desc: zden a ya asc:a dan z ye
--group by gruplama have þart yazýlýr
--min max adý üstünde,
--count kayýt sayýsýný verir
--distinct eþþsiz verileri gösterir
--replace deðiþtirmek
--concat birleþtirmeye yarar

select*from ogrenci

select concat(ogr_no, ' nolu ',ogr_ad,' ', ogr_soyad ,' vize notu : ',vize) from ogrenci