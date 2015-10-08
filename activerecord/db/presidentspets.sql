-- contributed by Tristan Villanueva (@BanzaiBlazer)
DROP TABLE IF EXISTS presidentspets;

CREATE TABLE IF NOT EXISTS presidentspets (
    id SERIAL PRIMARY KEY,
    owner INTEGER REFERENCES presidents(president_number),
    name VARCHAR(100),
    breed VARCHAR(100),
    species VARCHAR(100)
);

INSERT INTO presidentspets VALUES (1, 44, 'Bo', 'Portuguese Water Dog', 'Dog');
INSERT INTO presidentspets VALUES (2, 44, 'Sunny', 'Portuguese Water Dog', 'Dog');
INSERT INTO presidentspets VALUES (3, 43, 'Miss Beazley', 'Scottish Terrier', 'Dog');
INSERT INTO presidentspets VALUES (4, 43, 'Spot', 'English Springer Spaniel', 'Dog');
INSERT INTO presidentspets VALUES (5, 43, 'Barney', 'Scottish Terrier', 'Dog');
INSERT INTO presidentspets VALUES (6, 43, 'India', NULL ,'Cat');
INSERT INTO presidentspets VALUES (7, 43, 'Ofelia', 'Longhorn Cow','Cow');
INSERT INTO presidentspets VALUES (8, 42, 'Socks', 'Stray','Cat');
INSERT INTO presidentspets VALUES (9, 42, 'Buddy', 'Chocolate Lab','Dog');
INSERT INTO presidentspets VALUES (10, 41, 'Millie', 'English Springer Spaniel','Dog');
INSERT INTO presidentspets VALUES (11, 41, 'Ranger', 'English Springer Spaniel','Dog');
INSERT INTO presidentspets VALUES (12, 40, 'Lucky', 'Bouvier des Flandres','Dog');
INSERT INTO presidentspets VALUES (13, 40, 'Rex', 'Cavalier King Charles Spaniel','Dog');
INSERT INTO presidentspets VALUES (14, 40, 'Victory', 'Golden Retriever','Dog');
INSERT INTO presidentspets VALUES (15, 40, 'Peggy', 'Irish Setter','Dog');
INSERT INTO presidentspets VALUES (16, 40, 'Taca', 'Siberian Husky','Dog');
INSERT INTO presidentspets VALUES (17, 40, 'Fuzzy', 'Belgian Sheepdog','Dog');
INSERT INTO presidentspets VALUES (18, 40, 'Various', 'Various','Horses');
INSERT INTO presidentspets VALUES (19, 39, 'Lewis Brown', 'Afgan Hound','Dog');
INSERT INTO presidentspets VALUES (20, 39, 'Grits', 'Bordie Collie','Dog');
INSERT INTO presidentspets VALUES (21, 39, 'Misty Malarky Ying Yang', 'Siamese','Cat');
