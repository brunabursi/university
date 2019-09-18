CREATE TABLE `students` (
  `id` int PRIMARY KEY,
  `full_name` varchar(255),
  `fathers_name` varchar(255),
  `mothers_name` varchar(255),
  `birthdate` datetime,
  `gender` int
);

CREATE TABLE `course` (
  `id` int PRIMARY KEY,
  `course_name` varchar(255),
  `period` varchar(255),
  `school_year` integer,
  `grade` integer,
  `class` varchar(255)
);

CREATE TABLE `registration` (
  `registration_id` int PRIMARY KEY,
  `students_id` int,
  `course_id` int
);

ALTER TABLE `students` ADD FOREIGN KEY (`id`) REFERENCES `registration` (`students_id`);

ALTER TABLE `course` ADD FOREIGN KEY (`id`) REFERENCES `registration` (`course_id`);
