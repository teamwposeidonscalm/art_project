INSERT INTO country VALUES ('2','Italy','IT');
INSERT INTO country VALUES ('3','Spain','ES');
INSERT INTO country VALUES ('4','France','FR');
INSERT INTO country VALUES ('5','Germany','DE');
INSERT INTO country VALUES ('1','Netherlands','NE');

INSERT INTO city VALUES ('1','Vinci',(select REF (countryType) from country countryType where countryName = 'Italy'));
INSERT INTO city VALUES ('2','Zundert',(select REF (countryType) from country countryType where countryName = 'Netherlands'));
INSERT INTO city VALUES ('3','Leiden',(select REF (countryType) from country countryType where countryName = 'Netherlands'));
INSERT INTO city VALUES ('4','Delft',(select REF (countryType) from country countryType where countryName = 'Netherlands'));
INSERT INTO city VALUES ('5','Tuscany',(select REF (countryType) from country countryType where countryName = 'Italy'));
INSERT INTO city VALUES ('6','Rome',(select REF (countryType) from country countryType where countryName = 'Italy'));
INSERT INTO city VALUES ('7','Giverny',(select REF (countryType) from country countryType where countryName = 'France'));
INSERT INTO city VALUES ('8','Limoges',(select REF (countryType) from country countryType where countryName = 'France'));
INSERT INTO city VALUES ('9','Málaga',(select REF (countryType) from country countryType where countryName = 'Spain'));


INSERT INTO address VALUES (
1,
(select REF (countryType) from country countryType where countryName = 'Italy'),
(select REF (cityType) from city cityType where cityName = 'Vinci')
);

INSERT INTO address VALUES (
3,
(select REF (countryType) from country countryType where countryName = 'Netherlands'),
(select REF (cityType) from city cityType where cityName = 'Delft')
);

INSERT INTO address VALUES (
4,
(select REF (countryType) from country countryType where countryName = 'France')
(select REF (cityType) from city cityType where cityName = 'Giverny')
);

INSERT INTO address VALUES (
5,
(select REF (countryType) from country countryType where countryName = 'Spain'),
(select REF (cityType) from city cityType where cityName = 'Málaga')
);


INSERT INTO address VALUES (
6,
(select REF (countryType) from country countryType where countryName = 'Italy'),
(select REF (cityType) from city cityType where cityName = 'Tuscany')
);

INSERT INTO address VALUES (
7,
(select REF (countryType) from country countryType where countryName = 'Italy'),
(select REF (cityType) from city cityType where cityName = 'Rome')
);

INSERT INTO address VALUES (
8,
(select REF (countryType) from country countryType where countryName = 'France'),
(select REF (cityType) from city cityType where cityName = 'Limoges')
);

INSERT INTO address VALUES (
9,
(select REF (countryType) from country countryType where countryName = 'France'),
(select REF (cityType) from city cityType where cityName = 'Aix-en-Provence')
);




INSERT INTO author VALUES (
1,
'Leonardo','Da Vinci',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Vinci'),
date '1519-05-02',
(select REF (periodType) from period periodType WHERE periodType.periodName='Renaissance')
);

INSERT INTO author VALUES (
2,
'Vincent','Van Gogh',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Zundert'),
date '1882-7-3',
(select REF (periodType) from period periodType WHERE periodType.periodName='Expressionism')
);

INSERT INTO author VALUES (
3,
'Rembrandt','Harmenszoon van Rijn',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Delft'),
date '1885-10-10',
(select REF (periodType) from period periodType WHERE periodType.periodName='Impressionism')
);

INSERT INTO author VALUES (
4,
'Michelangelo','di Lodovico Buonarroti Simoni',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Vinci'),
date '1475-3-6',
(select REF (periodType) from period periodType WHERE periodType.periodName='Macchiaiol')
);

INSERT INTO author VALUES (
5,
'Claude','Monet',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Giverny'),
date '1840-11-14',
(select REF (periodType) from period periodType WHERE periodType.periodName='Romanticism')
);

INSERT INTO author VALUES (
6,
'Pablo','Picasso',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Málaga'),
date '1881-10-21',
(select REF (periodType) from period periodType WHERE periodType.periodName='Impressionism')
);


