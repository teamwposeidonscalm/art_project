--1. ispisuje listu autora i informacije o njima i njihovoj adresi
SELECT a.firstName AS "First Name", a.lastName AS "Last Name", a.address.city.cityName AS "City", a.address.country.countryName AS "Country"  FROM  author a;
--2. ispisuje sve izlozbe i prikazuje informacije koristenjem metoda getExhibitionInfo()
SELECT e.getExhibitionInfo() FROM exhibition e;
--3. prikazuje typeOfvisitors koji mogu doci na izlozbu (Great Michelangelo and his works), ovdje je prikazan primjer korištenja kolekcije (liste) kao tipa objekta unutar tipa exhibition
SELECT t.typeOfVisitorsName FROM TABLE(SELECT e.visitors FROM exhibition e WHERE e.exhibitionName = 'Great Michelangelo and his works')t;
--4. prikazuje osoblje koje će drzati predavanje na izlozbi(Vincent Van Gogh exhibition pt2), ovdje je prikazano korištenje metode nad kolekcijom
SELECT t.getPerson() FROM TABLE(SELECT e.staffs FROM exhibition e WHERE e.exhibitionName = 'Vincent Van Gogh exhibition pt2')t;
--5. ispisuje ime i prezime autora (tip koji naljedjuje od person) 
SELECT TREAT (VALUE(e) AS personType).firstName,TREAT(VALUE(e) AS personType).lastName  FROM author e;
--6 ispisuje ime i prezime autora, njegovu adresu (tip koji naljedjuje od person) 
SELECT TREAT (VALUE(e) AS personType).address.city.getCityName(),TREAT(VALUE(e) AS personType).lastName,TREAT(VALUE(e) AS personType).firstName  FROM author e;
--7 ipisuje autore cija djela su nastala u vrijeme renesanse
SELECT a.firstName , a.lastName FROM author a WHERE a.PERIOD.periodName = 'Renaissance';
--8 prikazuje sve eksponate (exhibit) i ispisue informaciju u kojoj prostoriji su smjeteni, sortirano
SELECT VALUE(e).room.roomName AS "Room" ,VALUE(e).exhibitName AS "Exhibit Name" FROM exhibit e ORDER BY VALUE(e).room.roomName DESC ;
--9 ispisuje sve eksponate ciji je typeOfExhibit  Sculpture i njihove autore
SELECT VALUE(t).exhibitName || '-> ' || t.author.firstName FROM exhibit  t WHERE t.typeOfExhibit.typeOfExhibitName='Sculpture';
--10 ispisati informacije o predavanjima cija izlozba pocinje u 15:30
SELECT t.getLessonInfo() FROM TABLE(SELECT e.lessons FROM exhibition e WHERE e.exhibitionStartTime=TO_DATE( '15:30', 'hh24:mi:ss') )t;
--11 ispisati listu eksponata koji ce biti izlozeni na izlozbi The best of Leonardo Da Vinci
SELECT t.getExhibitInfo() FROM TABLE(SELECT e.EXHIBITFORSHOW FROM exhibition e WHERE e.exhibitionName = 'The best of Leonardo Da Vinci')t;

--12 Primjer ispisivanja sadržaja tablice address
SELECT a.city.getCityName() AS "City", a.country.getCountryName() AS "Country" FROM address a;
--13 Ispisuje osnovne informacije o izložbama
SELECT e.getExhibitInfo() , e.author.getPerson(), e.createdDate , e.room.roomName, e.typeOfExhibit.typeOfExhibitName FROM exhibit e WHERE AND ROWNUM = 2;
--14
SELECT e.createdDate FROM exhibit e WHERE e.exhibitName = 'Angel from The Ark';
--15 prikazuje sve eksponate koji će biti izloženi na izložbi Great Michelangelo and his works
SELECT t.getExhibitInfo() FROM TABLE(SELECT e.exhibitForShow FROM exhibition e WHERE e.exhibitionName= 'Great Michelangelo and his works')t;
