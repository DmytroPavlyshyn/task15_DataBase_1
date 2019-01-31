use labor_sql;

-- 1 
-- SELECT maker, type FROM product WHERE product.type='Laptop' ORDER BY maker;
-- 2 
-- SELECT model, ram, screen, price FROM laptop WHERE laptop.price>1000 ORDER BY 2 , 4 DESC;
-- 3 
-- SELECT * FROM printer WHERE color='y' ORDER BY 5 DESC;
-- 4
-- SELECT model, speed, hd, cd, price FROM pc WHERE (cd = '12x' OR cd = '24x' ) AND price < 600 ORDER BY speed DESC;
-- 5
-- SELECT name, class FROM ships WHERE ships.name = ships.class ORDER BY name;
-- 6
-- SELECT * FROM pc WHERE  speed>=500 AND price<800 ORDER BY price DESC;
-- 7
-- SELECT * FROM printer WHERE type!='Matrix' AND price< 300 ORDER BY type DESC;
-- 8 
-- SELECT model, speed FROM pc WHERE price BETWEEN 400 AND 600 ORDER BY hd;
-- 9
-- SELECT pc.model, speed, hd FROM pc JOIN product AS pr ON pc.model = pr.model WHERE pr.maker = 'A' ORDER BY speed;
-- 10
-- SELECT model, speed, hd, price FROM laptop WHERE NOT (screen<12) ORDER BY price DESC;
-- 11
-- SELECT model, type, price FROM printer WHERE price <300 ORDER BY type DESC;
-- 12
 -- SELECT model, ram, price FROM laptop WHERE ram=64 ORDER BY screen;
-- 13
-- SELECT model, ram, price FROM pc WHERE ram>64 ORDER BY hd;
-- 14
-- SELECT model, speed, price FROM pc WHERE  SPEED >= 500 AND SPEED <= 750 ORDER BY hd;
-- 15
-- SELECT * FROM outcome_o  WHERE outcome_o.out > 2000  ORDER BY date DESC;
-- 16 
-- SELECT * FROM income_o WHERE inc BETWEEN 5000 AND 10000 ORDER BY inc;
-- 17
-- SELECT  * FROM income WHERE point = 1 ORDER BY inc;
-- 18
-- SELECT outcome.out as o  FROM outcome WHERE point = 2 ORDER BY o;
-- 19
-- SELECT class FROM classes WHERE country = 'Japan' ORDER BY type DESC;
-- 20
-- SELECT name, launched FROM ships WHERE launched  BETWEEN 1920 AND 1942 ORDER BY launched DESC;
-- 21 
-- SELECT ship, battle FROM outcomes WHERE battle= 'Guadalcanal' AND result!= 'sunk' ORDER BY ship DESC;
-- 22
-- SELECT ship, battle, result FROM outcomes WHERE  result= 'sunk' ORDER BY ship DESC;
-- 23
-- SELECT class, displacement FROM classes WHERE displacement>=40000 ORDER BY type;
-- 24
-- SELECT trip_no, town_from, town_to FROM trip WHERE 'London' IN(town_from,town_to);
-- 25
-- SELECT  trip_no, plane, town_from, town_to FROM trip WHERE plane='TU-134' ORDER BY time_out DESC;
-- 26
-- SELECT trip_no, plane, town_from, town_to FROM trip WHERE plane!='IL-86' ORDER BY plane 
-- 27
-- SELECT trip_no, town_from, town_to FROM trip WHERE 'Rostov' NOT IN (town_from,town_to) ORDER BY plane;

-- 2.
-- 1
-- SELECT model from pc  WHERE model  RLIKE '.*1.*1.*';
-- 2
-- SELECT * FROM outcome WHERE date LIKE '%-03-%';
-- 3
-- SELECT * FROM outcome_o WHERE DAYOFMONTH(date) = 14;
-- 4
-- SELECT name FROM ships WHERE name LIKE'W%n';
-- 5
-- SELECT name FROM ships WHERE name RLIKE '.*e.*';
-- 6
-- SELECT name, launched FROM ships WHERE name NOT LIKE '%a'
-- 7
-- SELECT * FROM outcomes  WHERE  battle REGEXP '(?i)^\\w+\\s\\w*[a-z&&[^c]]$';
-- 8 
-- SELECT * FROM trip WHERE time(time_out) between '12:00:00' and '17:00:00';
-- 9
-- SELECT * FROM trip -- WHERE time(time_in) between '17:00:00' and '23:00:00';
-- 10
-- SELECT date FROM pass_in_trip WHERE place RLIKE '1\\w+';
-- 11
-- SELECT date	 FROM pass_in_trip  WHERE place RLIKE '\\d+c';
-- 12
-- SELECT * FROM passenger --  WHERE name RLIKE '(?i)\\w+\\s+C\\w';
-- 13
-- SELECT * FROM passenger --  WHERE name RLIKE '(?i)\\w+\\s+^J\\w';
-- 3.
-- 1
-- SELECT maker, type, speed, hd FROM pc   JOIN product AS pr ON pc.model=pr.model  WHERE hd <=8;
-- 2
-- SELECT maker FROM product  AS pr JOIN pc  ON pc.model=pr.model   WHERE NOT speed<600;
-- 3
-- SELECT * FROM product  AS pr JOIN laptop  ON laptop.model=pr.model   WHERE  speed<=500;
-- 4
 -- SELECT distinct * from laptop  l1 join  laptop l2  on  l1.hd=l2.hd AND l2.ram = l1.ram  AND l1.model>=l2.model AND l1.code>l2.code;
 -- 5
-- SELECT * FROM(SELECT c1.country from classes as c1 GROUP BY c1.country,c1.type) AS c2 group by c2.country having count(c2.country)=2;
 -- 6
 -- SELECT p.model, p.maker, pc.price from product  AS p JOIN pc ON p.model=pc.model WHERE pc.price<600;
 -- 7 
 -- SELECT pi.model, po.maker FROM printer pi JOIN product po ON  pi.model=po.model WHERE price >300
 -- 8
 -- SELECT product.maker, product.type, product.model, pc.speed FROM product JOIN pc ON pc.model = product.model
 -- UNION ALL
 -- SELECT product.maker, product.type, product.model, laptop.speed FROM product JOIN laptop ON laptop.model = product.model
 -- 9
-- SELECT product.maker, product.model, pc.price  FROM product  JOIN pc ON pc.model = product.model WHERE pc.price IS NOT NULL
 -- 10
 -- SELECT maker, type, l.model, speed FROM laptop l JOIN product p ON l.model = p.model WHERE speed >600;
 -- 11
-- SELECT displacement FROM ships s LEFT JOIN classes c ON s.class = c.class;
-- 12
-- SELECT battle, date FROM outcomes JOIN battles on outcomes.battle = battles.name WHERE result = 'OK'
-- 13
-- SELECT country FROM ships s JOIN  classes c ON c.class=s.class 
-- 14
-- SELECT name FROM trip JOIN company ON trip.ID_comp = company.ID_comp WHERE plane= 'Boeing'
-- 15
-- SELECT date FROM passenger JOIN pass_in_trip ON passenger.ID_psg = pass_in_trip.ID_psg
