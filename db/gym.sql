DROP TABLE bookings;
DROP TABLE members;
DROP TABLE gym_classes;

CREATE TABLE gym_classes
(
  id SERIAL primary key,
  name VARCHAR(255) not null,
  timec DECIMAL,
  capacity INT
);

CREATE TABLE members
(
  id SERIAL primary key,
  name VARCHAR(255) not null,
  membership VARCHAR(255)
);

CREATE TABLE bookings
(
  id SERIAL primary key,
  member_id INT references members(id) ON DELETE CASCADE,
  gym_class_id INT references gym_classes(id) ON DELETE CASCADE
);
