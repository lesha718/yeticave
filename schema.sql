CREATE TABLE categories(
                           categ_id int AUTO_INCREMENT,
                           categ_name varchar(60),
                           CONSTRAINT categ_primary PRIMARY KEY (categ_id)
);
create UNIQUE INDEX categ_name on categories(categ_name);

CREATE TABLE lots(
                     lot_id int PRIMARY KEY AUTO_INCREMENT,
                     lot_categ_id int,
                     lot_user_id int,
                     lot_winner_id int,
                     lot_name varchar(80),
                     lot_discr text,
                     lot_cr_date DATETIME,
                     lot_img text,
                     lot_first_price int,
                     lot_comp_date DATETIME,
                     lot_step int
);
CREATE INDEX categ_index on lots(lot_categ_id);
CREATE INDEX user_index on lots(lot_user_id);
CREATE INDEX winner_index on lots(lot_winner_id);

CREATE TABLE rate(
                     rate_id int PRIMARY KEY  AUTO_INCREMENT,
                     lot_id int,
                     user_id int,
                     rate_date DATETIME,
                     rate_price int
);
CREATE INDEX rate_lot_index on rate(lot_id);
CREATE INDEX rate_user_index on rate(user_id);

CREATE TABLE users(
                      user_id int AUTO_INCREMENT,
                      user_name varchar(80),
                      user_email varchar(80),
                      user_password varchar(30),
                      user_signup_date date,
                      user_image text,
                      user_cantact varchar(20),
                      CONSTRAINT user_primary PRIMARY KEY(user_id)
);
