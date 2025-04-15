select * from Prisoners;
select * from Sentences;
select * from Stay;

DELETE FROM Prisoners WHERE ID_of_prisoner = 74581932;
UPDATE Prisoners SET ID_of_prisoner = 11111111 WHERE ID_of_prisoner = 26047389;
select * from Prisoners;
select * from Sentences;
select * from Stay;

DELETE FROM Stay WHERE ID_of_stay = 70124;
UPDATE Stay SET ID_of_stay = 22222 WHERE ID_of_stay = 83694;

select * from Prisoners;
select * from Sentences;
select * from Stay;

select * from Prison_cells;
select * from Allocation_to_prison_cells;
DELETE FROM Prison_cells WHERE Prison_cell_number = 101;
UPDATE Prison_cells SET Capacity = 999 WHERE Capacity = 1;
select * from Prison_cells;
select * from Allocation_to_prison_cells;

select * from Programs;
select * from Allocation_to_Programs;
DELETE FROM Programs WHERE Name_of_Program = 'Education Program';
UPDATE Allocation_to_Programs SET Program_end_date = '2023-12-15'  WHERE ID_of_program_allocation = 4;
UPDATE Allocation_to_Programs SET Status = 0  WHERE ID_of_program_allocation = 4;
UPDATE Allocation_to_Programs SET Assessment_of_progress = 'Completed successfully'  WHERE ID_of_program_allocation = 4;
select * from Programs;
select * from Allocation_to_Programs;



select * from Visitors;
select * from Prison_Visits;
UPDATE Prison_Visits SET Time = 60 WHERE ID_of_visits = 67753;
DELETE FROM Visitors WHERE ID_of_visitor = 91234567;
select * from Visitors;
select * from Prison_Visits;


select * from Incidents;
select * from Prisoner_role_in_incident;
UPDATE Incidents SET Number_of_participants = 888 WHERE Id_of_incident = 326;
DELETE FROM Prisoner_role_in_incident WHERE ID_role = 3521;
select * from Incidents;
select * from Prisoner_role_in_incident;

select * from Personal_Items;
UPDATE Personal_Items SET Is_returned = 1 WHERE ID_of_item = 543210987;
UPDATE Personal_Items SET Item_return_date = '2023-12-15' WHERE ID_of_item = 543210987;
DELETE FROM Personal_Items WHERE ID_of_item = 234567890;
select * from Personal_Items;