-- Find prisoners with sentences having punishment time greater than the average
SELECT
    p.ID_of_prisoner,
    p.Name,
    p.Surname,
    s.Type,
    s.Punishment_Time
FROM
    Prisoners p
JOIN
    Sentences s ON p.ID_of_prisoner = s.ID_Prisoner
WHERE
    s.Punishment_Time > (
        SELECT AVG(Punishment_Time)
        FROM Sentences
    );
