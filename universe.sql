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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    name character varying(40),
    blackhole_id numeric NOT NULL,
    galaxy_id numeric NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40),
    galaxy_id numeric NOT NULL,
    with_blackhole boolean,
    size_in_light_years integer NOT NULL,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40),
    moon_id numeric NOT NULL,
    planet_id numeric NOT NULL,
    size_in_miles_radius numeric,
    distance_from_planet_in_miles numeric,
    color text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40),
    planet_id numeric NOT NULL,
    star_id numeric NOT NULL,
    size_in_miles_radius numeric,
    distance_from_star_in_miles numeric,
    habitable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40),
    star_id numeric NOT NULL,
    galaxy_id numeric NOT NULL,
    size_in_light_years integer NOT NULL,
    age_in_millions_of_years integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES ('Valent 5', 1, 1);
INSERT INTO public.blackhole VALUES ('NBT 6', 2, 2);
INSERT INTO public.blackhole VALUES ('Raucci', 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, true, 220000, 13600);
INSERT INTO public.galaxy VALUES ('Orion Nebula', 2, false, 24000, 1300);
INSERT INTO public.galaxy VALUES ('Sombrero', 3, true, 50000, 10200);
INSERT INTO public.galaxy VALUES ('Whirlpool', 4, false, 35000, 12800);
INSERT INTO public.galaxy VALUES ('Triangulum', 5, false, 60000, 8900);
INSERT INTO public.galaxy VALUES ('Pinwheel', 6, true, 30000, 9700);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 1, 1000, 30000, 'GRAY');
INSERT INTO public.moon VALUES ('Triton', 2, 1, 750, 50000, 'BLUE');
INSERT INTO public.moon VALUES ('Selene', 3, 2, 820, 42000, 'SILVER');
INSERT INTO public.moon VALUES ('Titan', 4, 2, 1200, 64000, 'ORANGE');
INSERT INTO public.moon VALUES ('Phoebe', 5, 3, 450, 18000, 'BROWN');
INSERT INTO public.moon VALUES ('Hyperion', 6, 3, 600, 27000, 'YELLOW');
INSERT INTO public.moon VALUES ('Icarus', 7, 4, 320, 8000, 'RED');
INSERT INTO public.moon VALUES ('Pandora', 8, 4, 380, 10000, 'GREEN');
INSERT INTO public.moon VALUES ('Umbriel', 9, 5, 220, 6000, 'PURPLE');
INSERT INTO public.moon VALUES ('Oberon', 10, 5, 280, 8000, 'PINK');
INSERT INTO public.moon VALUES ('Lumina', 11, 6, 170, 5000, 'CYAN');
INSERT INTO public.moon VALUES ('Solaris', 12, 6, 220, 6500, 'GOLD');
INSERT INTO public.moon VALUES ('Helios', 13, 7, 150, 3500, 'TEAL');
INSERT INTO public.moon VALUES ('Noctis', 14, 7, 180, 4200, 'MAGENTA');
INSERT INTO public.moon VALUES ('Phobos II', 15, 10, 80, 12, 'GRAY');
INSERT INTO public.moon VALUES ('Deimos II', 16, 10, 70, 10, 'BLUE');
INSERT INTO public.moon VALUES ('Aurora', 17, 11, 180, 5800, 'SILVER');
INSERT INTO public.moon VALUES ('Celestia', 18, 11, 210, 7200, 'ORANGE');
INSERT INTO public.moon VALUES ('Nebula', 19, 12, 250, 12000, 'BROWN');
INSERT INTO public.moon VALUES ('Orion', 20, 12, 270, 15000, 'YELLOW');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Pyralis', 1, 1, 1800, 30000000, true);
INSERT INTO public.planet VALUES ('Zephyria', 2, 1, 3500, 55000000, false);
INSERT INTO public.planet VALUES ('Thalassia', 3, 1, 2200, 72000000, false);
INSERT INTO public.planet VALUES ('Chronos', 4, 2, 4100, 120000000, false);
INSERT INTO public.planet VALUES ('Galactron', 5, 2, 37000, 600000000, false);
INSERT INTO public.planet VALUES ('Lumaria', 6, 2, 29500, 750000000, false);
INSERT INTO public.planet VALUES ('Solara', 7, 3, 2400, 120000000, true);
INSERT INTO public.planet VALUES ('Aquaron', 8, 3, 14200, 220000000, false);
INSERT INTO public.planet VALUES ('Terravida', 9, 3, 13800, 270000000, false);
INSERT INTO public.planet VALUES ('Phobos', 10, 4, 1900, 85000000, false);
INSERT INTO public.planet VALUES ('Etherea', 11, 5, 3600, 92000000, true);
INSERT INTO public.planet VALUES ('Astra Prime', 12, 6, 45000, 480000000, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sirius', 1, 1, 2, 120);
INSERT INTO public.star VALUES ('Alpha Centauri', 2, 2, 2, 150);
INSERT INTO public.star VALUES ('Betelgeuse', 3, 3, 700, 10100);
INSERT INTO public.star VALUES ('Polaris', 4, 4, 6, 70);
INSERT INTO public.star VALUES ('Vega', 5, 5, 4, 450);
INSERT INTO public.star VALUES ('Antares', 6, 6, 1000, 15200);


--
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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

