CREATE DATABASE universe;

CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    constellation VARCHAR(30) NOT NULL,
    origin_of_name TEXT NOT NULL
);

INSERT INTO galaxy (name, constellation, origin_of_name)

VALUES
    ('Backward Galaxy', 'Centaurus', 'It appears to rotate backwards, as the tips of the spiral arms point in the direction of rotation.'),
    ('Centaurus A', 'Centaurus',"Centaurus A has been spotted with the naked eye by Stephen James O'Meara."),
    ('Black Eye Galaxy','Coma Berenices'."It has a spectacular dark band of absorbing dust in front of the galaxy's bright nucleus"),
    ('Coma Pinwheel Galaxy','Coma Benerices'."Named after its resemblance to the Pinwheel Galaxy and its location in the Coma Benerices constellation."),
    ('Malin 1','Coma Berenices'."Discovered and named by David Malin"),
    ('Milky Way','Sagittarius'."The appearance from Earth of the galaxy—a band of light");

CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    visible_magnitude NUMERIC(9,2)
    year_discovered DATE,
    galaxy_id INT NOT NULL
);

INSERT INTO star (name, visible_magnitude, galaxy_id)

VALUES 
    ('Sadalsuud',2.90,'2016-08-21', 6),
    ('Hamal', 2.01, '2016-07-20', 6), 
    ('Arcturus',  0.05, '2016-06-30', 6), 
	('Deneb Algedi', 2.85, '2017-02-01', 6), 
	('Rigil Kentaurus', 0.01, '2016-11-06', 6), 
	('Beta Comae Berenices', 4.26, NULL, 6),
    ('Regulus', 1.36, '2016-06-30', 6), 
	('Aldebaran', 0.85, '2016-06-30', 6), 
	('Diphda', 2.04, '2016-08-21', 6), 
	('Enif', 2.40, '2016-07-20', 6), 
	('Kaus Australis',  1.85, '2016-07-20', 6), 
	('Rasalhague', 2.08, '2016-07-20', 6), 
	('Spica', 1.04, '2016-06-30', 6);

CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    orbital_period_in_years NUMERIC(9,2),
    has_life BOOLEAN,
    has_moon BOOLEAN,
    star_id INT NOT NULL
);

INSERT INTO planet (name, orbital_period_in_years, has_life, has_moon, star_id)

VALUES 
    ('Mercury', 0.24, False, False, 13), 
	('Venus', 0.62, False, False, 7), 
	('Earth', 1.00, True, True, 5), 
	('Mars', 1.88, False, True, 8), 
	('Jupiter', 11.86, False, True, 9), 
	('Saturn', 29.45, False, True, 4), 
	('Uranus', 84.02, False, True, 2), 
	('Neptune', 164.79, False, True, 1), 
	('Ceres', 4.60, False, False, 7), 
	('Orcus', 247.50, False, True, 11), 
	('Pluto', 247.90, False, True, 11), 
	('Haumea', 283.80, False, True, 3), 
	('Quaoar', 288.00, False, True, 12), 
	('Makemake', 306.20, False, True, 6), 
	('Gonggong', 552.50, False, True, 1), 
	('Eris', 559.00, False, True, 9), 
	('Sedna', 12059.00, False, False, 8), 
	('Salacia', 273.98, False, True, 10), 
	('Varda', 313.12, False, True, 1);

CREATE TABLE moon (
    moon_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE,
    year_discovered INT,
    diameter_in_km INT,
    planet_id INT NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
);

INSERT INTO moon (name, year_discovered, diameter_in_km, planet_id)

VALUES 
    ('Moon', NULL, 3476, 3), 
	('Phobos', 1877, 23, 4), 
	('Deimos', 1877, 13, 4), 
	('Io', 1610, 3630, 5), 
	('Europa', 1610, 3138, 5), 
	('Ganymede', 1610, 5262, 5), 
	('Callisto', 1610, 4800, 5), 
	('Amalthea', 1892, 200, 5), 
	('Himalia', 1904, 170, 5), 
	('Thebe', 1979, 90, 5), 
	('Mimas', 1789, 394, 6), 
	('Enceladus', 1789, 502, 6), 
	('Tethys', 1684, 1048, 6), 
	('Dione', 1684, 1120, 6), 
	('Rhea', 1672, 1530, 6), 
	('Titan', 1655, 5150, 6), 
	('Hyperion', 1848, 270, 6), 
	('Iapetus', 1671, 1435, 6), 
	('Phoebe', 1899, 220, 6), 
	('Janus', 1966, 190, 6), 
	('Epimetheus', 1966, 120, 6), 
	('Atlas', 1980, 40, 6), 
	('Prometheus', 1980, 80, 6), 
	('Pandora', 1980, 100, 6), 
	('Pan', 1990, 20, 6), 
	('Ariel', 1851, 1160, 7), 
	('Umbriel', 1851, 1190, 7), 
	('Titania', 1787, 1610, 7), 
	('Oberon', 1787, 1550, 7), 
	('Miranda', 1948, 485, 7), 
	('Puck', 1985, 170, 7), 
	('Triton', 1846, 2720, 8), 
	('Nereid', 1949, 340, 8), 
	('Despina', 1989, 150, 8), 
	('Galatea', 1989, 150, 8), 
	('Larissa', 1981, 400, 8), 
	('Vanth', 2005, NULL, 10), 
	('Charon', 1978, 1200, 11), 
	('Nix', 2005, 46, 11), 
	('Hydra', 2005, 61, 11), 
	('Kerberos', 2011, 28, 11), 
	('Styx', 2012, 20, 11), 
	('Actaea', 2006, NULL, 18), 
	("Hi’iaka", 2005, 400, 12), 
	('Namaka', 2005, 200, 12), 
	('Weywot', 2007, NULL, 13), 
	('Ilmare', 2009, NULL, 19), 
	('Xiangliu', 2010, NULL, 15), 
	('Dysnomia', 2005, 684, 16), 
	('MK2', 2016, 160, 14);

CREATE TABLE asteroid (
    asteroid_id SERIAL PRIMARY KEY,
    asteroid_event VARCHAR(30) UNIQUE,
    impact_date INT, 
    location VARCHAR(30)

);

INSERT INTO asteroid (asteroid_event, impact_date, location)

VALUES 
    ('The Chelyabinsk Event', 2013, 'Chelyabinsk, Russia'),
    ('The Tunguska Event', 1909, 'Tunguska, Russia'),
    ('The Chicxulub Event', NULL, 'Mexico');

ALTER TABLE star 
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id);

ALTER TABLE planet 
    ADD CONSTRAINT fk_planet_id FOREIGN KEY(star_id) REFERENCES star(star_id);

ALTER TABLE moon 
    ADD CONSTRAINT fk_moon_id FOREIGN KEY(planet_id) REFERENCES planet(planet_id);
