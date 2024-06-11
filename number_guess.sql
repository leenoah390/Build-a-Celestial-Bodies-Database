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
INSERT INTO public.games VALUES (21, 19, 30);
INSERT INTO public.games VALUES (22, 19, 134);
INSERT INTO public.games VALUES (23, 20, 405);
INSERT INTO public.games VALUES (24, 20, 231);
INSERT INTO public.games VALUES (25, 19, 440);
INSERT INTO public.games VALUES (26, 19, 483);
INSERT INTO public.games VALUES (27, 19, 678);
INSERT INTO public.games VALUES (28, 21, 997);
INSERT INTO public.games VALUES (29, 21, 13);
INSERT INTO public.games VALUES (30, 22, 271);
INSERT INTO public.games VALUES (31, 22, 18);
INSERT INTO public.games VALUES (32, 21, 97);
INSERT INTO public.games VALUES (33, 21, 506);
INSERT INTO public.games VALUES (34, 21, 149);
INSERT INTO public.games VALUES (35, 23, 547);
INSERT INTO public.games VALUES (36, 23, 255);
INSERT INTO public.games VALUES (37, 24, 548);
INSERT INTO public.games VALUES (38, 24, 335);
INSERT INTO public.games VALUES (39, 23, 517);
INSERT INTO public.games VALUES (40, 23, 947);
INSERT INTO public.games VALUES (41, 23, 5);
INSERT INTO public.games VALUES (42, 25, 605);
INSERT INTO public.games VALUES (43, 25, 533);
INSERT INTO public.games VALUES (44, 26, 963);
INSERT INTO public.games VALUES (45, 26, 292);
INSERT INTO public.games VALUES (46, 25, 228);
INSERT INTO public.games VALUES (47, 25, 192);
INSERT INTO public.games VALUES (48, 25, 552);
INSERT INTO public.games VALUES (49, 27, 870);
INSERT INTO public.games VALUES (50, 27, 716);
INSERT INTO public.games VALUES (51, 28, 667);
INSERT INTO public.games VALUES (52, 28, 174);
INSERT INTO public.games VALUES (53, 27, 930);
INSERT INTO public.games VALUES (54, 27, 572);
INSERT INTO public.games VALUES (55, 27, 559);
INSERT INTO public.games VALUES (56, 29, 955);
INSERT INTO public.games VALUES (57, 29, 18);
INSERT INTO public.games VALUES (58, 30, 818);
INSERT INTO public.games VALUES (59, 30, 277);
INSERT INTO public.games VALUES (60, 29, 654);
INSERT INTO public.games VALUES (61, 29, 365);
INSERT INTO public.games VALUES (62, 29, 109);
INSERT INTO public.games VALUES (63, 31, 372);
INSERT INTO public.games VALUES (64, 31, 243);
INSERT INTO public.games VALUES (65, 32, 486);
INSERT INTO public.games VALUES (66, 32, 186);
INSERT INTO public.games VALUES (67, 31, 601);
INSERT INTO public.games VALUES (68, 31, 846);
INSERT INTO public.games VALUES (69, 31, 248);
INSERT INTO public.games VALUES (70, 33, 883);
INSERT INTO public.games VALUES (71, 33, 197);
INSERT INTO public.games VALUES (72, 34, 32);
INSERT INTO public.games VALUES (73, 34, 609);
INSERT INTO public.games VALUES (74, 33, 409);
INSERT INTO public.games VALUES (75, 33, 458);
INSERT INTO public.games VALUES (76, 33, 824);
INSERT INTO public.games VALUES (77, 35, 980);
INSERT INTO public.games VALUES (78, 35, 630);
INSERT INTO public.games VALUES (79, 36, 235);
INSERT INTO public.games VALUES (80, 36, 776);
INSERT INTO public.games VALUES (81, 35, 804);
INSERT INTO public.games VALUES (82, 35, 471);
INSERT INTO public.games VALUES (83, 35, 376);
INSERT INTO public.games VALUES (84, 37, 584);
INSERT INTO public.games VALUES (85, 37, 574);
INSERT INTO public.games VALUES (86, 38, 65);
INSERT INTO public.games VALUES (87, 38, 468);
INSERT INTO public.games VALUES (88, 37, 251);
INSERT INTO public.games VALUES (89, 37, 653);
INSERT INTO public.games VALUES (90, 37, 513);
INSERT INTO public.games VALUES (91, 39, 328);
INSERT INTO public.games VALUES (92, 39, 61);
INSERT INTO public.games VALUES (93, 40, 820);
INSERT INTO public.games VALUES (94, 40, 376);
INSERT INTO public.games VALUES (95, 39, 805);
INSERT INTO public.games VALUES (96, 39, 636);
INSERT INTO public.games VALUES (97, 39, 453);
INSERT INTO public.games VALUES (98, 41, 439);
INSERT INTO public.games VALUES (99, 41, 671);
INSERT INTO public.games VALUES (100, 42, 146);
INSERT INTO public.games VALUES (101, 42, 175);
INSERT INTO public.games VALUES (102, 41, 881);
INSERT INTO public.games VALUES (103, 41, 98);
INSERT INTO public.games VALUES (104, 41, 469);
INSERT INTO public.games VALUES (105, 43, 146);
INSERT INTO public.games VALUES (106, 43, 935);
INSERT INTO public.games VALUES (107, 44, 795);
INSERT INTO public.games VALUES (108, 44, 923);
INSERT INTO public.games VALUES (109, 43, 476);
INSERT INTO public.games VALUES (110, 43, 584);
INSERT INTO public.games VALUES (111, 43, 538);


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
INSERT INTO public.names VALUES (19, 'user_1718146982726');
INSERT INTO public.names VALUES (20, 'user_1718146982725');
INSERT INTO public.names VALUES (21, 'user_1718147000788');
INSERT INTO public.names VALUES (22, 'user_1718147000787');
INSERT INTO public.names VALUES (23, 'user_1718147043219');
INSERT INTO public.names VALUES (24, 'user_1718147043218');
INSERT INTO public.names VALUES (25, 'user_1718147046722');
INSERT INTO public.names VALUES (26, 'user_1718147046721');
INSERT INTO public.names VALUES (27, 'user_1718147068505');
INSERT INTO public.names VALUES (28, 'user_1718147068504');
INSERT INTO public.names VALUES (29, 'user_1718147076949');
INSERT INTO public.names VALUES (30, 'user_1718147076948');
INSERT INTO public.names VALUES (31, 'user_1718147151010');
INSERT INTO public.names VALUES (32, 'user_1718147151009');
INSERT INTO public.names VALUES (33, 'user_1718147184569');
INSERT INTO public.names VALUES (34, 'user_1718147184568');
INSERT INTO public.names VALUES (35, 'user_1718147211701');
INSERT INTO public.names VALUES (36, 'user_1718147211700');
INSERT INTO public.names VALUES (37, 'user_1718147221947');
INSERT INTO public.names VALUES (38, 'user_1718147221946');
INSERT INTO public.names VALUES (39, 'user_1718147269745');
INSERT INTO public.names VALUES (40, 'user_1718147269744');
INSERT INTO public.names VALUES (41, 'user_1718147378361');
INSERT INTO public.names VALUES (42, 'user_1718147378360');
INSERT INTO public.names VALUES (43, 'user_1718147428285');
INSERT INTO public.names VALUES (44, 'user_1718147428284');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 111, true);


--
-- Name: names_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.names_name_id_seq', 44, true);


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

