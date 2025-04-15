-- Create a view for Active Prisoners with Stay Information
CREATE VIEW Active_Prisoners_View AS
SELECT p.ID_of_prisoner, p.Name, p.Surname, st.Date_of_beginning, st.Date_of_end
FROM Prisoners p
JOIN Sentences s ON p.ID_of_prisoner = s.ID_Prisoner
JOIN Stay st ON s.ID_of_sentence = st.ID_Sentences
WHERE st.Status = 'Active';
--SELECT * FROM Active_Prisoners_View;
