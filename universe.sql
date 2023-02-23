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
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age numeric(12,0) NOT NULL,
    radius integer NOT NULL,
    number_of_stars integer,
    universe_id integer
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
    name character varying(20) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age numeric(12,0) NOT NULL,
    radius integer NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age numeric(12,0) NOT NULL,
    radius integer NOT NULL,
    number_of_moons integer,
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
    name character varying(20) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    age numeric(12,0) NOT NULL,
    radius integer NOT NULL,
    number_of_planets integer,
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    age integer,
    name character varying(20) NOT NULL,
    description text,
    dummy character varying(20)
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'There was a TV Show with Hercules about Andromeda', false, 10010, 11000, 1000, 1);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Cool name for a galaxy', false, 400, 30000, 100, 1);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'Would never want to live there, because I stopped smoking about 3 months ago', false, 13300, 18500, 30, 1);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Sounds like a chill place to live, hope they have Guacamole there', false, 13250, 25000, 100, 1);
INSERT INTO public.galaxy VALUES (6, 'Dummy', 'Sorry, I needed some more Test Data. I know its dumb', false, 12345, 122345, 123, 1);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Not only a tasty chocolate bar, but our parents home', true, 13610, 52850, 250, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Fly me to the..', false, 1, 1, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Marvel villain?', false, 1, 1, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'His evil brother', false, 1, 1, 4);
INSERT INTO public.moon VALUES (10, 'Io', 's', false, 1, 1, 5);
INSERT INTO public.moon VALUES (11, 'Europa', 's', false, 1, 1, 5);
INSERT INTO public.moon VALUES (12, 'Ganymed', 's', false, 1, 1, 5);
INSERT INTO public.moon VALUES (13, 'Sinospe', 's', false, 1, 1, 5);
INSERT INTO public.moon VALUES (14, 'Ananke', 's', false, 1, 1, 5);
INSERT INTO public.moon VALUES (15, 'Titan', 's', false, 1, 1, 6);
INSERT INTO public.moon VALUES (16, 'Enceladus', 's', false, 1, 1, 6);
INSERT INTO public.moon VALUES (17, 'Mimas', 's', false, 1, 1, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', 's', false, 1, 1, 7);
INSERT INTO public.moon VALUES (19, 'Titania', 's', false, 1, 1, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 's', false, 1, 1, 8);
INSERT INTO public.moon VALUES (21, 'Thalassa', 's', false, 1, 1, 8);
INSERT INTO public.moon VALUES (22, 'Proteus', 's', false, 1, 1, 8);
INSERT INTO public.moon VALUES (23, 'Larissa', 'cute', false, 1, 1, 8);
INSERT INTO public.moon VALUES (24, 'Dummy A on Proxi B', 's', false, 1, 1, 9);
INSERT INTO public.moon VALUES (25, 'Dummy B on Proxi B', 's', false, 1, 1, 9);
INSERT INTO public.moon VALUES (26, 'Dummy A on Proxi D', 's', false, 1, 1, 10);
INSERT INTO public.moon VALUES (27, 'Dummy B on Proxi D', 's', false, 1, 1, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Freddy Mercury had some kind of indopersian roots', false, 4503, 2439, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus Williams was or is a kickass tennis player. Poor thing had a fucked up dad as far as Ive heard.', false, 4503, 6052, 0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Home baby!', true, 4543, 6371, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Still waiting for a vegan Mars bar...', false, 4603, 3390, 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Sorry, I dont have any cool description here.', false, 4603, 69911, 92, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Is a electronics store in Germany', false, 4503, 58232, 83, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Hhahahahahaha.', false, 4503, 25362, 27, 1);
INSERT INTO public.planet VALUES (8, 'Neptun', 'Neptun Bad is a cool wellness and sauna place in Cologne Ive heard', false, 4503, 24622, 14, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Why b, why not a?', false, 999999999, 7008, 9999, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri d', 'Start with b and go on with d?', false, 4852, 5161, 999999, 2);
INSERT INTO public.planet VALUES (11, 'Dummy A', 'A dumb planet in Sirius A. Needed Test data, ran out of patience', false, 1234, 8912, 0, 4);
INSERT INTO public.planet VALUES (12, 'Dummy B', 'Testdata encore', false, 5678, 9012, 0, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'I love the sun. Truly, deeply.', true, 4603, 696340, 8, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Used to be an educational TV Show in Germany I think', false, 4853, 107280, 2, 1);
INSERT INTO public.star VALUES (3, 'Barnards Star', 'Who is Barnard? I thought its Bernard', false, 10010, 136360, 3, 1);
INSERT INTO public.star VALUES (4, 'Sirius A', ' I know Sirius from Harry Potter?', false, 238, 191441, 10, 1);
INSERT INTO public.star VALUES (5, 'Dummy A', 'What a dumb place to live.', false, 1234, 123456, 7, 1);
INSERT INTO public.star VALUES (6, 'Dummy B', 'Another dumb place to live. Im sorry, but there was no more patience, I needed test data', false, 9876, 198765, 4, 1);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 14000, 'Universe', 'Our home', NULL);
INSERT INTO public.universe VALUES (2, 9999999, 'Parallel Universe 1', 'Maybe a parallel universe', NULL);
INSERT INTO public.universe VALUES (3, 999999, 'Parallel Universe N', 'Maybe the n-th  parallel universe', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


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
-- Name: universe universe_dummy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_dummy_key UNIQUE (dummy);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: galaxy galaxy_universe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_universe_id_fkey FOREIGN KEY (universe_id) REFERENCES public.universe(universe_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--