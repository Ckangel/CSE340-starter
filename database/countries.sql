-- ===============================
-- SCHEMA SETUP
-- ===============================

CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    capital VARCHAR(255) NOT NULL,
    area_km2 DECIMAL NOT NULL,
    population BIGINT NOT NULL,
    official_language VARCHAR(255) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    main_exports TEXT NOT NULL,
    national_flag_url TEXT NOT NULL
);

CREATE TABLE leaders (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    start_term DATE NOT NULL,
    end_term DATE,
    country_id INT REFERENCES countries(id)
);

CREATE TABLE trade_exports (
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES countries(id),
    export_type VARCHAR(255) NOT NULL,
    value_in_millions DECIMAL
);

CREATE TABLE tourist_attractions (
    id SERIAL PRIMARY KEY,
    country_id INT REFERENCES countries(id),
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_url TEXT
);

-- ===============================
-- COUNTRIES DATA
-- ===============================

INSERT INTO countries (
    name, capital, area_km2, population, official_language, currency, main_exports, national_flag_url
) VALUES
('Benin', 'Porto-Novo', 114763, 13000000, 'French', 'West African CFA franc', 'Cotton, petroleum', 'https://upload.wikimedia.org/wikipedia/commons/0/0a/Flag_of_Benin.svg'),
('Burkina Faso', 'Ouagadougou', 272967, 23000000, 'French', 'West African CFA franc', 'Gold, cotton', 'https://upload.wikimedia.org/wikipedia/commons/3/31/Flag_of_Burkina_Faso.svg'),
('Cape Verde', 'Praia', 4033, 600000, 'Portuguese', 'Cape Verdean escudo', 'Fishing, clothing', 'https://upload.wikimedia.org/wikipedia/commons/3/38/Flag_of_Cape_Verde.svg'),
('Ivory Coast', 'Yamoussoukro', 322463, 28000000, 'French', 'West African CFA franc', 'Cocoa, coffee, petroleum', 'https://en.wikipedia.org/wiki/File:Flag_of_Ivory_Coast.svg'),
('Gambia', 'Banjul', 11295, 2700000, 'English', 'Dalasi', 'Groundnuts, fish', 'https://upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_The_Gambia.svg'),
('Ghana', 'Accra', 238533, 34000000, 'English', 'Ghanaian cedi', 'Gold, cocoa, oil', 'https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Ghana.svg'),
('Guinea', 'Conakry', 245857, 14000000, 'French', 'Guinean franc', 'Bauxite, gold, diamonds', 'https://upload.wikimedia.org/wikipedia/commons/e/e0/Flag_of_Guinea.svg'),
('Guinea-Bissau', 'Bissau', 36125, 2000000, 'Portuguese', 'West African CFA franc', 'Cashew nuts, fish', 'https://upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_Guinea-Bissau.svg'),
('Liberia', 'Monrovia', 111369, 5400000, 'English', 'Liberian dollar', 'Rubber, iron ore', 'https://upload.wikimedia.org/wikipedia/commons/b/b8/Flag_of_Liberia.svg'),
('Mali', 'Bamako', 1240192, 22000000, 'French', 'West African CFA franc', 'Uranium, livestock', 'https://upload.wikimedia.org/wikipedia/commons/9/92/Flag_of_Mali.svg'),
('Mauritania', 'Nouakchott', 1030700, 5000000, 'Arabic', 'Ouguiya', 'Iron ore, fish', 'https://upload.wikimedia.org/wikipedia/commons/4/43/Flag_of_Mauritania.svg'),
('Niger', 'Niamey', 1267000, 27000000, 'French', 'West African CFA franc', 'Uranium, livestock', 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Flag_of_Niger.svg'),
('Nigeria', 'Abuja', 923768, 230000000, 'English', 'Naira', 'Oil, cocoa, rubber', 'https://upload.wikimedia.org/wikipedia/commons/7/79/Flag_of_Nigeria.svg'),
('Senegal', 'Dakar', 196712, 18000000, 'French', 'West African CFA franc', 'Fish, peanuts, phosphates', 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Flag_of_Senegal.svg'),
('Sierra Leone', 'Freetown', 71740, 8500000, 'English', 'Leone', 'Diamonds, rutile, cocoa', 'https://upload.wikimedia.org/wikipedia/commons/1/17/Flag_of_Sierra_Leone.svg'),
('Togo', 'Lomé', 56785, 8800000, 'French', 'West African CFA franc', 'Phosphates, cotton', 'https://upload.wikimedia.org/wikipedia/commons/6/68/Flag_of_Togo.svg');
