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
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying,
    galaxy_types character varying,
    distance_from_earth integer,
    galaxy_id integer NOT NULL
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
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying,
    galaxy_types character varying,
    distance_from_earth integer,
    moon_id integer NOT NULL,
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    info text,
    read character varying,
    name character varying NOT NULL,
    more_info_id integer NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying,
    galaxy_types character varying,
    distance_from_earth integer,
    planet_id integer NOT NULL,
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types character varying,
    galaxy_types character varying,
    distance_from_earth integer,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andromeda', 'name from mithology', false, true, 5, 'n', '3d', 777, 1);
INSERT INTO public.galaxy VALUES ('antennae', 'insects', false, false, 7, 'n', '3d', 777, 2);
INSERT INTO public.galaxy VALUES ('backward', 'rotate backward', false, true, 9, 'n', '3d', 777, 3);
INSERT INTO public.galaxy VALUES ('black eye', 'evil eye', false, false, 3, 'n', '3d', 777, 4);
INSERT INTO public.galaxy VALUES ('cigar', 'shape like cigar', false, false, 4, 'n', '3d', 777, 5);
INSERT INTO public.galaxy VALUES ('eye of sauron', 'from the lord of the rings', true, true, 12, 'n', '3d', 777, 6);
INSERT INTO public.galaxy VALUES ('medusa merger', 'gorgon medusa', false, false, 15, 'n', '3d', 777, 7);
INSERT INTO public.galaxy VALUES ('milky way', 'a band of light', true, true, 7, 'n', '3d', 777, 8);
INSERT INTO public.galaxy VALUES ('fwef', 'rthrt', NULL, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.galaxy VALUES ('fef', 'tht', NULL, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.galaxy VALUES ('qwerty', '1242', NULL, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO public.galaxy VALUES ('dfh', 'ery', NULL, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.galaxy VALUES ('asdf', 'cvb', NULL, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO public.galaxy VALUES ('yui', 'hjk', NULL, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO public.galaxy VALUES ('iop', 'zxc', NULL, NULL, NULL, NULL, NULL, NULL, 15);
INSERT INTO public.galaxy VALUES ('p', 'piuyu', NULL, NULL, NULL, NULL, NULL, NULL, 16);
INSERT INTO public.galaxy VALUES ('crf', 'byh', NULL, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO public.galaxy VALUES ('zaq', 'xsw', NULL, NULL, NULL, NULL, NULL, NULL, 18);
INSERT INTO public.galaxy VALUES ('ijb', 'tfc', NULL, NULL, NULL, NULL, NULL, NULL, 19);
INSERT INTO public.galaxy VALUES ('qwerty', 'qwe123', NULL, NULL, NULL, NULL, NULL, NULL, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('luna', 'with earth', false, true, 5, 'n', 'n', 23000, 1, 1);
INSERT INTO public.moon VALUES ('fobos', 'with mars', false, false, 7, 'n', 'n', 45000, 2, 2);
INSERT INTO public.moon VALUES ('deimos', 'with mars', false, false, 5, 'n', 'n', 430000, 3, 3);
INSERT INTO public.moon VALUES ('ergre5', 'jtyj', NULL, NULL, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.moon VALUES ('vsdf', 'uiliu', NULL, NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.moon VALUES ('few4', 'iyu9', NULL, NULL, NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.moon VALUES ('vdsv45', 'yuiyu89', NULL, NULL, NULL, NULL, NULL, NULL, 7, 7);
INSERT INTO public.moon VALUES ('rty567', 'yui768', NULL, NULL, NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.moon VALUES ('xcv', 'hgj', NULL, NULL, NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.moon VALUES ('rfv', 'tgb', NULL, NULL, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.moon VALUES ('ujm', 'ikm', NULL, NULL, NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.moon VALUES ('nbv4', 'yu8', NULL, NULL, NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.moon VALUES ('pokml', 'rger', NULL, NULL, NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.moon VALUES ('wei', 'yui', NULL, NULL, NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.moon VALUES ('rt45', 'yu67', NULL, NULL, NULL, NULL, NULL, NULL, 15, 15);
INSERT INTO public.moon VALUES ('34t', 'ui89', NULL, NULL, NULL, NULL, NULL, NULL, 16, 16);
INSERT INTO public.moon VALUES ('23df', 'iu32', NULL, NULL, NULL, NULL, NULL, NULL, 17, 17);
INSERT INTO public.moon VALUES ('dfgr', 'ucds', NULL, NULL, NULL, NULL, NULL, NULL, 18, 18);
INSERT INTO public.moon VALUES ('trh45', 'yu8', NULL, NULL, NULL, NULL, NULL, NULL, 19, 19);
INSERT INTO public.moon VALUES ('dsafs', 'jytrf', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (NULL, NULL, 'efrg', 1);
INSERT INTO public.more_info VALUES (NULL, NULL, 'tyhgf', 2);
INSERT INTO public.more_info VALUES (NULL, NULL, 'thefd', 3);
INSERT INTO public.more_info VALUES (NULL, NULL, 'thrgwdq', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', 'first', false, true, 15, 'n', 'n', 140000, 1, 1);
INSERT INTO public.planet VALUES ('venus', 'second', false, true, 15, 'h', 'h', 12000, 2, 2);
INSERT INTO public.planet VALUES ('earth', 'third', true, true, 17, 'n', 'n', 0, 3, 3);
INSERT INTO public.planet VALUES ('mars', 'fourth', false, true, 14, 'n', 'n', 16000, 4, 4);
INSERT INTO public.planet VALUES ('rtetr', 'uiu', NULL, NULL, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.planet VALUES ('zxvxz', 'uku', NULL, NULL, NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.planet VALUES ('234', 'ip', NULL, NULL, NULL, NULL, NULL, NULL, 7, 7);
INSERT INTO public.planet VALUES ('xcv', '567', NULL, NULL, NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.planet VALUES ('btr', 'kuy', NULL, NULL, NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.planet VALUES ('xswq', 'yung', NULL, NULL, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.planet VALUES ('ert', 'rt', NULL, NULL, NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.planet VALUES ('qw2', '45ht', NULL, NULL, NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.planet VALUES ('on', 'fge', NULL, NULL, NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.planet VALUES ('vqt4', 'u6ye3', NULL, NULL, NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.planet VALUES ('mrxv', 'oyb', NULL, NULL, NULL, NULL, NULL, NULL, 15, 15);
INSERT INTO public.planet VALUES ('it34', 'po77', NULL, NULL, NULL, NULL, NULL, NULL, 16, 16);
INSERT INTO public.planet VALUES ('vd12', 'oui7', NULL, NULL, NULL, NULL, NULL, NULL, 17, 17);
INSERT INTO public.planet VALUES ('cjfe', 'nmhg', NULL, NULL, NULL, NULL, NULL, NULL, 18, 18);
INSERT INTO public.planet VALUES ('oyre', 'okgde', NULL, NULL, NULL, NULL, NULL, NULL, 19, 19);
INSERT INTO public.planet VALUES ('qw34', 'yu78', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sirius', 'so cute', true, false, 45, 'ok', 'ok', 34588, 1, 1);
INSERT INTO public.star VALUES ('canopus', 'interesting', false, false, 32, 'ok', 'ok', 459000, 2, 2);
INSERT INTO public.star VALUES ('arcturus', 'so massive', true, true, 87, 'ns', 'na', 45300, 3, 3);
INSERT INTO public.star VALUES ('alpha centauri a', 'nice', true, true, 45, 'g', 'h', 6700000, 4, 4);
INSERT INTO public.star VALUES ('vega', 'its ok', true, false, 35, 'y', 'n', 303000, 5, 5);
INSERT INTO public.star VALUES ('rigel', 'so bright', false, true, 15, 'n', 'y', 673000, 6, 6);
INSERT INTO public.star VALUES ('procyon', 'n/a', false, false, 23, 'f', 'g', 450221, 7, 7);
INSERT INTO public.star VALUES ('ewt4', 'erh', NULL, NULL, NULL, NULL, NULL, NULL, 8, 8);
INSERT INTO public.star VALUES ('ert', '547', NULL, NULL, NULL, NULL, NULL, NULL, 9, 9);
INSERT INTO public.star VALUES ('qwe123', 'tyu', NULL, NULL, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.star VALUES ('ert45', 'dfg', NULL, NULL, NULL, NULL, NULL, NULL, 11, 11);
INSERT INTO public.star VALUES ('cvb45', 'yiu', NULL, NULL, NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.star VALUES ('rtyu', '789', NULL, NULL, NULL, NULL, NULL, NULL, 13, 13);
INSERT INTO public.star VALUES ('erty', '678', NULL, NULL, NULL, NULL, NULL, NULL, 14, 14);
INSERT INTO public.star VALUES ('fgh', '567', NULL, NULL, NULL, NULL, NULL, NULL, 15, 15);
INSERT INTO public.star VALUES ('456', 'rty', NULL, NULL, NULL, NULL, NULL, NULL, 16, 16);
INSERT INTO public.star VALUES ('tuthty', 'yu76', NULL, NULL, NULL, NULL, NULL, NULL, 17, 17);
INSERT INTO public.star VALUES ('werf5', 'tyh7', NULL, NULL, NULL, NULL, NULL, NULL, 18, 18);
INSERT INTO public.star VALUES ('qwe4', 'uyi', NULL, NULL, NULL, NULL, NULL, NULL, 19, 19);
INSERT INTO public.star VALUES ('bgy', 'iop9', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 21, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 21, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: more_info more_info_more_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_more_info_id_key UNIQUE (more_info_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--
