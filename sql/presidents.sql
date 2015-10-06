DROP TABLE IF EXISTS presidents;

CREATE TABLE IF NOT EXISTS presidents (
    id SERIAL PRIMARY KEY,
    president_number INTEGER NOT NULL,
    name VARCHAR(100),
    birth_year INTEGER NOT NULL,
    death_year INTEGER,
    took_office DATE NOT NULL,
    left_office DATE,
    party VARCHAR(100)
);

INSERT INTO presidents VALUES (DEFAULT, 1, 'George Washington', 1732, 1799, '1789-04-30', '1797-03-04', 'No Party');
INSERT INTO presidents VALUES (DEFAULT, 44,'Barack Obama',1961,null,'2009-01-20',null,'Democratic');
INSERT INTO presidents VALUES (DEFAULT, 43,'George W. Bush',1946,null,'2001-01-20','2009-01-20','Republican');
INSERT INTO presidents VALUES (DEFAULT, 42,'Bill Clinton',1946,null,'1993-01-20','2001-01-20','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 41,'George H. W. Bush',1924,null,'1989-01-20','1993-01-20','Republican');
INSERT INTO presidents VALUES (DEFAULT, 40,'Ronald Reagan',1911,2004,'1981-01-20','1989-01-20','Republican');
INSERT INTO presidents VALUES (DEFAULT, 39,'Jimmy Carter',1924,null,'1977-01-20','1981-01-20','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 38,'Gerald Ford',1913,2006,'1974-08-09','1977-01-20','Republican');
INSERT INTO presidents VALUES (DEFAULT, 37,'Richard Nixon',1913,1994,'1969-01-20','1974-08-09','Republican');
INSERT INTO presidents VALUES (DEFAULT, 36,'Lyndon B. Johnson',1908,1973,'1963-11-22','1969-01-20','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 35,'John F. Kennedy',1917,1963,'1961-01-20','1963-11-22','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 34,'Dwight D. Eisenhower',1890,1969,'1953-01-20','1961-01-20','Republican');
INSERT INTO presidents VALUES (DEFAULT, 33,'Harry S. Truman',1884,1972,'1945-04-12','1953-01-20','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 32,'Franklin D. Roosevelt',1882,1945,'1933-03-04','1945-04-12','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 31,'Herbert Hoover',1874,1964,'1929-03-04','1933-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 30,'Calvin Coolidge',1872,1933,'1923-08-02','1929-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 29,'Warren G. Harding',1865,1923,'1921-03-04','1923-08-02','Republican');
INSERT INTO presidents VALUES (DEFAULT, 28,'Woodrow Wilson',1856,1924,'1913-03-04','1921-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 27,'William Howard Taft',1857,1930,'1909-03-04','1913-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 26,'Theodore Roosevelt',1858,1919,'1901-09-14','1909-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 25,'William McKinley',1843,1901,'1897-03-04','1901-09-14','Republican');
INSERT INTO presidents VALUES (DEFAULT, 24,'Grover Cleveland',1837,1908,'1893-03-04','1897-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 23,'Benjamin Harrison',1833,1901,'1889-03-04','1893-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 22,'Grover Cleveland',1837,1908,'1885-03-04','1889-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 21,'Chester A. Arthur',1829,1886,'1881-09-19','1885-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 20,'James A. Garfield',1831,1881,'1881-03-04','1881-09-19','Republican');
INSERT INTO presidents VALUES (DEFAULT, 19,'Rutherford B. Hayes',1822,1893,'1877-03-04','1881-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 18,'Ulysses S. Grant',1822,1885,'1869-03-04','1877-03-04','Republican');
INSERT INTO presidents VALUES (DEFAULT, 17,'Andrew Johnson',1808,1875,'1865-04-15','1869-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 16,'Abraham Lincoln',1809,1865,'1861-03-04','1865-04-15','Republican');
INSERT INTO presidents VALUES (DEFAULT, 15,'James Buchanan',1791,1868,'1857-03-04','1861-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 14,'Franklin Pierce',1804,1869,'1853-03-04','1857-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 13,'Millard Fillmore',1800,1874,'1850-07-09','1853-03-04','Whig');
INSERT INTO presidents VALUES (DEFAULT, 12,'Zachary Taylor',1784,1850,'1849-03-04','1850-07-09','Whig');
INSERT INTO presidents VALUES (DEFAULT, 11,'James K. Polk',1795,1849,'1845-03-04','1849-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 10,'John Tyler',1790,1862,'1841-04-04','1845-03-04','Whig');
INSERT INTO presidents VALUES (DEFAULT, 9,'William Henry Harrison',1773,1841,'1841-03-04','1841-04-04','Whig');
INSERT INTO presidents VALUES (DEFAULT, 8,'Martin Van Buren',1782,1862,'1837-03-04','1841-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 7,'Andrew Jackson',1767,1845,'1829-03-04','1837-03-04','Democratic');
INSERT INTO presidents VALUES (DEFAULT, 6,'John Quincy Adams',1767,1848,'1825-03-04','1829-03-04','Democratic-Republican');
INSERT INTO presidents VALUES (DEFAULT, 5,'James Monroe',1758,1831,'1817-03-04','1825-03-04','Democratic-Republican');
INSERT INTO presidents VALUES (DEFAULT, 4,'James Madison',1751,1836,'1809-03-04','1817-03-04','Democratic-Republican');
INSERT INTO presidents VALUES (DEFAULT, 3,'Thomas Jefferson',1743,1826,'1801-03-04','1809-03-04','Democratic-Republican');
INSERT INTO presidents VALUES (DEFAULT, 2,'John Adams',1735,1826,'1797-03-04','1801-03-04','Federalist');
