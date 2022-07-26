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
    name character varying(30) NOT NULL,
    description text,
    weight numeric(4,2),
    has_sun boolean,
    distance integer,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: obj; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.obj (
    obj_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.obj OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    size integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    weight numeric(4,2),
    is_brightn boolean,
    distance integer,
    size integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Latea', 'Planet Earth galaxy', 25.60, true, 12345, 100000);
INSERT INTO public.galaxy VALUES (2, 'Via Latea 2', 'Planet Earth galaxy 2', 29.60, true, 12345, 100000);
INSERT INTO public.galaxy VALUES (3, 'Via Latea 3', 'Planet Earth galaxy 3', 52.30, true, 12345, 100000);
INSERT INTO public.galaxy VALUES (4, 'Via Latea 4', 'Planet Earth galaxy 4', 13.30, false, 12345, 100000);
INSERT INTO public.galaxy VALUES (5, 'Via Latea 5', 'Planet Earth galaxy 5', 13.90, false, 12345, 100000);
INSERT INTO public.galaxy VALUES (6, 'Via Latea 6', 'Planet Earth galaxy 6', 73.90, false, 12345, 100000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lo', 'colored', 1, NULL);
INSERT INTO public.moon VALUES (2, 'Titan', 'colored', 2, NULL);
INSERT INTO public.moon VALUES (3, 'lapetus', 'uncolored', 1, NULL);
INSERT INTO public.moon VALUES (4, 'encelapedus', 'colored', 4, NULL);
INSERT INTO public.moon VALUES (5, 'Mimas', 'uncolored', 2, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 'colored', 3, NULL);
INSERT INTO public.moon VALUES (7, 'hyperion', 'colored', 4, NULL);
INSERT INTO public.moon VALUES (8, 'Rhea', 'uncolored', 1, NULL);
INSERT INTO public.moon VALUES (9, 'tethys', 'uncolored', 2, NULL);
INSERT INTO public.moon VALUES (10, 'Nereid', 'colored', 6, NULL);
INSERT INTO public.moon VALUES (11, 'Europa 2', 'colored', 3, NULL);
INSERT INTO public.moon VALUES (12, 'hyperion 2', 'colored', 4, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea 2', 'uncolored', 1, NULL);
INSERT INTO public.moon VALUES (14, 'tethys 2', 'uncolored', 2, NULL);
INSERT INTO public.moon VALUES (15, 'Nereid 2', 'colored', 6, NULL);
INSERT INTO public.moon VALUES (16, 'Europa 3', 'colored', 3, NULL);
INSERT INTO public.moon VALUES (17, 'hyperion 3', 'colored', 2, NULL);
INSERT INTO public.moon VALUES (18, 'Rhea 3', 'uncolored', 1, NULL);
INSERT INTO public.moon VALUES (19, 'tethys 3', 'uncolored', 2, NULL);
INSERT INTO public.moon VALUES (20, 'Nereid 3', 'colored', 3, NULL);


--
-- Data for Name: obj; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.obj VALUES (1, 'OBJ 1', 1, 1, 1, 1);
INSERT INTO public.obj VALUES (2, 'OBJ 2', 2, 2, 2, 2);
INSERT INTO public.obj VALUES (3, 'OBJ 3', 3, 3, 3, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, 2345, NULL);
INSERT INTO public.planet VALUES (2, 'marte', 2, 2345, NULL);
INSERT INTO public.planet VALUES (3, 'saturno', 1, 2345, NULL);
INSERT INTO public.planet VALUES (4, 'plutao', 4, 21234, NULL);
INSERT INTO public.planet VALUES (5, 'jupter', 6, 9976, NULL);
INSERT INTO public.planet VALUES (6, 'mercurio', 5, 19464, NULL);
INSERT INTO public.planet VALUES (7, 'earth 2', 3, 2345, NULL);
INSERT INTO public.planet VALUES (8, 'marte 2', 5, 2345, NULL);
INSERT INTO public.planet VALUES (9, 'saturno 2', 4, 2345, NULL);
INSERT INTO public.planet VALUES (10, 'plutao 2', 1, 21234, NULL);
INSERT INTO public.planet VALUES (11, 'jupter 2', 3, 9976, NULL);
INSERT INTO public.planet VALUES (12, 'mercurio 2', 5, 19464, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Aladin', 'The greatest star', 45.70, true, 12345, 1908, 1);
INSERT INTO public.star VALUES (2, 'Aladin 2', 'The greatest star 2', 45.70, true, 12345, 1908, 2);
INSERT INTO public.star VALUES (3, 'Aladin 3', 'The greatest star 3', 45.70, true, 12345, 1908, 3);
INSERT INTO public.star VALUES (4, 'Aladin 4', 'The greatest star 4', 45.70, true, 12345, 1908, 4);
INSERT INTO public.star VALUES (5, 'Aladin 5', 'The greatest star 5', 45.70, true, 12345, 1908, 5);
INSERT INTO public.star VALUES (6, 'Aladin 6', 'The greatest star 6', 45.70, true, 12345, 1908, 6);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unq UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unq UNIQUE (name);


--
-- Name: obj obj_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.obj
    ADD CONSTRAINT obj_name_key UNIQUE (name);


--
-- Name: obj obj_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.obj
    ADD CONSTRAINT obj_pkey PRIMARY KEY (obj_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unq UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unq UNIQUE (name);


--
-- Name: obj galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.obj
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: obj moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.obj
    ADD CONSTRAINT moon_id FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: obj planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.obj
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: obj star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.obj
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

