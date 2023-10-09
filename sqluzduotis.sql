1.

CREATE TABLE automobiliai (
    id, int,
    marke varchar(255),
    modelis varchar(255),
    valstybe varchar(255),
    pagaminimo_metai int,
    kebulo_tipas varchar(255),
    transmisijos_rusis varchar(255),
    kuro_sanaudos int,
    pilna_kaina int,
    kaina_issimoketinai int,
    likutine_verte int
    );

2. 

INSERT INTO automobiliai (id, marke, modelis, valstybe, pagaminimo_metai, kebulo_tipas, transmisijos_rusis, kuro_sanaudos, pilna_kaina, kaina_issimoketinai, likutine_verte)
VALUES (1, 'Audi', 'A4', 'Germany', 2022, 'Sedan', 'Automatic', 30, 35000, 4000, 32000);

3. 

UPDATE automobiliai
SET kuro_sanaudos = 5
WHERE id = 1;

4. 

DELETE FROM automobiliai WHERE pagaminimo_metai <= 2010; 

5.

SELECT * 
FROM automobiliai
WHERE marke LIKE 'to%' AND modelis LIKE '%camry%'; -- % gale kai starts with, % pradzioje ends with, % is abieju pusiu kai ieskai pagal string

6.

SELECT *
FROM automobiliai
ORDER BY pilna_kaina DESC -- nuo auksciausios iki zemiausios
LIMIT 1; -- rodys tik viena rezultata

7.

SELECT *
FROM automobiliai
WHERE kuro_sanaudos BETWEEN 5 AND 7;

8.

SELECT marke, AVG(kuro_sanaudos) -- apskaiciuoja vidutines kuro sanaudas
FROM automobiliai
GROUP BY marke;

9.

UPDATE automobiliai
SET kebulo_tipas = 'Sedan'
WHERE modelis = 'A4';

10.

SELECT *
FROM automobiliai
ORDER BY pagaminimo_metai ASC; 





