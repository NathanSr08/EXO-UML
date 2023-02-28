
CREATE TABLE teachers (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);


INSERT INTO teachers (id, name) VALUES
(1, 'Pierre SWEID'),
(2, 'Ludovic Cottez-Abrate'),
(3, 'Romain Barcelo');


CREATE TABLE courses (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  ue_id INT,
  FOREIGN KEY (ue_id) REFERENCES ues(id)
);


INSERT INTO courses (id, name, ue_id) VALUES
(1, 'Sécurité des réseaux', 1),
(2, 'Gestion poste client', 2),
(3, 'Gestion du SI', 2);


CREATE TABLE ues (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  evaluations INT
);


INSERT INTO ues (id, name, evaluations) VALUES
(1, 'Réseaux et sécurité', 2),
(2, 'Management', 1);


CREATE TABLE slots (
  id INT PRIMARY KEY,
  date DATE,
  start_time TIME,
  end_time TIME,
  duration TIME,
  course_id INT,
  teacher_id INT,
  location_id INT,
  FOREIGN KEY (course_id) REFERENCES courses(id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(id),
  FOREIGN KEY (location_id) REFERENCES locations(id)
);


INSERT INTO slots (id, date, start_time, end_time, duration, course_id, teacher_id, location_id) VALUES
(1, '2023-01-02', '09:00:00', '12:30:00', '03:30:00', 1, 1, 1),
(2, '2023-01-02', '13:30:00', '17:00:00', '03:30:00', 1, 1, 2),
(3, '2023-01-03', '09:00:00', '12:30:00', '03:30:00', 1, 1, 3),
(4, '2023-01-03', '13:30:00', '17:00:00', '03:30:00', 1, 1, 4),
(5, '2023-01-04', '09:00:00', '12:30:00', '03:30:00', 1, 1, 5),
(6, '2023-01-04', '13:30:00', '17:00:00', '03:30:00', 1, 1, 6),
(7, '2023-01-05', '09:00:00', '12:30:00', '03:30:00', 2, 2, 1),
(8, '2023-01-05', '13:30:00', '17:00:00', '03:30:00', 2, 2, 2),
(9, '2023-01-06', '09:00:00', '12:30:00', '03:30:00',2,2,2);
