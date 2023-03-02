--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    impact_date integer,
    location character varying(30) NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constellation character varying(30) NOT NULL,
    origin_of_name text NOT NULL,
    is_visible_to_naked_eye boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_discovered integer,
    diameter_in_km integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    orbital_period_in_years numeric(9,2),
    has_life boolean,
    has_moon boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    visible_magnitude numeric(9,2),
    year_discovered date,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'The Chelyabinsk Event', 2013, 'Chelyabinsk, Russia');
INSERT INTO public.asteroid VALUES (2, 'The Tunguska Event', 1909, 'Tunguska, Russia');
INSERT INTO public.asteroid VALUES (3, 'The Chicxulub Event', NULL, 'Mexico');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Backward Galaxy', 'Centaurus', 'It appears to rotate backwards, as the tip of the spiral point in the direction of rotaion', false);
INSERT INTO public.galaxy VALUES (2, 'Centaurus A', 'Centaurus', 'Centaurus A has been spotted with the naked eye by Stephen James O Meara.', true);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'Coma Berenices', 'It has a spectacular dark band of absorbing dust in front of the galaxys bright nucleus', false);
INSERT INTO public.galaxy VALUES (4, 'Coma Pinwheel Galaxy', 'Coma Benerices', 'Named after its resemblance to the Pinwheel Galaxy and its location in the Coma Benerices constellation.', false);
INSERT INTO public.galaxy VALUES (5, 'Malin 1', 'Coma Berenices', 'Discovered and named by David Malin', false);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Sagittarius', 'The appearance from Earth of the galaxy—a band of light', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 3476, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, 23, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 13, 4);
INSERT INTO public.moon VALUES (4, 'Io', 1610, 3630, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1610, 3138, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1610, 5262, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1610, 4800, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 1892, 200, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 1904, 170, 5);
INSERT INTO public.moon VALUES (10, 'Thebe', 1979, 90, 5);
INSERT INTO public.moon VALUES (11, 'Mimas', 1789, 394, 6);
INSERT INTO public.moon VALUES (12, 'Enceladus', 1789, 502, 6);
INSERT INTO public.moon VALUES (13, 'Tethys', 1684, 1048, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 1684, 1120, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 1672, 1530, 6);
INSERT INTO public.moon VALUES (16, 'Titan', 1655, 5150, 6);
INSERT INTO public.moon VALUES (17, 'Hyperion', 1848, 270, 6);
INSERT INTO public.moon VALUES (18, 'Iapetus', 1671, 1435, 6);
INSERT INTO public.moon VALUES (19, 'Phoebe', 1899, 220, 6);
INSERT INTO public.moon VALUES (20, 'Janus', 1966, 190, 6);
INSERT INTO public.moon VALUES (21, 'Epimetheus', 1966, 120, 6);
INSERT INTO public.moon VALUES (22, 'Atlas', 1980, 40, 6);
INSERT INTO public.moon VALUES (23, 'Prometheus', 1980, 80, 6);
INSERT INTO public.moon VALUES (24, 'Pandora', 1980, 100, 6);
INSERT INTO public.moon VALUES (25, 'Pan', 1990, 20, 6);
INSERT INTO public.moon VALUES (26, 'Ariel', 1851, 1160, 7);
INSERT INTO public.moon VALUES (27, 'Umbriel', 1851, 1190, 7);
INSERT INTO public.moon VALUES (28, 'Titania', 1787, 1610, 7);
INSERT INTO public.moon VALUES (29, 'Oberon', 1787, 1550, 7);
INSERT INTO public.moon VALUES (30, 'Miranda', 1948, 485, 7);
INSERT INTO public.moon VALUES (31, 'Puck', 1985, 170, 7);
INSERT INTO public.moon VALUES (32, 'Triton', 1846, 2720, 8);
INSERT INTO public.moon VALUES (33, 'Nereid', 1949, 340, 8);
INSERT INTO public.moon VALUES (34, 'Despina', 1989, 150, 8);
INSERT INTO public.moon VALUES (35, 'Galatea', 1989, 150, 8);
INSERT INTO public.moon VALUES (36, 'Larissa', 1981, 400, 8);
INSERT INTO public.moon VALUES (37, 'Vanth', 2005, NULL, 10);
INSERT INTO public.moon VALUES (38, 'Charon', 1978, 1200, 11);
INSERT INTO public.moon VALUES (39, 'Nix', 2005, 46, 11);
INSERT INTO public.moon VALUES (40, 'Hydra', 2005, 61, 11);
INSERT INTO public.moon VALUES (41, 'Kerberos', 2011, 28, 11);
INSERT INTO public.moon VALUES (42, 'Styx', 2012, 20, 11);
INSERT INTO public.moon VALUES (43, 'Actaea', 2006, NULL, 18);
INSERT INTO public.moon VALUES (44, 'Hiiaka', 2005, 400, 12);
INSERT INTO public.moon VALUES (45, 'Namaka', 2005, 200, 12);
INSERT INTO public.moon VALUES (46, 'Weywot', 2007, NULL, 13);
INSERT INTO public.moon VALUES (47, 'Ilmare', 2009, NULL, 19);
INSERT INTO public.moon VALUES (48, 'Xiangliu', 2010, NULL, 15);
INSERT INTO public.moon VALUES (49, 'Dysnomia', 2005, 684, 16);
INSERT INTO public.moon VALUES (50, 'MK2', 2016, 160, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.24, false, false, 13);
INSERT INTO public.planet VALUES (2, 'Venus', 0.62, false, false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, true, true, 5);
INSERT INTO public.planet VALUES (4, 'Mars', 1.88, false, true, 8);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11.86, false, true, 9);
INSERT INTO public.planet VALUES (6, 'Saturn', 29.45, false, true, 4);
INSERT INTO public.planet VALUES (7, 'Uranus', 84.02, false, true, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 164.79, false, true, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 4.60, false, false, 7);
INSERT INTO public.planet VALUES (10, 'Orcus', 247.50, false, true, 11);
INSERT INTO public.planet VALUES (11, 'Pluto', 247.90, false, true, 11);
INSERT INTO public.planet VALUES (12, 'Haumea', 283.80, false, true, 3);
INSERT INTO public.planet VALUES (13, 'Quaoar', 288.00, false, true, 12);
INSERT INTO public.planet VALUES (14, 'Makemake', 306.20, false, true, 6);
INSERT INTO public.planet VALUES (15, 'Gonggong', 552.50, false, true, 1);
INSERT INTO public.planet VALUES (16, 'Eris', 559.00, false, true, 9);
INSERT INTO public.planet VALUES (17, 'Sedna', 12059.00, false, false, 8);
INSERT INTO public.planet VALUES (18, 'Salacia', 273.98, false, true, 10);
INSERT INTO public.planet VALUES (19, 'Varda', 313.12, false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sadalsuud', 2.90, '2016-08-21', 6);
INSERT INTO public.star VALUES (2, 'Hamal', 2.01, '2016-07-20', 6);
INSERT INTO public.star VALUES (3, 'Arcturus', 0.05, '2016-06-30', 6);
INSERT INTO public.star VALUES (4, 'Deneb Algedi', 2.85, '2017-02-01', 6);
INSERT INTO public.star VALUES (5, 'Rigil Kentaurus', 0.01, '2016-11-06', 6);
INSERT INTO public.star VALUES (6, 'Beta Comae Berenices', 4.26, NULL, 6);
INSERT INTO public.star VALUES (7, 'Regulus', 1.36, '2016-06-30', 6);
INSERT INTO public.star VALUES (8, 'Aldebaran', 0.85, '2016-06-30', 6);
INSERT INTO public.star VALUES (9, 'Diphda', 2.04, '2016-08-21', 6);
INSERT INTO public.star VALUES (10, 'Enif', 2.40, '2016-07-20', 6);
INSERT INTO public.star VALUES (11, 'Kaus Australis', 1.85, '2016-07-20', 6);
INSERT INTO public.star VALUES (12, 'Rasalhague', 2.08, '2016-07-20', 6);
INSERT INTO public.star VALUES (13, 'Spica', 1.04, '2016-06-30', 6);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

