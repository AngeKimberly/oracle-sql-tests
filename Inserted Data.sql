-- Inserting Patient's information--

SQL> INSERT INTO Patient (Name, Gender) VALUES ('GILBERT', 'M');

1 row created.

SQL> INSERT INTO Patient (Name, Gender) VALUES ('CONFIANCE', 'F');

1 row created.

SQL> INSERT INTO Patient (Name, Gender) VALUES ('ALINE', 'F');

1 row created.

SQL> INSERT INTO Patient (Name, Gender) VALUES ('RUKUNDO', 'M');

1 row created.

SQL> INSERT INTO Patient (Name, Gender) VALUES ('LANDRY', 'M');

1 row created.

-- Displaying Patient's table --

SQL> SELECT * FROM Patient;

 PATIENTID NAME               G
---------- ------------------ -
         1 GILBERT            M
         2 CONFIANCE          F
         3 ALINE              F
         4 RUKUNDO            M
         5 LANDRY             M

-- Inserting Medical Records--

SQL> INSERT INTO Medical_Record (Text) VALUES (' SELECT * FROM Patient;');

1 row created.

-- Deleting a row from the table--
SQL> DELETE FROM Medical_Record;

1 row deleted.

SQL> INSERT INTO Medical_Record (Text) VALUES ('Overall feelings of wellness, weight gain, fever, chills, weakness');

1 row created.

SQL> INSERT INTO Medical_Record (Text) VALUES ('Changes in color, dryness, hair loss, rashes, bleeding');

1 row created.

SQL> INSERT INTO Medical_Record (Text) VALUES ('Headaches, trauma, syncope');

1 row created.

SQL> INSERT INTO Medical_Record (Text) VALUES ('Change in hearing, tinnitus, vertigo, pain');

1 row created.

SQL> INSERT INTO Medical_Record (Text) VALUES ('Chest pain and soreness');

1 row created.

-- Displaying table for Medical Records--
SQL> SELECT * FROM Medical_Record;

  RECORDID  PATIENTID TEXT
---------- ---------- --------------------------------------------------------------------------------------------------
         2          1  Overall feelings of wellness, weight gain, fever, chills, weakness
         3          2  Changes in color, dryness, hair loss, rashes, bleeding
         4          3  Headaches, trauma, syncope
         5          4  Change in hearing, tinnitus, vertigo, pain
         6          5 Chest pain and soreness

-- Inserting Doctor's information--

SQL> INSERT INTO Doctor (Name, Specialty) VALUES ('Dinah', 'Endocrinology');

1 row created.

SQL> INSERT INTO Doctor (Name, Specialty) VALUES ('Alan', 'Pharmacist');

1 row created.

SQL> INSERT INTO Doctor (Name, Specialty) VALUES ('QWEZO', 'Surgeon');

1 row created.

SQL> INSERT INTO Doctor (Name, Specialty) VALUES ('Kiloy', 'Internist');

1 row created.

SQL> INSERT INTO Doctor (Name, Specialty) VALUES ('Onesphore', 'Pediatry');

1 row created.

-- Displaying table for Doctors--

SQL> SELECT * FROM Doctor;

  DOCTORID NAME
                                SPECIALTY
---------- ---------------------------------------------------------------------------------------------------- --------
         1 Dinah                Endocrin

         2 Alan                 Pharmaci

         3 QWEZO                Surgeon

         4 Kiloy                Internis

         5 Onesphore            Pediatry

-- Inserting Hospital's information--

SQL> INSERT INTO Hospital (Name, Location, RecordID) VALUES ('CHUK', 'TOWN', '2');

1 row created.

SQL> INSERT INTO Hospital (Name, Location, RecordID) VALUES ('CHUB', 'BUTARE', '3');

1 row created.

SQL> INSERT INTO Hospital (Name, Location, RecordID) VALUES ('BAHO', 'NYARUTARAMA', '4');

1 row created.

SQL> INSERT INTO Hospital (Name, Location, RecordID) VALUES ('NYIRINKWAYA', 'GISHUSHU', '5');

1 row created.

-- Displaying Hospital's Table--

SQL> SELECT * FROM Hospital;


HOSPITALID NAME
                                LOCATION
---------- ---------------------------------------------------------------------------------------------------- --------
         1 CHUK                 TOWN

         2 CHUB                 BUTARE

         3 BAHO                 NYARUTAR

         4 NYIRINKWAYA          GISHUSHU
