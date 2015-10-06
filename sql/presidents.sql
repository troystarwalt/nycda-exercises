DROP TABLE IF EXISTS presidents;

CREATE TABLE IF NOT EXISTS presidents (
    id SERIAL PRIMARY KEY,
    president_number INTEGER NOT NULL,
    name VARCHAR(100),
    birth_year INTEGER NOT NULL,
    death_year INTEGER,
    took_office DATE NOT NULL,
    left_office DATE,
    party VARCHAR(100),
    home_state VARCHAR(100)
);

DROP TABLE IF EXISTS prime_ministers;

CREATE TABLE IF NOT EXISTS prime_ministers (
    id SERIAL PRIMARY KEY,
    pm_number INTEGER NOT NULL,
    name VARCHAR(100),
    birth_year INTEGER NOT NULL,
    took_office DATE NOT NULL,
    left_office DATE,
    death_year INTEGER
    -- party VARCHAR(100),
    -- home_city VARCHAR(100)
);


-- more info at http://datahub.io/dataset/list-of-us-presidents/resource/ba0cdb03-c0f0-45ff-a21f-63fdf6ce1a89

INSERT INTO presidents VALUES (DEFAULT, 1, 'George Washington', 1732, 1799, '1789-04-30', '1797-03-04', 'No Party', 'Virginia');
INSERT INTO presidents VALUES (DEFAULT, 44,'Barack Obama',1961,null,'2009-01-20',null,'Democratic', 'Illinois');
INSERT INTO presidents VALUES (DEFAULT, 43,'George W. Bush',1946,null,'2001-01-20','2009-01-20','Republican', 'Texas');
INSERT INTO presidents VALUES (DEFAULT, 42,'Bill Clinton',1946,null,'1993-01-20','2001-01-20','Democratic', 'Arkansas');
INSERT INTO presidents VALUES (DEFAULT, 41,'George H. W. Bush',1924,null,'1989-01-20','1993-01-20','Republican', 'Texas');
INSERT INTO presidents VALUES (DEFAULT, 40,'Ronald Reagan',1911,2004,'1981-01-20','1989-01-20','Republican', 'California');
INSERT INTO presidents VALUES (DEFAULT, 39,'Jimmy Carter',1924,null,'1977-01-20','1981-01-20','Democratic', 'Georgia');
INSERT INTO presidents VALUES (DEFAULT, 38,'Gerald Ford',1913,2006,'1974-08-09','1977-01-20','Republican', 'Michigan');
INSERT INTO presidents VALUES (DEFAULT, 37,'Richard Nixon',1913,1994,'1969-01-20','1974-08-09','Republican', 'California');
INSERT INTO presidents VALUES (DEFAULT, 36,'Lyndon B. Johnson',1908,1973,'1963-11-22','1969-01-20','Democratic', 'Texas');
INSERT INTO presidents VALUES (DEFAULT, 35,'John F. Kennedy',1917,1963,'1961-01-20','1963-11-22','Democratic', 'Massachusetts');
INSERT INTO presidents VALUES (DEFAULT, 34,'Dwight D. Eisenhower',1890,1969,'1953-01-20','1961-01-20','Republican', 'Texas');
INSERT INTO presidents VALUES (DEFAULT, 33,'Harry S. Truman',1884,1972,'1945-04-12','1953-01-20','Democratic', 'Missouri');
INSERT INTO presidents VALUES (DEFAULT, 32,'Franklin D. Roosevelt',1882,1945,'1933-03-04','1945-04-12','Democratic', 'New York');
INSERT INTO presidents VALUES (DEFAULT, 31,'Herbert Hoover',1874,1964,'1929-03-04','1933-03-04','Republican', 'Iowa');
INSERT INTO presidents VALUES (DEFAULT, 30,'Calvin Coolidge',1872,1933,'1923-08-02','1929-03-04','Republican', 'Massachusetts');
INSERT INTO presidents VALUES (DEFAULT, 29,'Warren G. Harding',1865,1923,'1921-03-04','1923-08-02','Republican', 'Ohio');
INSERT INTO presidents VALUES (DEFAULT, 28,'Woodrow Wilson',1856,1924,'1913-03-04','1921-03-04','Democratic', 'New Jersey');
INSERT INTO presidents VALUES (DEFAULT, 27,'William Howard Taft',1857,1930,'1909-03-04','1913-03-04','Republican', 'Ohio');
INSERT INTO presidents VALUES (DEFAULT, 26,'Theodore Roosevelt',1858,1919,'1901-09-14','1909-03-04','Republican', 'New York');
INSERT INTO presidents VALUES (DEFAULT, 25,'William McKinley',1843,1901,'1897-03-04','1901-09-14','Republican', 'Ohio');
INSERT INTO presidents VALUES (DEFAULT, 24,'Grover Cleveland',1837,1908,'1893-03-04','1897-03-04','Democratic', 'New York');
INSERT INTO presidents VALUES (DEFAULT, 23,'Benjamin Harrison',1833,1901,'1889-03-04','1893-03-04','Republican', 'Indiana');
INSERT INTO presidents VALUES (DEFAULT, 22,'Grover Cleveland',1837,1908,'1885-03-04','1889-03-04','Democratic', 'New York');
INSERT INTO presidents VALUES (DEFAULT, 21,'Chester A. Arthur',1829,1886,'1881-09-19','1885-03-04','Republican', 'New York');
INSERT INTO presidents VALUES (DEFAULT, 20,'James A. Garfield',1831,1881,'1881-03-04','1881-09-19','Republican', 'Ohio');
INSERT INTO presidents VALUES (DEFAULT, 19,'Rutherford B. Hayes',1822,1893,'1877-03-04','1881-03-04','Republican', 'Ohio');
INSERT INTO presidents VALUES (DEFAULT, 18,'Ulysses S. Grant',1822,1885,'1869-03-04','1877-03-04','Republican', 'Ohio');
INSERT INTO presidents VALUES (DEFAULT, 17,'Andrew Johnson',1808,1875,'1865-04-15','1869-03-04','Democratic', 'Tennessee');
INSERT INTO presidents VALUES (DEFAULT, 16,'Abraham Lincoln',1809,1865,'1861-03-04','1865-04-15','Republican', 'Illinois');
INSERT INTO presidents VALUES (DEFAULT, 15,'James Buchanan',1791,1868,'1857-03-04','1861-03-04','Democratic', 'Pennsylvania');
INSERT INTO presidents VALUES (DEFAULT, 14,'Franklin Pierce',1804,1869,'1853-03-04','1857-03-04','Democratic', 'New Hampshire');
INSERT INTO presidents VALUES (DEFAULT, 13,'Millard Fillmore',1800,1874,'1850-07-09','1853-03-04','Whig', 'New York');
INSERT INTO presidents VALUES (DEFAULT, 12,'Zachary Taylor',1784,1850,'1849-03-04','1850-07-09','Whig', 'Louisiana');
INSERT INTO presidents VALUES (DEFAULT, 11,'James K. Polk',1795,1849,'1845-03-04','1849-03-04','Democratic', 'Tennessee');
INSERT INTO presidents VALUES (DEFAULT, 10,'John Tyler',1790,1862,'1841-04-04','1845-03-04','Whig', 'Virginia');
INSERT INTO presidents VALUES (DEFAULT, 9,'William Henry Harrison',1773,1841,'1841-03-04','1841-04-04','Whig', 'Ohio');
INSERT INTO presidents VALUES (DEFAULT, 8,'Martin Van Buren',1782,1862,'1837-03-04','1841-03-04','Democratic', 'New York');
INSERT INTO presidents VALUES (DEFAULT, 7,'Andrew Jackson',1767,1845,'1829-03-04','1837-03-04','Democratic', 'Tennessee');
INSERT INTO presidents VALUES (DEFAULT, 6,'John Quincy Adams',1767,1848,'1825-03-04','1829-03-04','Democratic-Republican', 'Massachusetts');
INSERT INTO presidents VALUES (DEFAULT, 5,'James Monroe',1758,1831,'1817-03-04','1825-03-04','Democratic-Republican', 'Virginia');
INSERT INTO presidents VALUES (DEFAULT, 4,'James Madison',1751,1836,'1809-03-04','1817-03-04','Democratic-Republican', 'Virginia');
INSERT INTO presidents VALUES (DEFAULT, 3,'Thomas Jefferson',1743,1826,'1801-03-04','1809-03-04','Democratic-Republican', 'Virginia');
INSERT INTO presidents VALUES (DEFAULT, 2,'John Adams',1735,1826,'1797-03-04','1801-03-04','Federalist');

