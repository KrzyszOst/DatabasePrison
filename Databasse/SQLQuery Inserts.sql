
INSERT INTO Prisoners (ID_of_prisoner, Name, Surname, Gender, Date_of_Birth)
VALUES
    (74581932, 'Grzegorz', 'Floryda', 'Male', '1975-06-14'),
    (26047389, 'Julia', 'Smialek', 'Female', '1982-11-03'),
    (58962147, 'Karol', 'Wiœniewski', 'Male', '1990-04-22'),
    (70318456, 'Weronika', 'Sowa', 'Female', '1978-08-07'),
    (12693578, 'Michael', 'Jackson', 'Male', '1985-02-17'),
    (87456201, 'Aniela', 'Bogusz', 'Female', '1993-09-09'),
    (39501724, 'Jacek', 'Jaworek', 'Male', '1972-03-26'),
    (60284715, 'Agata', 'Fak', 'Female', '1988-10-15'),
    (31890564, 'Jas', 'Fasola', 'Male', '1997-05-12'),
    (93427850, 'Joanna', 'Krupa', 'Female', '1970-12-05');

	SELECT * FROM Prisoners;

INSERT INTO Sentences (ID_of_sentence, Type, Date_of_sentence, Description, Punishment_Time, ID_Prisoner)
VALUES
    (823476, 'Felony', '2022-01-15', 'Armed robbery', 36, 74581932),
	(512837, 'Misdemeanor', '2021-10-23', 'Public intoxication', 2, 74581932),
    (159832, 'Misdemeanor', '2023-11-05', 'Shoplifting', 3, 26047389),
    (674215, 'Felony', '2023-03-10', 'Assault and battery', 12, 58962147),
	(726503, 'Misdemeanor', '2016-02-04', 'Trespassing', 6, 58962147),
    (406789, 'Misdemeanor', '2023-08-12', 'Disturbing the peace', 5, 70318456),
    (581342, 'Felony', '2020-05-12', 'Drug trafficking', 18, 12693578),
	(398245, 'Felony', '2023-01-22', 'Kidnapping a kid', 96, 12693578),
    (937561, 'Misdemeanor', '2023-11-01', 'DUI', 6, 87456201),
    (245698, 'Felony', '2023-07-01', 'Forgery', 12, 39501724),
	(145870, 'Felony', '2017-03-18', 'Identity theft', 36, 39501724),
    (703214, 'Misdemeanor', '2023-12-05', 'Vandalism', 4, 60284715),
    (864109, 'Felony', '2022-09-05', 'Burglary', 24, 31890564),	
    (630972, 'Misdemeanor', '2014-04-17', 'Reckless driving', 18, 31890564),
    (984356, 'Felony', '2023-05-28', 'Money laundering', 26, 93427850);

	SELECT * FROM Sentences;


INSERT INTO Stay (ID_of_stay, Date_of_beginning, Date_of_end, Status, ID_Sentences)
VALUES
    (47215, '2022-01-16', '2025-01-16', 'Active', 823476), 
	(70124, '2021-10-24', '2021-12-24', 'Completed', 512837), 
    (83694, '2023-11-06', '2024-02-06', 'Active', 159832), 
    (15972, '2023-03-11', '2024-03-11', 'Active', 674215), 
	(30457, '2016-02-05', '2016-08-05', 'Completed', 726503),
    (70358, '2023-08-13', '2024-01-13', 'Active', 406789),
    (24871, '2020-05-13', '2021-11-13', 'Completed', 581342),
	(92683, '2023-01-23', '2031-01-23', 'Active', 398245),
    (59423, '2023-11-02', '2024-05-02', 'Active', 937561),
    (81736, '2023-07-02', '2024-07-02', 'Active', 245698),
	(61890, '2017-03-19', '2020-03-19', 'Completed', 145870),
    (36509, '2023-12-06', '2024-04-06', 'Active', 703214),
    (48206, '2022-09-06', '2024-09-06', 'Active', 864109),
    (76410, '2014-04-18', '2015-10-18', 'Completed', 630972),
	(47321, '2023-05-29', '2025-07-29', 'Active', 984356);

	SELECT * FROM Stay;

INSERT INTO Personal_Items (ID_of_item, Item_description, Is_returned, Date_of_receipt, Item_return_date, ID_Stay)
VALUES
    (123456789, 'Watch', 0, '2022-01-16', NULL, 47215),
    (987654321, 'Book', 1, '2021-10-24', '2021-12-24', 70124),
    (456789012, 'Cellphone', 0, '2023-11-06', NULL, 83694),
    (876543210, 'Headphones', 0, '2023-03-11', NULL, 15972),
    (234567890, 'Wallet', 1, '2016-02-05', '2016-08-05', 30457),
    (543210987, 'Clothing', 0, '2023-08-13', NULL, 70358),
    (789012345, 'Jewelry', 1, '2020-05-13', '2021-11-13', 24871),
    (210987654, 'Laptop', 1, '2020-05-13', '2021-11-13', 24871),
    (678901234, 'Glasses', 0, '2023-11-02', NULL, 59423),
    (890123456, 'Medication', 0, '2023-07-02', NULL, 81736),
    (345678901, 'Identification Card', 1, '2017-03-19', '2020-03-19', 61890),
    (901234567, 'Art supplies', 0, '2023-12-12', NULL, 36509),
    (765432109, 'Toiletries', 0, '2023-12-06', NULL, 36509),
    (321098765, 'Snacks', 0, '2023-12-12', NULL, 36509),
    (615481372, 'Camera', 0, '2023-05-29', NULL, 47321),
	(815482912, 'Travel bag', 0, '2023-05-29', NULL,  47321);

	SELECT * FROM Personal_Items;

