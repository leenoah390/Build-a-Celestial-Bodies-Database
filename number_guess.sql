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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    name_id integer,
    number_guess integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: names; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.names (
    name_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.names OWNER TO freecodecamp;

--
-- Name: names_name_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.names_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.names_name_id_seq OWNER TO freecodecamp;

--
-- Name: names_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.names_name_id_seq OWNED BY public.names.name_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: names name_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.names ALTER COLUMN name_id SET DEFAULT nextval('public.names_name_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 11, 923);
INSERT INTO public.games VALUES (2, 12, 864);
INSERT INTO public.games VALUES (3, 11, 717);
INSERT INTO public.games VALUES (4, 11, 240);
INSERT INTO public.games VALUES (5, 11, 963);
INSERT INTO public.games VALUES (6, 13, 253);
INSERT INTO public.games VALUES (7, 14, 922);
INSERT INTO public.games VALUES (8, 13, 275);
INSERT INTO public.games VALUES (9, 13, 771);
INSERT INTO public.games VALUES (10, 13, 974);
INSERT INTO public.games VALUES (11, 15, 317);
INSERT INTO public.games VALUES (12, 16, 154);
INSERT INTO public.games VALUES (13, 15, 285);
INSERT INTO public.games VALUES (14, 15, 572);
INSERT INTO public.games VALUES (15, 15, 393);
INSERT INTO public.games VALUES (16, 17, 587);
INSERT INTO public.games VALUES (17, 18, 425);
INSERT INTO public.games VALUES (18, 17, 33);
INSERT INTO public.games VALUES (19, 17, 707);
INSERT INTO public.games VALUES (20, 17, 980);


--
-- Data for Name: names; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.names VALUES (1, 'user_1718117989378');
INSERT INTO public.names VALUES (2, 'user_1718117989377');
INSERT INTO public.names VALUES (3, 'user_1718118037206');
INSERT INTO public.names VALUES (4, 'user_1718118037205');
INSERT INTO public.names VALUES (5, 'user_1718119109622');
INSERT INTO public.names VALUES (6, 'user_1718119109621');
INSERT INTO public.names VALUES (7, 'user_1718119865570');
INSERT INTO public.names VALUES (8, 'user_1718119865569');
INSERT INTO public.names VALUES (9, 'user_1718119938367');
INSERT INTO public.names VALUES (10, 'user_1718119938366');
INSERT INTO public.names VALUES (11, 'user_1718137668368');
INSERT INTO public.names VALUES (12, 'user_1718137668367');
INSERT INTO public.names VALUES (13, 'user_1718137674042');
INSERT INTO public.names VALUES (14, 'user_1718137674041');
INSERT INTO public.names VALUES (15, 'user_1718137682838');
INSERT INTO public.names VALUES (16, 'user_1718137682837');
INSERT INTO public.names VALUES (17, 'user_1718137688364');
INSERT INTO public.names VALUES (18, 'user_1718137688363');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 20, true);


--
-- Name: names_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.names_name_id_seq', 18, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: names names_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.names
    ADD CONSTRAINT names_pkey PRIMARY KEY (name_id);


--
-- Name: games games_name_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_name_id_fkey FOREIGN KEY (name_id) REFERENCES public.names(name_id);


--
-- PostgreSQL database dump complete
--

