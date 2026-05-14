-- Slet tabeller hvis de findes (god til reset under udvikling)
DROP TABLE IF EXISTS product;

-- Opret Product tabellen
CREATE TABLE product (
                         id SERIAL PRIMARY KEY,
                         name VARCHAR(255) NOT NULL,
                         description TEXT,
                         price DECIMAL(10, 2) NOT NULL,
                         image_url VARCHAR(500),
                         product_type VARCHAR(50), -- Matcher jeres Enum (f.eks. 'BOUQUET', 'PLANT')
                         category VARCHAR(50),
                         occasion VARCHAR(50)
);

-- Indsæt test-data med smukke blomsterbilleder fra Unsplash
INSERT INTO product (name, description, price, image_url, product_type, category, occasion)
VALUES
    ('Rød Elegance', 'En klassisk buket af dybrøde roser.', 299.00, 'https://images.unsplash.com/photo-1548510318-9200382046ff?q=80&w=800', 'BOUQUET', 'FLOWERS', 'ROMANCE'),
    ('Forårsdrøm', 'Friske tulipaner i blandede farver.', 150.00, 'https://images.unsplash.com/photo-1520302823776-815465c132b7?q=80&w=800', 'BOUQUET', 'FLOWERS', 'BIRTHDAY'),
    ('Grøn Fred', 'En stor og flot Monstera plante til stuen.', 450.00, 'https://images.unsplash.com/photo-1614594975525-e45190c55d0b?q=80&w=800', 'PLANT', 'INTERIOR', 'HOUSEWARMING'),
    ('Hvid Symfoni', 'Liljer og hvide roser til en særlig anledning.', 350.00, 'https://images.unsplash.com/photo-1525310238806-e197a324b915?q=80&w=800', 'BOUQUET', 'FLOWERS', 'WEDDING');