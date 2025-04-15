-- Find prisoners with the maximum punishment time 
SELECT
    p.ID_of_prisoner,
    p.Name,
    p.Surname,
    s.Punishment_Time,
    s.Description
FROM
    Prisoners p
JOIN
    Sentences s ON p.ID_of_prisoner = s.ID_Prisoner
WHERE
    s.Punishment_Time = (
        SELECT MAX(Punishment_Time)
        FROM Sentences
    );
