INSERT INTO users VALUES ('keith', '{noop}keithpw', 'keith', 'keith@email.com', 'HKMU');
INSERT INTO user_roles(username, role) VALUES ('keith', 'ROLE_USER');
INSERT INTO user_roles(username, role) VALUES ('keith', 'ROLE_ADMIN');

INSERT INTO users VALUES ('john', '{noop}johnpw', 'john', 'john@email.com', 'HKMU2');
INSERT INTO user_roles(username, role) VALUES ('john', 'ROLE_ADMIN');

INSERT INTO users VALUES ('mary', '{noop}marypw', 'mary', 'mary@email.com', 'HKMU3');
INSERT INTO user_roles(username, role) VALUES ('mary', 'ROLE_USER');