-- I'll change this to the YYYY-MM-DD later and fix the order later, too
SET datestyle = 'ISO, MDY';

INSERT INTO prime_ministers VALUES (DEFAULT, 1,'Robert Walpole',1676,'4/4/1721','2/11/1742',1745);
INSERT INTO prime_ministers VALUES (DEFAULT, 53,'David Cameron',1966,'5/11/2010',null,null);
INSERT INTO prime_ministers VALUES (DEFAULT, 52,'Gordon Brown',1951,'6/27/2007','5/12/2010',null);
INSERT INTO prime_ministers VALUES (DEFAULT, 51,'Tony Blair',1953,'5/2/1997','6/27/2007',null);
INSERT INTO prime_ministers VALUES (DEFAULT, 50,'John Major',1943,'11/28/1990','5/2/1997',null);
INSERT INTO prime_ministers VALUES (DEFAULT, 49,'Margaret Thatcher',1925,'5/4/1979','11/28/1990',2013);
INSERT INTO prime_ministers VALUES (DEFAULT, 48,'James Callaghan',1912,'4/5/1976','5/4/1979',2005);
INSERT INTO prime_ministers VALUES (DEFAULT, 47,'Edward Heath',1916,'6/19/1970','3/4/1974',2005);
INSERT INTO prime_ministers VALUES (DEFAULT, 46,'Harold Wilson',1916,'10/16/1964','4/5/1976',1995);
INSERT INTO prime_ministers VALUES (DEFAULT, 45,'Alec Douglas-Home',1903,'10/18/1963','11/16/1964',1995);
INSERT INTO prime_ministers VALUES (DEFAULT, 44,'Harold Macmillan',1894,'1/10/1957','11/18/1963',1986);
INSERT INTO prime_ministers VALUES (DEFAULT, 43,'Anthony Eden',1897,'4/7/1955','1/10/1957',1977);
INSERT INTO prime_ministers VALUES (DEFAULT, 42,'Clement Attlee',1883,'8/26/1945','10/26/1951',1967);
INSERT INTO prime_ministers VALUES (DEFAULT, 41,'Winston Churchill',1874,'5/10/1940','4/7/1955',1965);
INSERT INTO prime_ministers VALUES (DEFAULT, 40,'Neville Chamberlain',1869,'5/27/1937','5/10/1940',1940);
INSERT INTO prime_ministers VALUES (DEFAULT, 39,'Ramsay MacDonald',1866,'1/22/1924','6/7/1935',1937);
INSERT INTO prime_ministers VALUES (DEFAULT, 38,'Stanley Baldwin',1867,'5/23/1923','5/28/1937',1947);
INSERT INTO prime_ministers VALUES (DEFAULT, 37,'Bonar Law',1858,'9/23/1922','5/22/1923',1923);
INSERT INTO prime_ministers VALUES (DEFAULT, 36,'David Lloyd George',1863,'12/7/1916','9/22/1922',1945);
INSERT INTO prime_ministers VALUES (DEFAULT, 35,'Herbert Asquith',1852,'4/5/1908','12/5/1916',1928);
INSERT INTO prime_ministers VALUES (DEFAULT, 34,'Henry Campbell-Bannerman',1836,'12/5/1905','4/3/1908',1908);
INSERT INTO prime_ministers VALUES (DEFAULT, 33,'Arthur Balfour',1848,'6/11/1902','12/5/1905',1930);
INSERT INTO prime_ministers VALUES (DEFAULT, 32,'Archibald Primrose',1847,'3/5/1894','6/22/1895',1929);
INSERT INTO prime_ministers VALUES (DEFAULT, 31,'Robert Cecil',1830,'6/23/1885','7/11/1902',1903);
INSERT INTO prime_ministers VALUES (DEFAULT, 30,'William Ewart Gladstone',1809,'12/3/1868','3/2/1894',1898);
INSERT INTO prime_ministers VALUES (DEFAULT, 29,'Benjamin Disraeli',1804,'2/27/1868','4/21/1880',1881);
INSERT INTO prime_ministers VALUES (DEFAULT, 28,'Henry Temple',1784,'2/4/1855','11/18/1865',1865);
INSERT INTO prime_ministers VALUES (DEFAULT, 27,'George Hamilton-Gordon',1784,'12/19/1852','1/30/1855',1860);
INSERT INTO prime_ministers VALUES (DEFAULT, 26,'Edward Smith-Stanley',1799,'2/23/1852','2/27/1868',1869);
INSERT INTO prime_ministers VALUES (DEFAULT, 25,'John Russell',1792,'6/30/1846','6/28/1866',1878);
INSERT INTO prime_ministers VALUES (DEFAULT, 24,'Robert Peel',1788,'12/10/1834','6/29/1846',1850);
INSERT INTO prime_ministers VALUES (DEFAULT, 23,'William Lamb',1779,'7/16/1834','8/30/1841',1848);
INSERT INTO prime_ministers VALUES (DEFAULT, 22,'Charles Grey',1764,'11/22/1830','7/16/1834',1845);
INSERT INTO prime_ministers VALUES (DEFAULT, 21,'Arthur Wellesley',1769,'1/22/1828','12/10/1834',1852);
INSERT INTO prime_ministers VALUES (DEFAULT, 20,'Frederick Robinson',1782,'8/31/1827','1/21/1828',1859);
INSERT INTO prime_ministers VALUES (DEFAULT, 19,'George Canning',1770,'4/10/1827','8/8/1827',1827);
INSERT INTO prime_ministers VALUES (DEFAULT, 18,'Robert Jenkinson',1770,'6/8/1812','4/9/1827',1828);
INSERT INTO prime_ministers VALUES (DEFAULT, 17,'Spencer Perceval',1762,'10/4/1809','5/11/1812',1812);
INSERT INTO prime_ministers VALUES (DEFAULT, 16,'William Grenville',1759,'2/11/1806','3/31/1807',1834);
INSERT INTO prime_ministers VALUES (DEFAULT, 15,'Henry Addington',1757,'3/17/1801','5/10/1804',1844);
INSERT INTO prime_ministers VALUES (DEFAULT, 14,'William Pitt the Younger',1759,'12/19/1783','1/23/1806',1806);
INSERT INTO prime_ministers VALUES (DEFAULT, 13,'William Cavendish-Bentinck',1738,'4/2/1783','10/4/1809',1809);
INSERT INTO prime_ministers VALUES (DEFAULT, 12,'William Petty',1737,'7/4/1782','4/2/1783',1805);
INSERT INTO prime_ministers VALUES (DEFAULT, 11,'Frederick North',1732,'1/28/1770','4/22/1782',1792);
INSERT INTO prime_ministers VALUES (DEFAULT, 10,'Augustus FitzRoy',1735,'10/14/1768','1/28/1770',1811);
INSERT INTO prime_ministers VALUES (DEFAULT, 5,'William Cavendish',1720,'11/16/1756','6/25/1757',1764);
INSERT INTO prime_ministers VALUES (DEFAULT, 9,'William Pitt the Elder',1708,'7/30/1766','10/14/1768',1778);
INSERT INTO prime_ministers VALUES (DEFAULT, 8,'Charles Watson-Wentworth',1730,'7/13/1765','7/1/1782',1782);
INSERT INTO prime_ministers VALUES (DEFAULT, 7,'George Grenville',1712,'4/16/1763','7/13/1765',1770);
INSERT INTO prime_ministers VALUES (DEFAULT, 6,'John Stuart',1713,'5/26/1762','4/8/1763',1792);
INSERT INTO prime_ministers VALUES (DEFAULT, 4,'Thomas Pelham-Holles',1693,'3/26/1754','5/26/1762',1768);
INSERT INTO prime_ministers VALUES (DEFAULT, 3,'Henry Pelham',1694,'8/27/1743','3/11/1754',1754);
INSERT INTO prime_ministers VALUES (DEFAULT, 2,'Spencer Compton',1673,'2/16/1742','7/2/1743',1743);

SET datestyle = default;
