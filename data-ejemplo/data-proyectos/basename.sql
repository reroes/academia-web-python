--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: estudiante; Type: TABLE; Schema: public; Owner: reroes
--

CREATE TABLE estudiante (
    id_estudiante integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    dob date,
    email character varying(255),
    cedula character varying(255)
);


ALTER TABLE estudiante OWNER TO reroes;

--
-- Name: estudiante_id_estudiante_seq; Type: SEQUENCE; Schema: public; Owner: reroes
--

CREATE SEQUENCE estudiante_id_estudiante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE estudiante_id_estudiante_seq OWNER TO reroes;

--
-- Name: estudiante_id_estudiante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reroes
--

ALTER SEQUENCE estudiante_id_estudiante_seq OWNED BY estudiante.id_estudiante;


--
-- Name: materia; Type: TABLE; Schema: public; Owner: reroes
--

CREATE TABLE materia (
    id_materia integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE materia OWNER TO reroes;

--
-- Name: materia_id_materia_seq; Type: SEQUENCE; Schema: public; Owner: reroes
--

CREATE SEQUENCE materia_id_materia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE materia_id_materia_seq OWNER TO reroes;

--
-- Name: materia_id_materia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reroes
--

ALTER SEQUENCE materia_id_materia_seq OWNED BY materia.id_materia;


--
-- Name: paralelo; Type: TABLE; Schema: public; Owner: reroes
--

CREATE TABLE paralelo (
    id_paralelo integer NOT NULL,
    nombre character varying(50),
    la_materia integer,
    la_periodo integer
);


ALTER TABLE paralelo OWNER TO reroes;

--
-- Name: paralelo_estudiante; Type: TABLE; Schema: public; Owner: reroes
--

CREATE TABLE paralelo_estudiante (
    id_paralelo_estudiante integer NOT NULL,
    la_paralelo integer,
    la_estudiante integer
);


ALTER TABLE paralelo_estudiante OWNER TO reroes;

--
-- Name: paralelo_estudiante_id_paralelo_estudiante_seq; Type: SEQUENCE; Schema: public; Owner: reroes
--

CREATE SEQUENCE paralelo_estudiante_id_paralelo_estudiante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE paralelo_estudiante_id_paralelo_estudiante_seq OWNER TO reroes;

--
-- Name: paralelo_estudiante_id_paralelo_estudiante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reroes
--

ALTER SEQUENCE paralelo_estudiante_id_paralelo_estudiante_seq OWNED BY paralelo_estudiante.id_paralelo_estudiante;


--
-- Name: paralelo_id_paralelo_seq; Type: SEQUENCE; Schema: public; Owner: reroes
--

CREATE SEQUENCE paralelo_id_paralelo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE paralelo_id_paralelo_seq OWNER TO reroes;

--
-- Name: paralelo_id_paralelo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reroes
--

ALTER SEQUENCE paralelo_id_paralelo_seq OWNED BY paralelo.id_paralelo;


--
-- Name: periodo; Type: TABLE; Schema: public; Owner: reroes
--

CREATE TABLE periodo (
    id_periodo integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE periodo OWNER TO reroes;

--
-- Name: periodo_id_periodo_seq; Type: SEQUENCE; Schema: public; Owner: reroes
--

CREATE SEQUENCE periodo_id_periodo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE periodo_id_periodo_seq OWNER TO reroes;

--
-- Name: periodo_id_periodo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reroes
--

ALTER SEQUENCE periodo_id_periodo_seq OWNED BY periodo.id_periodo;


--
-- Name: id_estudiante; Type: DEFAULT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY estudiante ALTER COLUMN id_estudiante SET DEFAULT nextval('estudiante_id_estudiante_seq'::regclass);


--
-- Name: id_materia; Type: DEFAULT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY materia ALTER COLUMN id_materia SET DEFAULT nextval('materia_id_materia_seq'::regclass);


--
-- Name: id_paralelo; Type: DEFAULT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo ALTER COLUMN id_paralelo SET DEFAULT nextval('paralelo_id_paralelo_seq'::regclass);


--
-- Name: id_paralelo_estudiante; Type: DEFAULT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo_estudiante ALTER COLUMN id_paralelo_estudiante SET DEFAULT nextval('paralelo_estudiante_id_paralelo_estudiante_seq'::regclass);


--
-- Name: id_periodo; Type: DEFAULT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY periodo ALTER COLUMN id_periodo SET DEFAULT nextval('periodo_id_periodo_seq'::regclass);


--
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: reroes
--

COPY estudiante (id_estudiante, nombre, apellido, dob, email, cedula) FROM stdin;
1	René	Elizalde	1983-11-06	reroes799@gmail.com	11002233
2	Rolando	Solano	1980-11-06	reroes@reroes.com	11002231
\.


--
-- Name: estudiante_id_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: reroes
--

SELECT pg_catalog.setval('estudiante_id_estudiante_seq', 33, true);


--
-- Data for Name: materia; Type: TABLE DATA; Schema: public; Owner: reroes
--

COPY materia (id_materia, nombre) FROM stdin;
1	Programación
2	Logica
3	Base de Datos
4	\N
\.


--
-- Name: materia_id_materia_seq; Type: SEQUENCE SET; Schema: public; Owner: reroes
--

SELECT pg_catalog.setval('materia_id_materia_seq', 4, true);


--
-- Data for Name: paralelo; Type: TABLE DATA; Schema: public; Owner: reroes
--

COPY paralelo (id_paralelo, nombre, la_materia, la_periodo) FROM stdin;
1	A	1	1
2	B	2	2
3	C	3	1
\.


--
-- Data for Name: paralelo_estudiante; Type: TABLE DATA; Schema: public; Owner: reroes
--

COPY paralelo_estudiante (id_paralelo_estudiante, la_paralelo, la_estudiante) FROM stdin;
1	1	1
2	2	2
3	1	2
4	2	1
\.


--
-- Name: paralelo_estudiante_id_paralelo_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: reroes
--

SELECT pg_catalog.setval('paralelo_estudiante_id_paralelo_estudiante_seq', 4, true);


--
-- Name: paralelo_id_paralelo_seq; Type: SEQUENCE SET; Schema: public; Owner: reroes
--

SELECT pg_catalog.setval('paralelo_id_paralelo_seq', 3, true);


--
-- Data for Name: periodo; Type: TABLE DATA; Schema: public; Owner: reroes
--

COPY periodo (id_periodo, nombre) FROM stdin;
1	Abril-agosto 2016
2	Octubre 2016 – Febrero 2017
3	Abril-agosto 2017
4	Octubre 2017 – Febrero 2018
\.


--
-- Name: periodo_id_periodo_seq; Type: SEQUENCE SET; Schema: public; Owner: reroes
--

SELECT pg_catalog.setval('periodo_id_periodo_seq', 4, true);


--
-- Name: estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (id_estudiante);


--
-- Name: materia_pkey; Type: CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (id_materia);


--
-- Name: paralelo_estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo_estudiante
    ADD CONSTRAINT paralelo_estudiante_pkey PRIMARY KEY (id_paralelo_estudiante);


--
-- Name: paralelo_pkey; Type: CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo
    ADD CONSTRAINT paralelo_pkey PRIMARY KEY (id_paralelo);


--
-- Name: periodo_pkey; Type: CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY periodo
    ADD CONSTRAINT periodo_pkey PRIMARY KEY (id_periodo);


--
-- Name: estudiante_fkey; Type: FK CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo_estudiante
    ADD CONSTRAINT estudiante_fkey FOREIGN KEY (la_estudiante) REFERENCES estudiante(id_estudiante);


--
-- Name: materia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo
    ADD CONSTRAINT materia_fkey FOREIGN KEY (la_materia) REFERENCES materia(id_materia);


--
-- Name: paralelo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo_estudiante
    ADD CONSTRAINT paralelo_fkey FOREIGN KEY (la_paralelo) REFERENCES paralelo(id_paralelo);


--
-- Name: periodo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: reroes
--

ALTER TABLE ONLY paralelo
    ADD CONSTRAINT periodo_fkey FOREIGN KEY (la_periodo) REFERENCES periodo(id_periodo);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

