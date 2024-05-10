--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout
= 0;
SET lock_timeout
= 0;
SET idle_in_transaction_session_timeout
= 0;
SET client_encoding
= 'UTF8';
SET standard_conforming_strings
= on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies
= false;
SET xmloption
= content;
SET client_min_messages
= warning;
SET row_security
= off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0
ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout
= 0;
SET lock_timeout
= 0;
SET idle_in_transaction_session_timeout
= 0;
SET client_encoding
= 'UTF8';
SET standard_conforming_strings
= on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies
= false;
SET xmloption
= content;
SET client_min_messages
= warning;
SET row_security
= off;

SET default_tablespace
= '';

SET default_table_access_method
= heap;

--
-- Name: dwarfplanet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarfplanet
(
    dwarfplanet_id integer NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_miles numeric,
    distance_from_earth_in_million_miles integer,
    description text,
    has_water boolean,
    name character varying(50) NOT NULL,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.dwarfplanet OWNER TO freecodecamp;

--
-- Name: dwarfplanet_dwarfplanet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarfplanet_dwarfplanet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarfplanet_dwarfplanet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarfplanet_dwarfplanet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarfplanet_dwarfplanet_id_seq
OWNED BY public.dwarfplanet.dwarfplanet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy
(
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    size_in_light_years integer,
    description text,
    distance_from_earth_in_light_years numeric,
    is_spherical boolean,
    has_life boolean
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

ALTER SEQUENCE public.galaxy_galaxy_id_seq
OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon
(
    moon_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_million_miles numeric,
    diameter_in_miles integer,
    name character varying(50) NOT NULL,
    has_life boolean,
    description text,
    has_water boolean,
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

ALTER SEQUENCE public.moon_moon_id_seq
OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet
(
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    size_in_tousands_of_miles integer,
    diameter_in_miles integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    has_water boolean,
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

ALTER SEQUENCE public.planet_planet_id_seq
OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star
(
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_miles integer,
    description text,
    stellar_class character varying(50) NOT NULL,
    distance_from_earth_in_light_years numeric,
    galaxy_id integer
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

ALTER SEQUENCE public.star_star_id_seq
OWNED BY public.star.star_id;


--
-- Name: dwarfplanet dwarfplanet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet
ALTER COLUMN dwarfplanet_id
SET
DEFAULT nextval
('public.dwarfplanet_dwarfplanet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
ALTER COLUMN galaxy_id
SET
DEFAULT nextval
('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
ALTER COLUMN moon_id
SET
DEFAULT nextval
('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
ALTER COLUMN planet_id
SET
DEFAULT nextval
('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
ALTER COLUMN star_id
SET
DEFAULT nextval
('public.star_star_id_seq'::regclass);


--
-- Data for Name: dwarfplanet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarfplanet
VALUES
    (1, NULL, NULL, NULL, NULL, NULL, 'Ceres', NULL, 1);
INSERT INTO public.dwarfplanet
VALUES
    (2, NULL, NULL, NULL, NULL, NULL, 'Pallas', NULL, 1);
INSERT INTO public.dwarfplanet
VALUES
    (3, NULL, NULL, NULL, NULL, NULL, 'Vesta', NULL, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy
VALUES
    (1, 'Milky Way', 13000, 100000, NULL, 0, NULL, true);
INSERT INTO public.galaxy
VALUES
    (2, 'Andromeda', 10000, 220000, NULL, 2500000, NULL, false);
INSERT INTO public.galaxy
VALUES
    (3, 'Pinwheel', 10000, 170000, NULL, 20870000, NULL, false);
INSERT INTO public.galaxy
VALUES
    (4, 'Cigar Galaxy', 10000, 37000, NULL, 11500000, NULL, false);
INSERT INTO public.galaxy
VALUES
    (5, 'Sombrero Galaxy', 10000, 50000, NULL, 29350000, NULL, false);
INSERT INTO public.galaxy
VALUES
    (6, 'Whirlpool Galaxy', 10000, 60000, NULL, 30000000, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon
VALUES
    (1, NULL, NULL, NULL, 'Moon', NULL, NULL, NULL, 1);
INSERT INTO public.moon
VALUES
    (2, NULL, NULL, NULL, 'Phobos', NULL, NULL, NULL, 4);
INSERT INTO public.moon
VALUES
    (3, NULL, NULL, NULL, 'Deimos', NULL, NULL, NULL, 4);
INSERT INTO public.moon
VALUES
    (4, NULL, NULL, NULL, 'Io', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (5, NULL, NULL, NULL, 'Europa', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (6, NULL, NULL, NULL, 'Ganymede', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (7, NULL, NULL, NULL, 'Callisto', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (8, NULL, NULL, NULL, 'Amalthea', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (9, NULL, NULL, NULL, 'Himalia', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (10, NULL, NULL, NULL, 'Elara', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (11, NULL, NULL, NULL, 'Pasiphae', NULL, NULL, NULL, 5);
INSERT INTO public.moon
VALUES
    (12, NULL, NULL, NULL, 'Mimas', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (13, NULL, NULL, NULL, 'Enceladus', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (14, NULL, NULL, NULL, 'Tethys', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (15, NULL, NULL, NULL, 'Dione', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (16, NULL, NULL, NULL, 'Rhea', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (17, NULL, NULL, NULL, 'Titan', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (18, NULL, NULL, NULL, 'Hyperion', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (19, NULL, NULL, NULL, 'Iapetus', NULL, NULL, NULL, 6);
INSERT INTO public.moon
VALUES
    (20, NULL, NULL, NULL, 'Phoebe', NULL, NULL, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet
VALUES
    (1, 'Earth', NULL, NULL, NULL, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet
VALUES
    (2, 'Mercury', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (3, 'Venus', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (4, 'Mars', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (6, 'Saturn', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (7, 'Uranus', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (9, 'Pluto', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (10, 'Ceres', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (11, 'Haumea', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet
VALUES
    (12, 'Eris', NULL, NULL, NULL, NULL, NULL, false, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star
VALUES
    (1, 'Sun', NULL, NULL, NULL, 'G-type', NULL, 1);
INSERT INTO public.star
VALUES
    (2, 'Proxima Centauri', NULL, NULL, NULL, 'M-type', NULL, 1);
INSERT INTO public.star
VALUES
    (3, 'Rigil Kentaurus', NULL, NULL, NULL, 'K-type', NULL, 1);
INSERT INTO public.star
VALUES
    (4, 'Toliman', NULL, NULL, NULL, 'K-type', NULL, 1);
INSERT INTO public.star
VALUES
    (5, 'Betelgeuse', NULL, NULL, NULL, 'M-type', NULL, 1);
INSERT INTO public.star
VALUES
    (6, 'Antares', NULL, NULL, NULL, 'M-type', NULL, 1);


--
-- Name: dwarfplanet_dwarfplanet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarfplanet_dwarfplanet_id_seq', 1, false);


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
-- Name: dwarfplanet dwarfplanet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet
ADD CONSTRAINT dwarfplanet_name_key UNIQUE
(name);


--
-- Name: dwarfplanet dwarfplanet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet
ADD CONSTRAINT dwarfplanet_pkey PRIMARY KEY
(dwarfplanet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
ADD CONSTRAINT galaxy_name_key UNIQUE
(name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
ADD CONSTRAINT galaxy_pkey PRIMARY KEY
(galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
ADD CONSTRAINT moon_name_key UNIQUE
(name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
ADD CONSTRAINT moon_pkey PRIMARY KEY
(moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
ADD CONSTRAINT planet_name_key UNIQUE
(name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
ADD CONSTRAINT planet_pkey PRIMARY KEY
(planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
ADD CONSTRAINT star_name_key UNIQUE
(name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
ADD CONSTRAINT star_pkey PRIMARY KEY
(star_id);


--
-- Name: dwarfplanet dwarfplanet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet
ADD CONSTRAINT dwarfplanet_star_id_fkey FOREIGN KEY
(star_id) REFERENCES public.star
(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY
(planet_id) REFERENCES public.planet
(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY
(star_id) REFERENCES public.star
(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY
(galaxy_id) REFERENCES public.galaxy
(galaxy_id);


--
-- PostgreSQL database dump complete
--

