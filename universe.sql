--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    apparent_magnitude integer,
    constellation text,
    type text NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galay_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galay_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galay_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galay_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galay_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    speed numeric,
    water boolean,
    planet text,
    moon_id integer NOT NULL,
    planet_id integer
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
-- Name: myth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.myth (
    myth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    origin text NOT NULL
);


ALTER TABLE public.myth OWNER TO freecodecamp;

--
-- Name: myth_myth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.myth_myth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.myth_myth_id_seq OWNER TO freecodecamp;

--
-- Name: myth_myth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.myth_myth_id_seq OWNED BY public.myth.myth_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    avg_speed numeric,
    temp_k integer NOT NULL,
    num_of_moons integer NOT NULL,
    star_name character varying(30),
    star_id integer
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
    galaxy text,
    inside_galaxy boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_star_id_seq OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galay_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: myth myth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myth ALTER COLUMN myth_id SET DEFAULT nextval('public.myth_myth_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Sunflower', 9, 'Canes Venatici', 'SAbc');
INSERT INTO public.galaxy VALUES (2, 'Needle', 10, 'Coma Berenices', 'SA(s)b?');
INSERT INTO public.galaxy VALUES (3, 'Peekaboo', NULL, 'Hydra', 'dwarf');
INSERT INTO public.galaxy VALUES (4, 'Eye of God', 11, 'Eridanus', 'SAB(rs)c');
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 3, 'Andromeda', 'SA(s)b');
INSERT INTO public.galaxy VALUES (6, 'Milky Way', NULL, 'Sagittarius', 'Sb');
INSERT INTO public.galaxy VALUES (7, 'NGC 2865', 11, 'Hydra', 'E3-4');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Europa', 13743.36, true, 'Jupiter', 1, 1);
INSERT INTO public.moon VALUES ('Callisto', 8.204, true, 'Jupiter', 3, 1);
INSERT INTO public.moon VALUES ('Io', 17.334, true, 'Jupiter', 5, 1);
INSERT INTO public.moon VALUES ('Ganymede', 10.880, true, 'Jupiter', 6, 1);
INSERT INTO public.moon VALUES ('Phobos', 2.138, false, 'Mars', 12, 2);
INSERT INTO public.moon VALUES ('Deimos', 1.3513, false, 'Mars', 13, 2);
INSERT INTO public.moon VALUES ('Moon', 1.022, true, 'Earth', 4, 3);
INSERT INTO public.moon VALUES ('Charon', 0.21, false, 'Pluto', 14, 5);
INSERT INTO public.moon VALUES ('Hydra', NULL, true, 'Pluto', 15, 5);
INSERT INTO public.moon VALUES ('Styx', NULL, true, 'Pluto', 16, 5);
INSERT INTO public.moon VALUES ('Nix', NULL, true, 'Pluto', 17, 5);
INSERT INTO public.moon VALUES ('Kerberos', NULL, true, 'Pluto', 18, 5);
INSERT INTO public.moon VALUES ('Oberon', 3.15, true, 'Uranus', 9, 7);
INSERT INTO public.moon VALUES ('Rhea', 8.48, true, 'Saturn', 2, 9);
INSERT INTO public.moon VALUES ('Titan', 5.57, true, 'Saturn', 7, 9);
INSERT INTO public.moon VALUES ('Dione', NULL, true, 'Saturn', 8, 9);
INSERT INTO public.moon VALUES ('Iapetus', 3.26, false, 'Saturn', 10, 9);
INSERT INTO public.moon VALUES ('Triton', NULL, true, 'Neptune', 19, 10);
INSERT INTO public.moon VALUES ('Nereid', NULL, true, 'Neptune', 20, 10);
INSERT INTO public.moon VALUES ('Dysnomia', 0.172, false, 'Eris', 11, 11);


--
-- Data for Name: myth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.myth VALUES (1, 'Jupiter', 'Roman');
INSERT INTO public.myth VALUES (2, 'Triton', 'Greek');
INSERT INTO public.myth VALUES (3, 'Mercury', 'Roman');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Jupiter', 13.07, 88, 95, 'Sun', 2);
INSERT INTO public.planet VALUES (2, 'Mars', 24.07, 209, 2, 'Sun', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 29.7827, 255, 1, 'Sun', 2);
INSERT INTO public.planet VALUES (4, 'Mercury', 47.36, 437, 0, 'Sun', 2);
INSERT INTO public.planet VALUES (5, 'Pluto', 4.743, 44, 5, 'Sun', 2);
INSERT INTO public.planet VALUES (6, 'Venus', 35.02, 232, 0, 'Sun', 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 6.8, 76, 28, 'Sun', 2);
INSERT INTO public.planet VALUES (8, 'Gonggong', NULL, 31, 1, 'Sun', 2);
INSERT INTO public.planet VALUES (9, 'Saturn', 9.68, 134, 146, 'Sun', 2);
INSERT INTO public.planet VALUES (10, 'Neptune', 5.43, 72, 16, 'Sun', 2);
INSERT INTO public.planet VALUES (11, 'Eris', 3.434, 42, 1, 'Sun', 2);
INSERT INTO public.planet VALUES (12, 'Kepler-32b', NULL, 569, 0, 'Kepler-32', 3);
INSERT INTO public.planet VALUES (13, 'Kepler-32c', NULL, 417, 0, 'Kepler-32', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 'Milky Way', true, 6);
INSERT INTO public.star VALUES (3, 'Kepler-32', 'Milky Way', true, 6);
INSERT INTO public.star VALUES (4, 'Polaris', 'Milky Way', true, 6);
INSERT INTO public.star VALUES (6, 'TYC 7215-199-1', 'Milky Way', true, 6);
INSERT INTO public.star VALUES (1, 'Alkaid', 'Sunflower', false, 1);
INSERT INTO public.star VALUES (5, 'DAO.S', 'Eye of God', true, 4);
INSERT INTO public.star VALUES (7, 'Sirius', 'Milky Way', true, 6);


--
-- Name: galaxy_galay_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galay_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: myth_myth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.myth_myth_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: stars_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_star_id_seq', 7, true);


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
-- Name: myth myth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myth
    ADD CONSTRAINT myth_name_key UNIQUE (name);


--
-- Name: myth myth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myth
    ADD CONSTRAINT myth_pkey PRIMARY KEY (myth_id);


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
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star stars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

