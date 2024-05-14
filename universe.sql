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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30) NOT NULL,
    descriptions text
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    discovery_year integer,
    costellation character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    discoverer character varying(30),
    discovery_year integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1),
    is_spherical boolean,
    has_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    discovery_year integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'moon', 'Bodies that orbit planets');
INSERT INTO public.description VALUES (2, 'planet', 'Celestial bodies that orbit around the sun');
INSERT INTO public.description VALUES (3, 'star', 'Self luminous celestial body of gas');
INSERT INTO public.description VALUES (4, 'galaxy', 'Huge collection of gas, dust,and billions of stars');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (6, 'comet', 'spiral', 2007, 'sculptor');
INSERT INTO public.galaxy VALUES (5, 'cartwheel', 'irregular', 1941, 'sculptor');
INSERT INTO public.galaxy VALUES (4, 'black eye', 'spiral', 1779, 'coma berenices');
INSERT INTO public.galaxy VALUES (3, 'cigar', 'irregular', 1774, 'ursa major');
INSERT INTO public.galaxy VALUES (2, 'andromeda', 'spiral', 1764, 'andromeda');
INSERT INTO public.galaxy VALUES (1, 'milk way', 'spiral', 1610, 'sagittarius');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (20, 'proteus', 9, 'Bradford Smith', 1989);
INSERT INTO public.moon VALUES (1, 'charon', 1, 'James Christy', 1978);
INSERT INTO public.moon VALUES (2, 'zoozve', 2, 'Brian Skiff', 2002);
INSERT INTO public.moon VALUES (3, 'callisto', 3, 'Galileo Galilei', 1610);
INSERT INTO public.moon VALUES (4, 'nix', 1, 'Alan Stern', 2005);
INSERT INTO public.moon VALUES (5, 'styl', 1, 'Mark Showalter', 2012);
INSERT INTO public.moon VALUES (6, 'hydra', 1, 'Marc Buie', 2005);
INSERT INTO public.moon VALUES (7, 'kerberos', 1, 'Mark Showalter', 2011);
INSERT INTO public.moon VALUES (8, 'europa', 2, 'Galileo Galilei', 1610);
INSERT INTO public.moon VALUES (9, 'lo', 2, 'Galileo Galilei', 1610);
INSERT INTO public.moon VALUES (10, 'ganymede', 2, 'Galileo Galilei', 1610);
INSERT INTO public.moon VALUES (11, 'kallichore', 3, 'Scott Sheppard', 2003);
INSERT INTO public.moon VALUES (12, 'euporie', 3, 'Scott Sheppard', 2001);
INSERT INTO public.moon VALUES (13, 'carme', 3, 'Seth Barne', 1938);
INSERT INTO public.moon VALUES (14, 'himalia', 3, 'Charles Perrine', 2008);
INSERT INTO public.moon VALUES (15, 'aitne', 3, 'David Jewitt', 2001);
INSERT INTO public.moon VALUES (16, 'sponde', 3, 'Scott Sheppard', 2001);
INSERT INTO public.moon VALUES (17, 'chaldene', 3, 'Scott Sheppard', 2000);
INSERT INTO public.moon VALUES (18, 'nereid', 9, 'Gerald Kuipe', 1949);
INSERT INTO public.moon VALUES (19, 'naiad', 9, 'Richard Terrile', 1989);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pluto', 4500, 179.9, false, false, 1);
INSERT INTO public.planet VALUES (2, 'venus', 4500, 42.2, true, false, 2);
INSERT INTO public.planet VALUES (3, 'jupiter', 5600, 559.7, false, false, 3);
INSERT INTO public.planet VALUES (4, 'makemake', 4500, 3.4, false, false, 3);
INSERT INTO public.planet VALUES (5, 'mercury', 4503, 48.1, true, false, 3);
INSERT INTO public.planet VALUES (6, 'mars', 4603, 140.0, false, false, 3);
INSERT INTO public.planet VALUES (7, 'saturn', 4503, 935.0, false, false, 3);
INSERT INTO public.planet VALUES (8, 'uranus', 4503, 1.6, false, false, 3);
INSERT INTO public.planet VALUES (9, 'neptune', 4503, 2.8, false, false, 3);
INSERT INTO public.planet VALUES (10, 'triton', 100, 2.6, false, false, 3);
INSERT INTO public.planet VALUES (11, 'ceres', 456, 561.5, false, false, 3);
INSERT INTO public.planet VALUES (12, 'haumea', 4503, 4.0, false, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'sun', 4603, 1, NULL);
INSERT INTO public.star VALUES (1, 'kuiper belt', 4600, 1, 1992);
INSERT INTO public.star VALUES (2, 'spica', 12500, 1, 1891);
INSERT INTO public.star VALUES (4, 'sirius', 230, 1, 1862);
INSERT INTO public.star VALUES (5, 'antares', 12, 1, 1879);
INSERT INTO public.star VALUES (6, 'canopus', 10, 1, 1153);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

