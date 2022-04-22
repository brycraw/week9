CREATE DATABASE social_assigment;
USE social_assignment;
CREATE TABLE user_info(
user_id INT NOT NULL AUTO_INCREMENT,
user_name VARCHAR(10) NOT NULL,
user_pass VARCHAR(10) NOT NULL,

PRIMARY KEY(user_id)
);

CREATE TABLE posts(
post_id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
content VARCHAR(140) NOT NULL,
time_stamp INT NOT NULL,

PRIMARY KEY(post_id),
FOREIGN KEY(user_id) REFERENCES user_info(user_id)
);

CREATE TABLE comments(
comment_id INT NOT NULL AUTO_INCREMENT,
user_id INT NOT NULL,
post_id INT NOT NULL,
content VARCHAR(140) NOT NULL,
time_stamp INT NOT NULL,

PRIMARY KEY(comment_id),
FOREIGN KEY(user_id) REFERENCES user_info(user_id),
FOREIGN KEY(post_id) REFERENCES posts(post_id)
);