--1. autoru sa imenom Claude promjeniti adresu
UPDATE author a SET a.ADDRESS = (select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Málaga') WHERE a.firstName='Claude';
--2. izvršiti promjenu datuma nastanka eksponata sa imenom 'Angel from The Ark'
UPDATE exhibit e SET e.CREATEDDATE = '8.9.1492' WHERE e.exhibitName = 'Angel from The Ark';
--3 brise typeOfExhibit 'Junk Art'
DELETE FROM typeOfExhibit t WHERE t.typeOfExhibitName = 'Junk Art';
--4 promjeniti listu eksponata za izložbu 'Great Michelangelo and his works'
UPDATE exhibition e SET e.exhibitforshow = exhibitList((select REF(e) FROM exhibit e WHERE e.exhibitName = 'Bulls Head')) WHERE e.EXHIBITIONNAME = 'Great Michelangelo and his works';
--5 svim Penzionerima povećati cijenu karte za 50%
UPDATE typeOfVisitors SET PRICE = PRICE*1.5 WHERE TYPEOFVISITORSNAME = 'Pensioner';