INSERT INTO Incidents (Id_of_incident, Date_of_incident, Description_of_incident, Type_of_incident, Number_of_participants)
VALUES
    (326, '2023-11-07', 'Assault between prisoners', 'Physical altercation', 3),
    (118, '2018-03-19', 'Contraband discovery', 'Security breach', 1),
    (545, '2022-10-27', 'Unauthorized communication attempt', 'Rule violation', 2);

	SELECT * FROM Incidents;



INSERT INTO Prisoner_role_in_incident (ID_role, Punishment, Role, More_information_about_role, ID_Stay, ID_Incidents)
VALUES
    (6890, 'Loss of privileges', 'Instigator', 'Facilitated contraband entry', 61890, 118),
    (1743, 'Written warning', 'Participant', 'Attempted communication', 48206, 545),
    (9327, 'Written warning', 'Participant', 'Unauthorized possession', 47215, 545),
	(3521, 'Solitary confinement', 'Aggressor', 'Initiated the fight', 47321, 326),
	(5068, 'Restricted visitation', 'Aggressor', 'Involved in physical altercation', 92683, 326),
    (2485, 'Counseling session', 'Aggressor', 'Intentional rule violation', 15972, 326);

	SELECT * FROM Prisoner_role_in_incident;

INSERT INTO Visitors (ID_of_visitor, Visitor_Name, Visitor_Surname, Birth_Date, Pesel, Address, Prison_Relation)
VALUES
    (87432901, 'Anna', 'Kowalska', '1990-01-15', '61031872583', 'ulica Dêbowa 56, Gdañsk', 'Friend'),
    (56219843, 'Piotr', 'Nowak', '1985-05-20', '86032579871', 'bulwar Ró¿any 89, Gdañsk', 'Family'),
    (73045628, 'Marta', 'Wojcik', '1992-09-10', '76020887967', 'ulica Brzozowa 11, Gdañsk', 'Legal Representative'),
    (61983725, 'Andrzej', 'Lis', '1988-02-28', '69082525771', 'aleja Kwiatowa 34, Gdañsk', 'Family'),
    (48572390, 'Agnieszka', 'Zaj¹c', '1984-11-12', '65082847123', 'park Wiœniowy 78, Gdañsk', 'Friend'),
    (29384756, 'Krzysztof', 'Szymañski', '1995-07-03', '84031619822', 'skwer Bezpieczny 45, Gdañsk', 'Legal Representative'),
    (15097682, 'Monika', 'D¹browska', '1978-12-17', '88101035615', 'ulica Malinowa 23, Gdañsk', 'Family'),
    (80456123, 'Grzegorz', 'Jankowski', '1993-04-05', '70060947285', 'prospekt S³oneczny 20, Kraków', 'Friend'),
    (37682914, 'Katarzyna', 'Nowicka', '1980-08-23', '95070115343', 'aleja Lipowa 3, Warszawa', 'Legal Representative'),
    (91234567, '£ukasz', 'Kaczmarek', '1998-01-30', '52091581946', 'ulica Klonowa 15, Poznañ', 'Friend');

	SELECT * FROM Visitors;

INSERT INTO Prison_Visits (ID_of_visits, Purpose, Time, Date, ID_Stay, ID_Visitors)
VALUES
    (84546, 'Regular visit', 30, '2022-02-05', 47215, 87432901),
    (34422, 'Family visit', 30, '2021-12-24', 70124, 56219843),
    (82524, 'Legal consultation', 30, '2023-02-06', 83694, 73045628),
    (55351, 'Friend visit', 30, '2023-03-11', 15972, 61983725),
    (55490, 'Regular visit', 30, '2016-08-05', 30457, 48572390),
    (90703, 'Family visit', 30, '2023-01-13', 70358, 29384756),
    (67753, 'Legal consultation', 30, '2021-11-16', 24871, 15097682),
    (38003, 'Regular visit', 30, '2023-01-23', 92683, 80456123),
    (13434, 'Family visit', 30, '2023-05-02', 59423, 37682914),
    (38790, 'Legal consultation', 30, '2023-07-02', 47215, 87432901),
    (16408, 'Regular visit', 30, '2020-03-19', 47215, 87432901),
    (21283, 'Family visit', 30, '2023-04-06', 70124, 56219843),
    (65697, 'Regular visit', 30, '2023-09-06', 83694, 73045628),
    (99374, 'Family visit', 30, '2015-10-18', 15972, 61983725),
    (76385, 'Legal consultation', 30, '2022-07-29', 15972, 61983725);

	SELECT * FROM Prison_Visits;

