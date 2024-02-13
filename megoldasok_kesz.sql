-- A feladatok megoldása elkészített SQL parancsokat illessze be a feladatok után

-- 2. feladat:
    INSERT INTO allomasok(id, nev, tipus, orszag, mukodo) VALUES
    (5000, "Moszkva", "állomás", "RUS",0);

-- 3. feladat:
    UPDATE allomasok SET mukodo = 1
    WHERE id = 5000;

-- 4. feladat:
    DELETE FROM allomasok 
    WHERE id = 5000;

-- 5. feladat:
    DELETE FROM allomasok
    WHERE id = 2324;

    DELETE FROM helyek
    WHERE allomasid = 2324;

-- 6. feladat:
    SELECT
      allomasok.orszag,
      allomasok.nev
    FROM allomasok
    WHERE allomasok.orszag IS NOT NULL
    ORDER BY allomasok.nev;


-- 7. feladat:
    SELECT
      allomasok.tipus,
      allomasok.nev,
      helyek.tav
    FROM helyek
      INNER JOIN allomasok
        ON helyek.allomasId = allomasok.id
    WHERE allomasok.mukodo = 1
    ORDER BY helyek.tav;


-- 8. feladat:
    SELECT
      MAX(helyek.tav) AS hossz,
      helyek.vonalId
    FROM helyek
      INNER JOIN vonalak
        ON helyek.vonalId = vonalak.id
    GROUP BY helyek.vonalId
    ORDER BY helyek.tav;


-- 9. feladat:



-- 10. feladat:
    SELECT
      allomasok.nev,
      helyek.vonalId,
      helyek.allomasId
    FROM helyek
      INNER JOIN allomasok
        ON helyek.allomasId = allomasok.id
      INNER JOIN vonalak
        ON helyek.vonalId = vonalak.id
    WHERE helyek.vonalId = "80" AND allomasok.nev NOT LIKE "Hatvan";


-- 11. feladat:
    SELECT
      allomasok.nev,
      COUNT(helyek.vonalId) AS db
    FROM helyek
      INNER JOIN allomasok
        ON helyek.allomasId = allomasok.id
    GROUP BY allomasok.nev
    HAVING db >= 5
    ORDER BY db DESC;



-- 12. feladat:


