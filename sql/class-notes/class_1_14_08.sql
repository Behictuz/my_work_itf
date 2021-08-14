SELECT DISTINCT AlbumId,MediaTypeId
FROM tracks;
--Ikisindeki aynilari getirir...

SELECT * FROM tracks

SELECT name 
FROM tracks
WHERE Composer= "Jimi Hendrix"; -- Jimi hendrix composer olan isimleri getirdi

SELECT *
FROM invoices
WHERE total > 10 
ORDER by InvoiceId ASC
LIMIT 4;


SELECT *
FROM invoices
WHERE total BETWEEN 10 AND 13; -- 10 ve 13 dahil degil demek bu islem

SELECT *
FROM invoices
WHERE BillingCountry in ("Canada" , "Brazil", "Sweden")   --Sadece Bu ülkeleri sonucta getirir..

WHERE BillingCountry = "Brazil" or BillingCountry= "Canada" or BillingCountry="Sweden" -- buda yukaridakinin aynisini yapar

SELECT *
FROM customers
WHERE Country in ("Belgium" , "Norway" , "Canada" ,"USA");

SELECT *
FROM tracks
WHERE Composer like "%Steven Tyler%"; -- yüzde isareti basi ve sonu onemsiz demek 

SELECT name,Composer
FROM tracks
WHERE Composer like "%Bach%"

SELECT count (name) as Sarki_sayisi --Sarki sayisi donudurur..
FROM tracks;

SELECT * FROM tracks;

SELECT count (*) as null_olmayanlar --Sarki sayisi donudurur..
FROM tracks
WHERE Composer is NOT NULL;

SELECT count(DISTINCT Composer)
FROM tracks;

SELECT name, max(Milliseconds)
FROM tracks;

SELECT name,min(UnitPrice)
FROM tracks;

--2 min query How many distinct years in the invoices table ?

SELECT DISTINCT strftime("%Y", InvoiceDate)
FROM invoices;

SELECT strftime("%Y", InvoiceDate) AS yillar, COUNT(strftime("%Y", InvoiceDate)) AS adet
FROM invoices
GROUP BY strftime("%Y", InvoiceDate); -- yillarda kac adet var

SELECT *
from tracks
WHERE Milliseconds>393599.212103911;

SELECT *
FROM tracks
WHERE Milliseconds > (SELECT avg(Milliseconds)FROM tracks);

SELECT Country, count(Country) as adet
FROM customers
WHERE Country in ("Argentina" , "Austria" , "Belgium")
GROUP by Country ; -- bunu ben yaptim haci unutma !!

SELECT Composer,name, count(Composer) as adet
FROM tracks
GROUP by Composer ;


 