INSERT INTO Programs (Name_of_Program, Resocialization_Description, Capacity, Occupancy)
VALUES
    ('Education Program', 'Provides educational opportunities for inmates', 50, 20),
    ('Counseling Program', 'Offers counseling services to support mental well-being', 30, 10),
    ('Vocational Training', 'Equips inmates with practical skills for employment', 40, 15),
    ('Fitness Program', 'Promotes physical health and wellness', 25, 8),
    ('Art Therapy', 'Uses art as a means of rehabilitation and self-expression', 35, 12);

	SELECT * FROM Programs;

INSERT INTO Allocation_to_Programs (ID_of_program_allocation, Program_Start_Date, Program_end_date, Assessment_of_progress, Status, ID_Stay, ID_Programs)
VALUES
    (1, '2022-01-10', '2022-03-10', 'Good progress', 0, 47215, 'Education Program'),
    (2, '2021-10-25', '2021-12-25', 'Satisfactory progress', 0, 70124, 'Counseling Program'),
    (3, '2023-11-07',  '2023-11-20', 'Excellent progress', 0, 83694, 'Vocational Training'),
    (4, '2023-03-12', NULL, 'On track', 1, 15972, 'Education Program'),
    (5, '2016-02-06', '2016-08-06', 'Completed successfully', 0, 30457, 'Counseling Program'),
    (6, '2023-08-14', '2023-09-19' , 'Needs improvement', 0, 70358, 'Vocational Training'),
    (7, '2020-05-14', '2021-11-10', 'Completed successfully', 0, 24871, 'Fitness Program'),
    (8, '2023-01-24', NULL, 'On track', 1, 92683, 'Art Therapy'),
    (9, '2023-11-03', NULL, 'Excellent progress', 1, 59423, 'Education Program'),
    (10, '2023-07-03', NULL, 'Good progress', 1, 81736, 'Counseling Program'),
    (11, '2017-03-20', '2020-03-14', 'Completed successfully', 0, 61890, 'Vocational Training'),
    (12, '2023-12-07', NULL, 'Satisfactory progress', 1, 36509, 'Fitness Program'),
    (13, '2022-09-07', NULL, 'Needs improvement', 1, 48206, 'Art Therapy'),
    (14, '2014-04-19', '2015-10-19', 'Excellent progress', 0, 76410, 'Education Program'),
    (15, '2023-05-30', NULL, 'On track', 1, 47321, 'Counseling Program'),
	(16, '2022-05-01', NULL, 'Good progress', 1, 47215, 'Fitness Program'),
    (17, '2021-11-30', NULL, 'Changed program', 1, 83694, 'Education Program'),
    (18,  '2023-11-25', NULL, 'On track', 1, 70358, 'Art Therapy');

SELECT * FROM Allocation_to_Programs;

INSERT INTO Prison_cells (Prison_cell_number, Type, Capacity, Occupancy)
VALUES
    (101, 'Standard', 2, 1),
    (102, 'Isolation', 1, 1),
    (103, 'Maximum Security', 3, 2),
    (104, 'Minimum Security', 4, 2),
    (105, 'Standard', 2, 1),
    (106, 'Isolation', 1, 0),
    (107, 'Standard', 3, 1),
    (108, 'Minimum Security', 4, 2),
    (109, 'Standard', 2, 0),
    (110, 'Isolation', 1, 0);

	SELECT * FROM Prison_cells;

INSERT INTO Allocation_to_prison_cells (ID_of_cell_allocation, Date_of_start, Date_of_end, Status, ID_Stay, Prison_cell_number)
VALUES
    (201, '2022-01-16', '2022-05-23', 'Completed', 47215, 101),
    (202, '2021-10-24', '2021-12-24', 'Completed', 70124, 102),
    (203, '2023-11-06', NULL, 'Active', 83694, 103),
    (204, '2023-03-11', NULL, 'Active', 15972, 104),
    (205, '2016-02-05', '2016-08-05', 'Completed', 30457, 105),
    (206, '2023-08-13', NULL, 'Active', 70358, 106),
    (207, '2020-05-13', '2021-11-13', 'Completed', 24871, 107),
    (208, '2023-01-23', NULL, 'Active', 92683, 108),
    (209, '2023-11-02', NULL, 'Active', 59423, 109),
    (210, '2023-07-02', NULL, 'Active', 81736, 110),
    (211, '2017-03-19', '2018-04-20', 'Completed', 61890, 101),
    (212, '2023-12-06', NULL, 'Active', 36509, 102),
    (213, '2022-09-06', NULL, 'Active', 48206, 103),
    (214, '2014-04-18', '2014-10-18', 'Completed', 76410, 104),
    (215, '2023-05-29', NULL, 'Active', 47321, 105),
    (216, '2022-05-23', NULL, 'Active', 47215, 101),
    (217, '2014-10-18', '2015-10-18', 'Completed', 70124, 107),
    (218, '2018-04-20', '2020-03-19', 'Active', 61890, 109);

	SELECT * FROM Allocation_to_prison_cells;