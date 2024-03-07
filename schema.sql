DROP TABLE IF EXISTS winners;
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS shop;
DROP TABLE IF EXISTS user_id;
DROP TABLE IF EXISTS users;


CREATE TABLE shop 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    item TEXT NOT NULL UNIQUE,
    stock INTEGER NOT NULL,
    imagename TEXT,
    price REAL,
    title TEXT
);

CREATE TABLE users
(
    user_id TEXT NOT NULL PRIMARY KEY,
    password TEXT,
    name TEXT,
    email TEXT,
    address TEXT,
    type TEXT,
    wishlist TEXT,
    orders TEXT
);


INSERT INTO shop (id, item, stock, imagename, price, title )
VALUES
    (1,'Shokupan Loaf',10,'shokupan.jpg',4.99,'A fluffy Japanese loaf'),
    (2,'White Loaf',5,'whiteloaf.jpg',3.99,'A delicious white loaf'),
    (3,'5 Chocolate Brownies',5,'brownies.jpg',5.99,'Rich dark chocolate'),
    (4,'6 Tasty Doughnuts',6,'doughnuts.jpg',3.99,'Frosted and unfrosted'),
    (5,'Victoria Sponge',15,'sponge.jpg',4.99,'A British classic'),
    (6,'Fancy Apron',30,'apron.jpg',8.99,'A Cooking With James branded apron made of cork bark'),
    (7,'Branded Mixer',3,'mixer.jpg',150.99,'A Cooking With James branded stand mixer'),
    (8,'Branded Kite',2,'kite.jpg',29.99,'Fly high with a Cooking With James branded kite'),
    (9,'Wooden Spoon',20,'spoon.jpg',2.99,'Every kitchen needs a wooden spoon, get yours today'),
    (10,'Balloon Whisk',5,'whisk.jpg',2.99,'A Cooking With James branded whisk')
    ;

INSERT INTO users (user_id, password, type)
VALUES
    ('admin','bakerylife','admin')
    ;
