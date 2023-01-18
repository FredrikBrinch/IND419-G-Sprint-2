CREATE TABLE task (
  task_id INT PRIMARY KEY AUTO_INCREMENT,
  task_name VARCHAR(255) NOT NULL,
  task_day DATE NOT NULL,
  role_id INT,
  length_hours DECIMAL(5,2) NOT NULL DEFAULT 0,
  FOREIGN KEY (role_id) REFERENCES role(role_id)
);

CREATE TABLE role (
  role_id INT PRIMARY KEY AUTO_INCREMENT,
  role_name VARCHAR(255) NOT NULL
);

CREATE TABLE task_dependency (
  task_id INT,
  dependent_task_id INT,
  FOREIGN KEY (task_id) REFERENCES task(task_id),
  FOREIGN KEY (dependent_task_id) REFERENCES task(task_id)
);