INSERT INTO author VALUES (
7,
'Johan','Vermeer',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Delft'),
date '1632-5-2',
(select REF (periodType) from period periodType WHERE periodType.periodName='Renaissance')
);

INSERT INTO author VALUES (
8,
'Paul','Cézanne',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Giverny'),
date '1839-7-10',
(select REF (periodType) from period periodType WHERE periodType.periodName='Neoclassicism')
);



INSERT INTO staff VALUES (
9,
'Katarina','Cézanne',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Giverny'),
date '1992-5-20',
'Greek Art'
);

INSERT INTO staff VALUES (
10,
'Osman','Cézanne',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Málaga'),
date '1972-3-15',
'Sculpture'
);

INSERT INTO staff VALUES (
11,
'Dusan','Monet',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Delft'),
date '1965-2-8',
'Drawing'
);

INSERT INTO staff VALUES (
12,
'Sanel','Zenunovic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Giverny'),
date '1965-2-8',
'Photography'
);

INSERT INTO staff VALUES (
13,
'Dzenan','Smajlovic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Vinci'),
date '1980-2-8',
'Photography'
);

INSERT INTO typeOfExhibit VALUES ('1','Architecture');
INSERT INTO typeOfExhibit VALUES ('2','Art Brut');
INSERT INTO typeOfExhibit VALUES ('3','Calligraphy');
INSERT INTO typeOfExhibit VALUES ('4','Ceramics');
INSERT INTO typeOfExhibit VALUES ('5','Conceptual Art');
INSERT INTO typeOfExhibit VALUES ('6','Design (Artistic)');
INSERT INTO typeOfExhibit VALUES ('7','Drawing');
INSERT INTO typeOfExhibit VALUES ('8','Graffiti Art');
INSERT INTO typeOfExhibit VALUES ('9','Graphic Art');
INSERT INTO typeOfExhibit VALUES ('10','Junk Art');
INSERT INTO typeOfExhibit VALUES ('11','Mosaic Art');
INSERT INTO typeOfExhibit VALUES ('12','Metalwork Art');
INSERT INTO typeOfExhibit VALUES ('13','Photography');
INSERT INTO typeOfExhibit VALUES ('14','Rock Art');
INSERT INTO typeOfExhibit VALUES ('15','Sculpture');
INSERT INTO typeOfExhibit VALUES ('16','Greek Art');
INSERT INTO typeOfExhibit VALUES ('17','Greek Pottery');
INSERT INTO typeOfExhibit VALUES ('18','Greek Sculpture');
INSERT INTO typeOfExhibit VALUES ('19','Islamic Art');

INSERT INTO room VALUES ('1','011');
INSERT INTO room VALUES ('2','012');
INSERT INTO room VALUES ('3','013');
INSERT INTO room VALUES ('4','014');
INSERT INTO room VALUES ('5','021');
INSERT INTO room VALUES ('6','022');
INSERT INTO room VALUES ('7','023');
INSERT INTO room VALUES ('8','031');
INSERT INTO room VALUES ('9','032');



