CREATE TYPE countryType AS
( countryID INTEGER, 
  countryName VARCHAR(40),
  countryCode VARCHAR(40)
);

CREATE TYPE cityType AS
( cityID INTEGER, 
  cityName VARCHAR(40),
  country countryType
);


CREATE TYPE addressType AS
(addressID INTEGER,
country countryType,
city cityType
);

CREATE TYPE periodType AS(
periodID INTEGER,
periodName VARCHAR(30)
);


CREATE TYPE personType AS
(
personID INTEGER,
firstName VARCHAR(30),
lastName VARCHAR(30),
address addressType,
DOB DATE
);

CREATE TABLE person OF personType (PRIMARY KEY (personID));


CREATE TABLE staffs(
expertise VARCHAR(30)
) INHERITS (person);


CREATE TABLE authors(
period periodType
)INHERITS (person);


CREATE TYPE typeOfExhibitType AS(
typeOfExhibitID INTEGER,
typeOfExhibitName VARCHAR(30)
);


CREATE TYPE roomType AS(
roomINTEGER INTEGER,
roomName VARCHAR(30),
MEMBER FUNCTION getRoomInfo RETURN VARCHAR
);

CREATE TYPE exhibitType AS(
  exhibitID INTEGER, 
  exhibitName VARCHAR(30),
  author REF authorType,
  createdDate DATE,
  room REF roomType,
  typeOfExhibit REF typeOfExhibitType,
MEMBER FUNCTION getExhibitInfo RETURN VARCHAR
);

CREATE TYPE BODY exhibitType AS
 MEMBER FUNCTION getExhibitInfo RETURN VARCHAR IS
  BEGIN
    RETURN 'Exhibit: ' || exhibitName ||  ' Created Date:'|| createdDate;
  END;
END;

CREATE TYPE BODY exhibitType AS
 MEMBER FUNCTION getExhibitCreatedDate RETURN VARCHAR IS
  BEGIN
    RETURN createdDate;
  END;
END;

CREATE TYPE typeOfVisitorsType AS(
typeOfVisitorsID INTEGER, 
  typeOfVisitorsName VARCHAR(40),
  price DECIMAL,
  MEMBER FUNCTION getTypeOfVisitorsInfo RETURN VARCHAR
);

CREATE TYPE BODY typeOfVisitorsType AS
 MEMBER FUNCTION getTypeOfVisitorsInfo RETURN VARCHAR IS
  BEGIN
    RETURN 'Visitors: ' || typeOfVisitorsName;
  END;
END;

CREATE TYPE lessonType AS(
lessonID INTEGER,
lessonDescription VARCHAR(100),
MEMBER FUNCTION getLessonInfo RETURN VARCHAR
);

CREATE TYPE BODY lessonType AS
 MEMBER FUNCTION getLessonInfo RETURN VARCHAR IS
  BEGIN
    RETURN 'Lesson: ' || SELF.lessonDescription;
  END;
END;

CREATE TYPE typeOfVisitorsTypeList AS TABLE OF typeOfVisitorsType;
CREATE TYPE staffTypeList AS TABLE OF staffType;
CREATE TYPE lessonTypeList AS TABLE OF lessonType;
CREATE TYPE exhibitList AS TABLE OF REF exhibitType;

CREATE TYPE exhibitionType AS(
exhibitionID INTEGER, 
  exhibitionName VARCHAR(40),
  exhibitionStartDate DATE,
  exhibitionEndDate DATE,
  exhibitionStartTime TIMESTAMP,
  exhibitionDescription VARCHAR(200),
  visitors typeOfVisitorsTypeList,
  staffs staffTypeList,
  lessons lessonTypeList,
  MEMBER FUNCTION getExhibitionInfo RETURN VARCHAR
);

CREATE TYPE BODY exhibitionType AS
 MEMBER FUNCTION getExhibitionInfo RETURN VARCHAR IS
  BEGIN
    RETURN 'ID: '||exhibitionID|| ' Name: '|| exhibitionName|| ' Start Date: ' ||exhibitionStartDate||' End  Date: '||exhibitionEndDate;
  END;
END;


***************************************************

CREATE TABLE country OF countryType 
(
PRIMARY KEY (countryID)
);

CREATE SEQUENCE countryID START WITH 1;

CREATE TABLE city OF cityType 
(
PRIMARY KEY (cityID)
);

CREATE SEQUENCE cityID START WITH 1;

CREATE TABLE address OF addressType 
(
PRIMARY KEY (addressID)
);

CREATE SEQUENCE addressID START WITH 1;

CREATE TABLE period OF periodType 
(
PRIMARY KEY (periodID)
);

CREATE TABLE staff OF staffType 
(
PRIMARY KEY (personID)
);

CREATE SEQUENCE personID START WITH 1;

CREATE TABLE author OF authorType 
(
PRIMARY KEY (personID)
);

CREATE TABLE typeOfExhibit OF typeOfExhibitType 
(
PRIMARY KEY (typeOfExhibitID)
);


CREATE TABLE room OF roomType 
(
PRIMARY KEY (roomINTEGER)
);



CREATE TABLE exhibit OF exhibitType 
(
PRIMARY KEY (exhibitID)
);

CREATE TABLE typeOfVisitors OF typeOfVisitorsType 
(
PRIMARY KEY (typeOfVisitorsID)
);

CREATE TABLE lesson OF lessonType 
(
PRIMARY KEY (lessonID)
);

CREATE TABLE exhibition OF exhibitionType 
(
PRIMARY KEY (exhibitionID)
)
    IDENTIFIER IS PRIMARY KEY                          
   NESTED TABLE visitors STORE AS visitorsNested (     
   (PRIMARY KEY(NESTED_TABLE_ID, typeOfVisitorsID))              
   ORGANIZATION INDEX COMPRESS),                           
                           
   NESTED TABLE staffs STORE AS staffsNested (     
   (PRIMARY KEY(NESTED_TABLE_ID, personID))              
   ORGANIZATION INDEX COMPRESS)                                                   
   NESTED TABLE lessons STORE AS lessonsNested (     
   (PRIMARY KEY(NESTED_TABLE_ID, lessonID))              
   ORGANIZATION INDEX COMPRESS)                            
   RETURN AS LOCATOR;
   
   ALTER TYPE exhibitionType ADD ATTRIBUTE (exhibitForShow exhibitList) CASCADE;
   
   
