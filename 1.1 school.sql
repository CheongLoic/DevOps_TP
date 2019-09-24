DROP TABLE IF EXISTS student;
CREATE TABLE IF NOT EXISTS student (
  id int(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  school_year int(6) NOT NULL,
  CONSTRAINT Id_Student PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS course;
CREATE TABLE IF NOT EXISTS course (
  code int(255) NOT NULL,
  name varchar(255) NOT NULL,
  school_year int(6) NOT NULL,
  duration int(255) NOT NULL,
  CONSTRAINT Code PRIMARY KEY (code)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS enrolment;
CREATE TABLE IF NOT EXISTS enrolment (
  id int(255) NOT NULL,
  code int(255) NOT NULL,
  grade int(20) NOT NULL,
  CONSTRAINT keys PRIMARY KEY (id,code),
  FOREIGN KEY (id) REFERENCES student(id),
  FOREIGN KEY (code) REFERENCES course (code)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO student (id, last_name, first_name, school_year) VALUES
(123456789, 'Dupont', 'Salim', 4);

INSERT INTO course (code, name, school_year, duration) VALUES
('INGPA-INF4000-13', 'Databases', 4, 27);

INSERT INTO enrolment (id, code, grade) VALUES
(123456789, 'INGPA-INF4000-13', 18);