INSERT INTO exhibit VALUES (
1,'The Annunciation',
(select REF(e) from author e where FIRSTNAME='Pablo' AND LASTNAME = 'Van Gogh'),
date '1972-3-15',
(SELECT REF(e) FROM room e WHERE roomName = '011'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);


INSERT INTO exhibit VALUES (
2,'The Baptism of Christ',
(select REF(e) from author e where FIRSTNAME='Leonardo' AND LASTNAME = 'Da Vinci'),
date '1493-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '012'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
3,'Ginevra de Benci',
(select REF(e) from author e where FIRSTNAME='Leonardo' AND LASTNAME = 'Da Vinci'),
date '1496-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '013'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
4,'Virgin of the Rocks',
(select REF(e) from author e where FIRSTNAME='Leonardo' AND LASTNAME = 'Da Vinci'),
date '1495-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '012'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
5,'Portrait of a Musiciai',
(select REF(e) from author e where FIRSTNAME='Leonardo' AND LASTNAME = 'Da Vinci'),
date '1497-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '012'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
5,'The Madonna of the Yarnwinder',
(select REF(e) from author e where FIRSTNAME='Leonardo' AND LASTNAME = 'Da Vinci'),
date '1499-6-15',
(SELECT REF(e) FROM room e WHERE roomName = '013'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
6,'Mona Lisa',
(select REF(e) from author e where FIRSTNAME='Leonardo' AND LASTNAME = 'Da Vinci'),
date '1503-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '012'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);


INSERT INTO exhibit VALUES (
7,'The Madonna of the Yarnwinder',
(select REF(e) from author e where FIRSTNAME='Vincent' AND LASTNAME = 'Van Gog'),
date '1881-6-15',
(SELECT REF(e) FROM room e WHERE roomName = '014'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
8,'Mona Lisa',
(select REF(e) from author e where FIRSTNAME='Leonardo' AND LASTNAME = 'Da Vinci'),
date '1881-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '021'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);



INSERT INTO exhibit VALUES (
9,'Still Life with Cabbage',
(select REF(e) from author e where FIRSTNAME='Vincent' AND LASTNAME = 'Van Gog'),
date '1882-6-15',
(SELECT REF(e) FROM room e WHERE roomName = '012'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
10,'Head of a Woman with Gree',
(select REF(e) from author e where FIRSTNAME='Vincent' AND LASTNAME = 'Van Gog'),
date '1883-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '012'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
13,'Madonna of the stairs',
(select REF(e) from author e where FIRSTNAME='Michelangelo' AND LASTNAME = 'di Lodovico Buonarroti Simoni'),
date '1491-6-15',
(SELECT REF(e) FROM room e WHERE roomName = '011'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Sculpture')
);

INSERT INTO exhibit VALUES (
14,'St Proclus from The Ark',
(select REF(e) from author e where FIRSTNAME='Michelangelo' AND LASTNAME = 'di Lodovico Buonarroti Simoni'),
date '1492-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '011'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Sculpture')
);

INSERT INTO exhibit VALUES (
15,'Angel from The Ark',
(select REF(e) from author e where FIRSTNAME='Michelangelo' AND LASTNAME = 'di Lodovico Buonarroti Simoni'),
date '1491-6-15',
(SELECT REF(e) FROM room e WHERE roomName = '012'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Sculpture')
);

INSERT INTO exhibit VALUES (
16,'Pietà',
(select REF(e) from author e where FIRSTNAME='Michelangelo' AND LASTNAME = 'di Lodovico Buonarroti Simoni'),
date '1492-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '013'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Sculpture')
);

INSERT INTO exhibit VALUES (
17,'David',
(select REF(e) from author e where FIRSTNAME='Michelangelo' AND LASTNAME = 'di Lodovico Buonarroti Simoni'),
date '1496-6-15',
(SELECT REF(e) FROM room e WHERE roomName = '021'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Sculpture')
);

INSERT INTO exhibit VALUES (
18,'St. Pius',
(select REF(e) from author e where FIRSTNAME='Michelangelo' AND LASTNAME = 'di Lodovico Buonarroti Simoni'),
date '1495-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '021'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Sculpture')
);

INSERT INTO exhibit VALUES (
19,'Dora Maar au Cha',
(select REF(e) from author e where FIRSTNAME='Pablo' AND LASTNAME = 'Picasso'),
date '1941-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '021'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibit VALUES (
20,'Bulls Head',
(select REF(e) from author e where FIRSTNAME='Pablo' AND LASTNAME = 'Picasso'),
date '1941-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '021'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);
INSERT INTO exhibit VALUES (
21,'Tete de femme (Dora Maar)',
(select REF(e) from author e where FIRSTNAME='Pablo' AND LASTNAME = 'Picasso'),
date '1942-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '021'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);
INSERT INTO exhibit VALUES (
22,'Nature morte à la Guitare',
(select REF(e) from author e where FIRSTNAME='Pablo' AND LASTNAME = 'Picasso'),
date '1941-5-15',
(SELECT REF(e) FROM room e WHERE roomName = '022'),
(SELECT REF(e) FROM typeOfExhibit e WHERE e.TYPEOFEXHIBITNAME ='Drawing')
);

INSERT INTO exhibition VALUES (
'1',
'The best of Leonardo Da Vinci',
date '2017-10-10',
date '2017-11-10',
TO_DATE( '18:00', 'hh24:mi:ss'),
'First exhibition of hidden artworks Leonardo Da Vinci',
typeOfVisitorsTypeList(
typeOfVisitorsType('1','Student','10'),
typeOfVisitorsType('2','Pensioner','10'),
typeOfVisitorsType('3','Family','15')
),
staffTypeList(
staffType(
9,
'Katarina','Cézanne',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Giverny'),
date '1992-5-20',
'Greek Art'
)),
lessonTypeList(
lessonType('1','This lesson is about history and way of creating best works'),
lessonType('2','Second lesson exhibition of hidden artworks Leonardo Da Vinci.')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Ginevra de Benci' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'The Baptism of Christ' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Ginevra de Benci' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Virgin of the Rocks' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Portrait of a Musiciai' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Mona Lisa' AND ROWNUM<=1)
)
);

INSERT INTO exhibition VALUES (
'2',
'The best of Leonardo Da Vinci part two',
date '2018-10-10',
date '2018-11-10',
TO_DATE( '18:00', 'hh24:mi:ss'),
'Second exhibition of hidden artworks Leonardo Da Vinci',
typeOfVisitorsTypeList(
typeOfVisitorsType('4','Student','10'),
typeOfVisitorsType('5','Pensioner','10'),
typeOfVisitorsType('6','Regular','15')
),
staffTypeList(
staffType(
12,
'Sanel','Zenunovic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Giverny'),
date '1965-2-8',
'Photography'
)),
lessonTypeList(
lessonType('3','Old lesson is about history and way of creating best works'),
lessonType('4','New lesson exhibition of hidden artworks Leonardo Da Vinci.')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Ginevra de Benci' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'The Baptism of Christ' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Ginevra de Benci' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Virgin of the Rocks' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Portrait of a Musiciai' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Mona Lisa' AND ROWNUM<=1)
)
);


INSERT INTO exhibition VALUES (
'3',
'The best of Leonardo Da Vinci Final',
date '2018-11-10',
date '2018-12-10',
TO_DATE( '17:00', 'hh24:mi:ss'),
'Second exhibition of hidden artworks Leonardo Da Vinci',
typeOfVisitorsTypeList(
typeOfVisitorsType('7','Pensioner','10'),
typeOfVisitorsType('8','Regular','15')
),
staffTypeList(
staffType(
13,
'Dzenan','Smajlovic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Vinci'),
date '1980-2-8',
'Photography'
)),
lessonTypeList(
lessonType('4','History and way of creating best works'),
lessonType('5','eExhibition of hidden artworks Leonardo Da Vinci.')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Ginevra de Benci' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'The Baptism of Christ' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Ginevra de Benci' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Virgin of the Rocks' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Portrait of a Musiciai' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Mona Lisa' AND ROWNUM<=1)
)
);

INSERT INTO exhibition VALUES (
'4',
'Vincent Van Gogh exhibition',
date '2018-1-5',
date '2018-2-5',
TO_DATE( '17:30', 'hh24:mi:ss'),
'Vincent Van Gogh exhibition first time in our city',
typeOfVisitorsTypeList(
typeOfVisitorsType('9','Pensioner','10'),
typeOfVisitorsType('10','Regular','15')
),
staffTypeList(
staffType(
14,
'Dusan','Monet',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Delft'),
date '1965-2-8',
'Drawing'
)),
lessonTypeList(
lessonType('8','Story about Vincent Van Gogh, his life pt1'),
lessonType('9','Story about Vincent Van Gogh, his life pt2'),
lessonType('10','Story about Vincent Van Gogh, his life pt3')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'The Madonna of the Yarnwinder' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Still Life with Cabbage' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Head of a Woman with Gree' AND ROWNUM<=1)
)
);

INSERT INTO exhibition VALUES (
'5',
'Vincent Van Gogh exhibition pt2',
date '2019-1-5',
date '2019-2-5',
TO_DATE( '17:30', 'hh24:mi:ss'),
'Vincent Van Gogh exhibition second time in our city',
typeOfVisitorsTypeList(
typeOfVisitorsType('11','Pensioner','10'),
typeOfVisitorsType('12','Family','20')
),
staffTypeList(
staffType(
15,
'Senad','Hussic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Delft'),
date '1968-2-8',
'Drawing'
)),
lessonTypeList(
lessonType('11','Story about Vincent Van Gogh,works his life pt1'),
lessonType('12','Story about Vincent Van Gogh,works his life pt2'),
lessonType('13','Story about Vincent Van Gogh,works his life pt3')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'The Madonna of the Yarnwinder' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Still Life with Cabbage' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Head of a Woman with Gree' AND ROWNUM<=1)
)
);

INSERT INTO exhibition VALUES (
'6',
'Vincent Van Gogh exhibition pt3',
date '2019-3-5',
date '2019-4-5',
TO_DATE( '19:30', 'hh24:mi:ss'),
'Vincent Van Gogh exhibition third time in our city',
typeOfVisitorsTypeList(
typeOfVisitorsType('13','Pensioner','10'),
typeOfVisitorsType('14','Family','20'),
typeOfVisitorsType('15','Student','10')
),
staffTypeList(
staffType(
16,
'Senada','Hussicic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Rome'),
date '1988-2-8',
'Drawing'
)),
lessonTypeList(
lessonType('13','Story about Vincent Van Gogh,works his life pt4'),
lessonType('14','Story about Vincent Van Gogh,works his life pt5'),
lessonType('15','Story about Vincent Van Gogh,works his life pt6')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'The Madonna of the Yarnwinder' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Still Life with Cabbage' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Head of a Woman with Gree' AND ROWNUM<=1)
)
);

INSERT INTO exhibition VALUES (
'7',
'Great Michelangelo',
date '2019-7-5',
date '2019-8-5',
TO_DATE( '16:30', 'hh24:mi:ss'),
'Great Michelangelo and his best works',
typeOfVisitorsTypeList(
typeOfVisitorsType('14','Pensioner','10'),
typeOfVisitorsType('15','Family','20'),
typeOfVisitorsType('16','Student','10')
),
staffTypeList(
staffType(
17,
'Mujo','Mujic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Rome'),
date '1976-1-8',
'Sculpture'
)),
lessonTypeList(
lessonType('16','Story about Great Michelangelo pt1'),
lessonType('17','Story about Great Michelangelo pt2'),
lessonType('18','Story about Great Michelangelo pt3')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'St Proclus from The Ark' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Angel from The Ark' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Pietà' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'David' AND ROWNUM<=1)
)
);

