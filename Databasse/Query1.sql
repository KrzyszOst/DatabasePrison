SELECT COUNT(DISTINCT p.ID_of_prisoner) AS Active_Prisoners_Count
FROM Prisoners p
JOIN Sentences s ON p.ID_of_prisoner = s.ID_Prisoner
JOIN Stay st ON s.ID_of_sentence = st.ID_Sentences
WHERE st.Status = 'Active';
-- counts how many prisoners have active stay