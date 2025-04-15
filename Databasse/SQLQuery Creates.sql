-- Create Prisoners table
CREATE TABLE Prisoners (
    ID_of_prisoner INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Date_of_Birth DATE NOT NULL,
    UNIQUE(ID_of_prisoner),

);

CREATE TABLE Sentences (
    ID_of_sentence INT PRIMARY KEY NOT NULL,
    Type VARCHAR(255) NOT NULL,
    Date_of_sentence DATE NOT NULL,
    Description TEXT NOT NULL,
    Punishment_Time INT NOT NULL,
    ID_Prisoner INT NOT NULL,
    UNIQUE(ID_of_sentence),
    FOREIGN KEY (ID_Prisoner) REFERENCES Prisoners(ID_of_prisoner)
	ON DELETE CASCADE ON UPDATE CASCADE,
);


CREATE TABLE Stay (
    ID_of_stay INT PRIMARY KEY NOT NULL,
    Date_of_beginning DATE NOT NULL,
    Date_of_end DATE NOT NULL,
    Status VARCHAR(50) NOT NULL,
    ID_Sentences INT NOT NULL,
    UNIQUE(ID_of_stay),
    FOREIGN KEY (ID_Sentences) REFERENCES Sentences(ID_of_sentence)
	ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE Personal_Items (
    ID_of_item INT PRIMARY KEY NOT NULL,
    Item_description TEXT NOT NULL,
    Is_returned BIT NOT NULL,
    Date_of_receipt DATE NOT NULL,
    Item_return_date DATE,
    ID_Stay INT NOT NULL,
    UNIQUE(ID_of_item),
    FOREIGN KEY (ID_Stay) REFERENCES Stay(ID_of_stay)
	ON DELETE CASCADE ON UPDATE CASCADE,
);


CREATE TABLE Incidents (
    Id_of_incident INT PRIMARY KEY NOT NULL,
    Date_of_incident DATE NOT NULL,
    Description_of_incident TEXT NOT NULL,
    Type_of_incident VARCHAR(50) NOT NULL,
    Number_of_participants INT CHECK (Number_of_participants >= 0),
    UNIQUE(Id_of_incident)
);

CREATE TABLE Prisoner_role_in_incident (
    ID_role INT PRIMARY KEY NOT NULL,
    Punishment TEXT NOT NULL,
    Role VARCHAR(255) NOT NULL,
    More_information_about_role TEXT NOT NULL,
    ID_Stay INT NOT NULL,
    ID_Incidents INT NOT NULL,
    UNIQUE(ID_role),
    FOREIGN KEY (ID_Stay) REFERENCES Stay(ID_of_stay)
	ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Incidents) REFERENCES Incidents(Id_of_incident)
	ON DELETE CASCADE ON UPDATE CASCADE,

);

CREATE TABLE Visitors (
    ID_of_visitor INT PRIMARY KEY NOT NULL,
    Visitor_Name VARCHAR(50) NOT NULL,
    Visitor_Surname VARCHAR(50) NOT NULL,
    Birth_Date DATE NOT NULL,
    Pesel VARCHAR(20) UNIQUE NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Prison_Relation VARCHAR(255) NOT NULL,
    UNIQUE(ID_of_visitor)
);

CREATE TABLE Prison_Visits (
    ID_of_visits INT PRIMARY KEY,
    Purpose VARCHAR(255) NOT NULL,
    Time INT DEFAULT 30 NOT NULL,
    Date DATE NOT NULL,
    ID_Stay INT NOT NULL,
    ID_Visitors INT NOT NULL,
    UNIQUE(ID_of_visits),
    FOREIGN KEY (ID_Stay) REFERENCES Stay(ID_of_stay)
	ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Visitors) REFERENCES Visitors(ID_of_visitor)
	ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE Programs (
    Name_of_Program VARCHAR(255) PRIMARY KEY NOT NULL,
    Resocialization_Description TEXT NOT NULL,
    Capacity INT NOT NULL CHECK (Capacity >= 0),
    Occupancy INT DEFAULT 0 CHECK (Occupancy >= 0)
);



CREATE TABLE Allocation_to_Programs (
    ID_of_program_allocation INT PRIMARY KEY NOT NULL,
    Program_Start_Date DATE NOT NULL,
    Program_end_date DATE,
    Assessment_of_progress TEXT,
    Status BIT NOT NULL,
    ID_Stay INT NOT NULL,
    ID_Programs VARCHAR(255) NOT NULL,
    UNIQUE(ID_of_program_allocation),
    FOREIGN KEY (ID_Stay) REFERENCES Stay(ID_of_stay)
	ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Programs) REFERENCES Programs(Name_of_Program)
	ON DELETE CASCADE ON UPDATE CASCADE,
);

CREATE TABLE Prison_cells (
    Prison_cell_number INT PRIMARY KEY NOT NULL,
    Type VARCHAR(255) NOT NULL,
    Capacity INT NOT NULL CHECK (Capacity >= 0),
    Occupancy INT DEFAULT 0 CHECK (Occupancy >= 0)
);



CREATE TABLE Allocation_to_prison_cells (
    ID_of_cell_allocation INT PRIMARY KEY NOT NULL,
    Date_of_start DATE NOT NULL,
    Date_of_end DATE,
    Status VARCHAR(50) NOT NULL,
    ID_Stay INT NOT NULL,
    Prison_cell_number INT NOT NULL,
    UNIQUE(ID_of_cell_allocation),
    FOREIGN KEY (ID_Stay) REFERENCES Stay(ID_of_stay)
	ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Prison_cell_number) REFERENCES Prison_cells(Prison_cell_number)
	ON DELETE CASCADE ON UPDATE CASCADE,
);




