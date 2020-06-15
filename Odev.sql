CREATE DATABASE teknolojimagaza;
USE teknolojimagaza; 


CREATE TABLE urunraf(
 urunid INT NOT NULL,
 urunadi VARCHAR(50),
 urunfiyat MONEY NOT NULL,
 PRIMARY KEY (urunid)
);


CREATE TABLE eniyiurun(  
    eniyiurunid INT PRIMARY KEY NOT NULL, 
    uruntarihi DATETIME,
    urunid INT,
    CONSTRAINT my_eniyiurun FOREIGN KEY (eniyiurunid) REFERENCES urunraf(urunid)
);


INSERT INTO urunraf (urunid , urunadi , urunfiyat)
VALUES
(1,'Macbook Pro 13',12000),
(2,'Msi Rtx2080Tİ',10000),
(3,'Ryzen 3700x',2400),
(4,'Razer Blackwidow Elite',1000),
(5,'Asus RX 5700xt',4500),
(6,'Aorus AD27AQ',4000),
(7,'Msi X570 Godlike',3000),
(8,'Macbook Air',8000),
(9,'Macbook Pro 16',15000),
(10,'Intel I9 9900K',4500);

SELECT *  FROM urunraf WHERE urunfiyat = 15000
SELECT *  FROM urunraf WHERE urunadi = 'Macbook Pro 13' OR urunadi = 'Asus RX 5700xt'
SELECT urunid  FROM urunraf WHERE urunadi = 'Intel I9 9900K' AND urunfiyat = 1000


SELECT * FROM eniyiurun WHERE eniyiurunid = 7