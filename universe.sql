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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean,
    description text,
    recommended_tourist_destination boolean
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean,
    planet_id integer,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_billions_of_years integer,
    planet_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
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

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Centaurus', 2, false, 'A pretty good galaxy, all things considered.', false);
INSERT INTO public.galaxy VALUES ('Arcturus Stream', 3, false, 'A pretty good galaxy, all things considered.', false);
INSERT INTO public.galaxy VALUES ('Canis Minor', 4, false, 'A pretty good galaxy, all things considered.', false);
INSERT INTO public.galaxy VALUES ('Andromeda', 5, false, 'A pretty good galaxy, all things considered.', false);
INSERT INTO public.galaxy VALUES ('Sombrero', 6, false, 'A pretty good galaxy, all things considered.', false);
INSERT INTO public.galaxy VALUES ('Cartwheel', 7, false, 'A pretty good galaxy, all things considered.', false);
INSERT INTO public.galaxy VALUES ('Whirlpool', 8, false, 'A pretty good galaxy, all things considered.', false);
INSERT INTO public.galaxy VALUES ('Milky Way', 1, true, 'A pretty good galaxy, all things considered.', true);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'elliptical', 'This is the kind of galaxy that is sort of round, but not quite so.');
INSERT INTO public.galaxy_types VALUES (4, 'irregular', 'This is the kind of galaxy that is routinely odd.');
INSERT INTO public.galaxy_types VALUES (2, 'spiral', 'This is the kind of galaxy that is shaped like a spiral. Duh.');
INSERT INTO public.galaxy_types VALUES (3, 'barred spiral', 'This is the kind of galaxy that is shaped like a spiral but has bars. Oooh.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Europa', 1, false, 3, true);
INSERT INTO public.moon VALUES ('Io', 4, false, 3, true);
INSERT INTO public.moon VALUES ('Ganymede', 9, false, 3, true);
INSERT INTO public.moon VALUES ('Callisto', 17, false, 3, true);
INSERT INTO public.moon VALUES ('Amalthea', 21, false, 3, true);
INSERT INTO public.moon VALUES ('Himalia', 23, false, 3, true);
INSERT INTO public.moon VALUES ('Adrastea', 16, false, 3, true);
INSERT INTO public.moon VALUES ('Titan', 2, false, 7, true);
INSERT INTO public.moon VALUES ('Rhea', 20, false, 7, true);
INSERT INTO public.moon VALUES ('Hyperion', 6, false, 7, true);
INSERT INTO public.moon VALUES ('Enceladus', 10, false, 7, true);
INSERT INTO public.moon VALUES ('Dione', 11, false, 7, true);
INSERT INTO public.moon VALUES ('Mimas', 3, false, 7, true);
INSERT INTO public.moon VALUES ('Tethys', 12, false, 7, true);
INSERT INTO public.moon VALUES ('Titania', 5, false, 9, true);
INSERT INTO public.moon VALUES ('Oberon', 14, false, 9, true);
INSERT INTO public.moon VALUES ('Miranda', 22, false, 9, true);
INSERT INTO public.moon VALUES ('Ariel', 24, false, 9, true);
INSERT INTO public.moon VALUES ('Elara', 7, false, 3, true);
INSERT INTO public.moon VALUES ('Thebe', 8, false, 3, true);
INSERT INTO public.moon VALUES ('Carme', 15, false, 3, true);
INSERT INTO public.moon VALUES ('Triton', 18, false, 4, true);
INSERT INTO public.moon VALUES ('Iapetus', 19, false, 7, true);
INSERT INTO public.moon VALUES ('Charon', 13, false, 5, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mars', false, 4, 2, 1);
INSERT INTO public.planet VALUES ('Jupiter', false, 4, 3, 1);
INSERT INTO public.planet VALUES ('Neptune', false, 4, 4, 1);
INSERT INTO public.planet VALUES ('Pluto', false, 4, 5, 1);
INSERT INTO public.planet VALUES ('Mercury', false, 4, 6, 1);
INSERT INTO public.planet VALUES ('Saturn', false, 4, 7, 1);
INSERT INTO public.planet VALUES ('Venus', false, 4, 8, 1);
INSERT INTO public.planet VALUES ('Uranus', false, 4, 9, 1);
INSERT INTO public.planet VALUES ('Kepler-186f', false, 4, 11, 12);
INSERT INTO public.planet VALUES ('Earth', true, 4, 1, 1);
INSERT INTO public.planet VALUES ('Kepler-452b', false, 6, 10, 12);
INSERT INTO public.planet VALUES ('Gliese 581', false, 7, 12, 12);
INSERT INTO public.planet VALUES ('CoRoT-7b', false, 2, 13, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Misc', 12, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Sun', 1, 151, 4, 1);
INSERT INTO public.star VALUES ('Sirius', 2, 8234, 230, 1);
INSERT INTO public.star VALUES ('Canopus', 3, 7644, 25, 1);
INSERT INTO public.star VALUES ('Rigil Kentaurus', 4, 4673, 17, 1);
INSERT INTO public.star VALUES ('Arcturus', 5, 13484, 34, 1);
INSERT INTO public.star VALUES ('Vega', 6, 14200, 120, 1);
INSERT INTO public.star VALUES ('Capella', 7, 15689, 543, 1);
INSERT INTO public.star VALUES ('Rigel', 8, 20004, 99, 1);
INSERT INTO public.star VALUES ('Procyon', 9, 21287, 99, 1);
INSERT INTO public.star VALUES ('Achernar', 10, 56134, 15, 1);
INSERT INTO public.star VALUES ('Betelgeuse', 11, 89324, 46, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

