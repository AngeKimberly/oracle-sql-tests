
-- Table to store Patient's information --

SQL> CREATE TABLE Patient(PatientID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, Name VARCHAR2(100), Gender CHAR(1));

Table created.

-- Table to store Medical Record's information --

SQL> CREATE TABLE Medical_Record (RecordID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, PatientID NUMBER, Text VARCHAR2(255), FOREIGN KEY (PatientID) REFERENCES Patient(PatientID));

Table created.

-- Table to store Doctor's information --

SQL> CREATE TABLE Doctor (DoctorID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, Name VARCHAR2(100), Specialty VARCHAR2(100));

Table created.

-- Table to store Hospital's information --

SQL> CREATE TABLE Hospital (HospitalID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, Name VARCHAR2(100), Location VARCHAR2(100), RecordID NUMBER, FOREIGN KEY (RecordID) REFERENCES Medical_Record(RecordID));

Table created.

-- Table to store Patient and their corresponding doctors --

SQL> CREATE TABLE Doctor_Patient (DoctorID NUMBER, PatientID NUMBER, PRIMARY KEY (DoctorID, PatientID), FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID), FOREIGN KEY (PatientID) REFERENCES Patient(PatientID));

Table created.

-- Querry to Permanent save --
SQL> COMMIT;

Commit complete.

-- Adding HospitalID column in Doctors table --

SQL> ALTER TABLE Doctor ADD HospitalID NUMBER;

Table altered.

SQL> ALTER TABLE Doctor ADD FOREIGN KEY (HospitalID) REFERENCES Hospital(HospitalID);

Table altered.

SQL> COMMIT;

Commit complete.


SQL>