INSERT INTO exhibition VALUES (
'8',
'Great Michelangelo and his works',
date '2019-9-5',
date '2019-10-5',
TO_DATE( '15:30', 'hh24:mi:ss'),
'Great Michelangelo and his best works pt.2',
typeOfVisitorsTypeList(
typeOfVisitorsType('17','Pensioner','15'),
typeOfVisitorsType('18','Family','15'),
typeOfVisitorsType('19','Student','5')
),
staffTypeList(
staffType(
18,
'Demir','Fejzic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Rome'),
date '1955-1-8',
'Sculpture'
)),
lessonTypeList(
lessonType('19','Story about Great Michelangelo pt1'),
lessonType('20','Story about Great Michelangelo pt2'),
lessonType('21','Story about Great Michelangelo pt3')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'St Proclus from The Ark' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Angel from The Ark' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Pietà' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'St. Pius' AND ROWNUM<=1)
)
);

INSERT INTO exhibition VALUES (
'9',
'The best of Pablo Picaso',
date '2019-11-5',
date '2019-12-5',
TO_DATE( '19:30', 'hh24:mi:ss'),
'Exhibition of hidden artworks Leonardo Da Vinci',
typeOfVisitorsTypeList(
typeOfVisitorsType('20','Family','15'),
typeOfVisitorsType('21','Student','5')
),
staffTypeList(
staffType(
19,
'Demir','Fejzic',
(select REF (addressType) from address addressType WHERE addressType.CITY.cityName='Rome'),
date '1955-1-8',
'Sculpture'
)),
lessonTypeList(
lessonType('19','Story about Great Picaso pt1'),
lessonType('20','Story about Great Picaso pt2')
),
exhibitList(
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Dora Maar au Cha' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Bulls Head' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Tete de femme (Dora Maar)' AND ROWNUM<=1),
(select REF(e) FROM exhibit e WHERE e.exhibitName = 'Nature morte à la Guitare' AND ROWNUM<=1)
)
);