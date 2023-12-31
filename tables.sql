-- Öğrenci Tablosu
CREATE TABLE students (
    student_id serial PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    birthdate DATE
);

-- Dersler Tablosu
CREATE TABLE courses (
    course_id serial PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    instructor_id INT REFERENCES instructors(instructor_id)
);

-- Kayıt Tablosu
CREATE TABLE enrollments (
    enrollment_id serial PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id INT REFERENCES courses(course_id),
    enrollment_date DATE
);

-- Akademik Personel Tablosu
CREATE TABLE faculty (
    faculty_id serial PRIMARY KEY,
    faculty_name VARCHAR(100)
);

-- Akademik Personel Tablosu
CREATE TABLE staff (
    staff_id serial PRIMARY KEY,
    faculty_id INT REFERENCES faculty(faculty_id),
    cid VARCHAR(11),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
);

-- Bölüm Tablosu
CREATE TABLE departments (
    department_id serial PRIMARY KEY,
    department_name VARCHAR(100),
    head_of_department INT REFERENCES faculty(faculty_id)
);
