SELECT nombre
FROM JUEGO
WHERE nombre NOT LIKE 'C%' AND nombre NOT LIKE 'T%' AND fecha=(
    SELECT MAX(fecha)
    FROM juego
);