-- Print the number of sentences for each prisoner
SELECT
    p.ID_of_prisoner,
    p.Name,
    p.Surname,
    COUNT(s.ID_of_sentence) AS Number_of_Sentences
FROM
    Prisoners p
    LEFT JOIN Sentences s ON p.ID_of_prisoner = s.ID_Prisoner
GROUP BY
    p.ID_of_prisoner, p.Name, p.Surname
ORDER BY
    p.ID_of_prisoner;