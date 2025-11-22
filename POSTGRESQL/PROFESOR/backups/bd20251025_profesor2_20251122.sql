--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.13

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

--
-- Name: transporte; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA transporte;


ALTER SCHEMA transporte OWNER TO postgres;

--
-- Name: uneweb; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA uneweb;


ALTER SCHEMA uneweb OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: autobuses; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.autobuses (
    id integer NOT NULL,
    marca_id integer,
    modelo_id integer,
    anio smallint,
    color_id integer
);


ALTER TABLE transporte.autobuses OWNER TO postgres;

--
-- Name: autobuses_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.autobuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.autobuses_id_seq OWNER TO postgres;

--
-- Name: autobuses_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.autobuses_id_seq OWNED BY transporte.autobuses.id;


--
-- Name: autobuses_turnos; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.autobuses_turnos (
    autobus_id integer NOT NULL,
    turno_id integer NOT NULL
);


ALTER TABLE transporte.autobuses_turnos OWNER TO postgres;

--
-- Name: choferes; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.choferes (
    id integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    cedula character varying(9),
    nro_licencia character varying(9),
    edad smallint
);


ALTER TABLE transporte.choferes OWNER TO postgres;

--
-- Name: choferes_autobuses; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.choferes_autobuses (
    chofer_id integer NOT NULL,
    autobus_id integer NOT NULL
);


ALTER TABLE transporte.choferes_autobuses OWNER TO postgres;

--
-- Name: choferes_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.choferes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.choferes_id_seq OWNER TO postgres;

--
-- Name: choferes_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.choferes_id_seq OWNED BY transporte.choferes.id;


--
-- Name: colores; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.colores (
    id integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE transporte.colores OWNER TO postgres;

--
-- Name: colores_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.colores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.colores_id_seq OWNER TO postgres;

--
-- Name: colores_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.colores_id_seq OWNED BY transporte.colores.id;


--
-- Name: marcas; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.marcas (
    id integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE transporte.marcas OWNER TO postgres;

--
-- Name: marcas_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.marcas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.marcas_id_seq OWNER TO postgres;

--
-- Name: marcas_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.marcas_id_seq OWNED BY transporte.marcas.id;


--
-- Name: modelos; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.modelos (
    id integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE transporte.modelos OWNER TO postgres;

--
-- Name: modelos_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.modelos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.modelos_id_seq OWNER TO postgres;

--
-- Name: modelos_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.modelos_id_seq OWNED BY transporte.modelos.id;


--
-- Name: paradas; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.paradas (
    id integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE transporte.paradas OWNER TO postgres;

--
-- Name: paradas_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.paradas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.paradas_id_seq OWNER TO postgres;

--
-- Name: paradas_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.paradas_id_seq OWNED BY transporte.paradas.id;


--
-- Name: recorridos; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.recorridos (
    autobus_id integer NOT NULL,
    ruta_id integer NOT NULL
);


ALTER TABLE transporte.recorridos OWNER TO postgres;

--
-- Name: rutas; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.rutas (
    id integer NOT NULL,
    nombre character varying(50),
    parada_id integer
);


ALTER TABLE transporte.rutas OWNER TO postgres;

--
-- Name: rutas_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.rutas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.rutas_id_seq OWNER TO postgres;

--
-- Name: rutas_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.rutas_id_seq OWNED BY transporte.rutas.id;


--
-- Name: turnos; Type: TABLE; Schema: transporte; Owner: postgres
--

CREATE TABLE transporte.turnos (
    id integer NOT NULL,
    nombre character varying(50),
    hora_inicio time without time zone,
    hora_finalizacion time without time zone
);


ALTER TABLE transporte.turnos OWNER TO postgres;

--
-- Name: turnos_id_seq; Type: SEQUENCE; Schema: transporte; Owner: postgres
--

CREATE SEQUENCE transporte.turnos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE transporte.turnos_id_seq OWNER TO postgres;

--
-- Name: turnos_id_seq; Type: SEQUENCE OWNED BY; Schema: transporte; Owner: postgres
--

ALTER SEQUENCE transporte.turnos_id_seq OWNED BY transporte.turnos.id;


--
-- Name: contactos; Type: TABLE; Schema: uneweb; Owner: postgres
--

CREATE TABLE uneweb.contactos (
    id integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    telefono character varying(20),
    correo character varying(100)
);


ALTER TABLE uneweb.contactos OWNER TO postgres;

--
-- Name: contactos_id_seq; Type: SEQUENCE; Schema: uneweb; Owner: postgres
--

CREATE SEQUENCE uneweb.contactos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE uneweb.contactos_id_seq OWNER TO postgres;

--
-- Name: contactos_id_seq; Type: SEQUENCE OWNED BY; Schema: uneweb; Owner: postgres
--

ALTER SEQUENCE uneweb.contactos_id_seq OWNED BY uneweb.contactos.id;


--
-- Name: autobuses id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses ALTER COLUMN id SET DEFAULT nextval('transporte.autobuses_id_seq'::regclass);


--
-- Name: choferes id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.choferes ALTER COLUMN id SET DEFAULT nextval('transporte.choferes_id_seq'::regclass);


--
-- Name: colores id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.colores ALTER COLUMN id SET DEFAULT nextval('transporte.colores_id_seq'::regclass);


--
-- Name: marcas id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.marcas ALTER COLUMN id SET DEFAULT nextval('transporte.marcas_id_seq'::regclass);


--
-- Name: modelos id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.modelos ALTER COLUMN id SET DEFAULT nextval('transporte.modelos_id_seq'::regclass);


--
-- Name: paradas id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.paradas ALTER COLUMN id SET DEFAULT nextval('transporte.paradas_id_seq'::regclass);


--
-- Name: rutas id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas ALTER COLUMN id SET DEFAULT nextval('transporte.rutas_id_seq'::regclass);


--
-- Name: turnos id; Type: DEFAULT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.turnos ALTER COLUMN id SET DEFAULT nextval('transporte.turnos_id_seq'::regclass);


--
-- Name: contactos id; Type: DEFAULT; Schema: uneweb; Owner: postgres
--

ALTER TABLE ONLY uneweb.contactos ALTER COLUMN id SET DEFAULT nextval('uneweb.contactos_id_seq'::regclass);


--
-- Data for Name: autobuses; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.autobuses (id, marca_id, modelo_id, anio, color_id) FROM stdin;
101	1	1	2020	1
102	2	2	2018	3
103	3	3	2021	2
\.


--
-- Data for Name: autobuses_turnos; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.autobuses_turnos (autobus_id, turno_id) FROM stdin;
101	1
102	2
103	1
\.


--
-- Data for Name: choferes; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.choferes (id, nombre, apellido, cedula, nro_licencia, edad) FROM stdin;
1	Andres	Perez	123456789	L98765432	45
2	Maria	Gomez	987654321	L12345678	32
\.


--
-- Data for Name: choferes_autobuses; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.choferes_autobuses (chofer_id, autobus_id) FROM stdin;
1	101
2	102
1	103
\.


--
-- Data for Name: colores; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.colores (id, nombre) FROM stdin;
1	Rojo
2	Azul
3	Blanco
\.


--
-- Data for Name: marcas; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.marcas (id, nombre) FROM stdin;
1	Volvo
2	Mercedes-Benz
3	Scania
\.


--
-- Data for Name: modelos; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.modelos (id, nombre) FROM stdin;
1	B8R
2	Gran Viale
3	K310
\.


--
-- Data for Name: paradas; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.paradas (id, nombre) FROM stdin;
10	Terminal Principal
11	Av. Libertador
12	Plaza Central
13	Parque Industrial
\.


--
-- Data for Name: recorridos; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.recorridos (autobus_id, ruta_id) FROM stdin;
101	1
102	1
103	2
102	2
\.


--
-- Data for Name: rutas; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.rutas (id, nombre, parada_id) FROM stdin;
1	Ruta Central	10
2	Ruta Industrial	13
\.


--
-- Data for Name: turnos; Type: TABLE DATA; Schema: transporte; Owner: postgres
--

COPY transporte.turnos (id, nombre, hora_inicio, hora_finalizacion) FROM stdin;
1	Ma¤ana	05:00:00	13:00:00
2	Tarde	13:00:00	21:00:00
\.


--
-- Data for Name: contactos; Type: TABLE DATA; Schema: uneweb; Owner: postgres
--

COPY uneweb.contactos (id, nombre, apellido, telefono, correo) FROM stdin;
1	ANA	VASQUEZ	04141234567	AV@GMAIL.COM
2	NELLY	CONTRERAS	04149876543	NC@GMAIL.COM
3	NELLY DEL CARMEN	TORTOZA	04145678901	YT@GMAIL.COM
\.


--
-- Name: autobuses_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.autobuses_id_seq', 1, false);


--
-- Name: choferes_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.choferes_id_seq', 1, false);


--
-- Name: colores_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.colores_id_seq', 1, false);


--
-- Name: marcas_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.marcas_id_seq', 1, false);


--
-- Name: modelos_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.modelos_id_seq', 1, false);


--
-- Name: paradas_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.paradas_id_seq', 1, false);


--
-- Name: rutas_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.rutas_id_seq', 1, false);


--
-- Name: turnos_id_seq; Type: SEQUENCE SET; Schema: transporte; Owner: postgres
--

SELECT pg_catalog.setval('transporte.turnos_id_seq', 1, false);


--
-- Name: contactos_id_seq; Type: SEQUENCE SET; Schema: uneweb; Owner: postgres
--

SELECT pg_catalog.setval('uneweb.contactos_id_seq', 3, true);


--
-- Name: autobuses autobuses_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_pkey PRIMARY KEY (id);


--
-- Name: autobuses_turnos autobuses_turnos_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses_turnos
    ADD CONSTRAINT autobuses_turnos_pkey PRIMARY KEY (autobus_id, turno_id);


--
-- Name: choferes_autobuses choferes_autobuses_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.choferes_autobuses
    ADD CONSTRAINT choferes_autobuses_pkey PRIMARY KEY (chofer_id, autobus_id);


--
-- Name: choferes choferes_cedula_key; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.choferes
    ADD CONSTRAINT choferes_cedula_key UNIQUE (cedula);


--
-- Name: choferes choferes_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.choferes
    ADD CONSTRAINT choferes_pkey PRIMARY KEY (id);


--
-- Name: colores colores_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.colores
    ADD CONSTRAINT colores_pkey PRIMARY KEY (id);


--
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id);


--
-- Name: modelos modelos_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.modelos
    ADD CONSTRAINT modelos_pkey PRIMARY KEY (id);


--
-- Name: paradas paradas_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.paradas
    ADD CONSTRAINT paradas_pkey PRIMARY KEY (id);


--
-- Name: recorridos recorridos_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.recorridos
    ADD CONSTRAINT recorridos_pkey PRIMARY KEY (autobus_id, ruta_id);


--
-- Name: rutas rutas_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas
    ADD CONSTRAINT rutas_pkey PRIMARY KEY (id);


--
-- Name: turnos turnos_pkey; Type: CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.turnos
    ADD CONSTRAINT turnos_pkey PRIMARY KEY (id);


--
-- Name: contactos contactos_correo_key; Type: CONSTRAINT; Schema: uneweb; Owner: postgres
--

ALTER TABLE ONLY uneweb.contactos
    ADD CONSTRAINT contactos_correo_key UNIQUE (correo);


--
-- Name: contactos contactos_pkey; Type: CONSTRAINT; Schema: uneweb; Owner: postgres
--

ALTER TABLE ONLY uneweb.contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (id);


--
-- Name: autobuses autobuses_color_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_color_id_fkey FOREIGN KEY (color_id) REFERENCES transporte.colores(id) NOT VALID;


--
-- Name: autobuses autobuses_marca_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_marca_id_fkey FOREIGN KEY (marca_id) REFERENCES transporte.marcas(id) NOT VALID;


--
-- Name: autobuses autobuses_modelo_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses
    ADD CONSTRAINT autobuses_modelo_id_fkey FOREIGN KEY (modelo_id) REFERENCES transporte.modelos(id) NOT VALID;


--
-- Name: autobuses_turnos autobuses_turnos_autobus_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses_turnos
    ADD CONSTRAINT autobuses_turnos_autobus_id_fkey FOREIGN KEY (autobus_id) REFERENCES transporte.autobuses(id) NOT VALID;


--
-- Name: autobuses_turnos autobuses_turnos_turno_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.autobuses_turnos
    ADD CONSTRAINT autobuses_turnos_turno_id_fkey FOREIGN KEY (turno_id) REFERENCES transporte.turnos(id) NOT VALID;


--
-- Name: choferes_autobuses choferes_autobuses_autobus_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.choferes_autobuses
    ADD CONSTRAINT choferes_autobuses_autobus_id_fkey FOREIGN KEY (autobus_id) REFERENCES transporte.autobuses(id) NOT VALID;


--
-- Name: choferes_autobuses choferes_autobuses_chofer_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.choferes_autobuses
    ADD CONSTRAINT choferes_autobuses_chofer_id_fkey FOREIGN KEY (chofer_id) REFERENCES transporte.choferes(id) NOT VALID;


--
-- Name: recorridos recorridos_autobus_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.recorridos
    ADD CONSTRAINT recorridos_autobus_id_fkey FOREIGN KEY (autobus_id) REFERENCES transporte.autobuses(id) NOT VALID;


--
-- Name: recorridos recorridos_ruta_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.recorridos
    ADD CONSTRAINT recorridos_ruta_id_fkey FOREIGN KEY (ruta_id) REFERENCES transporte.rutas(id) NOT VALID;


--
-- Name: rutas rutas_parada_id_fkey; Type: FK CONSTRAINT; Schema: transporte; Owner: postgres
--

ALTER TABLE ONLY transporte.rutas
    ADD CONSTRAINT rutas_parada_id_fkey FOREIGN KEY (parada_id) REFERENCES transporte.paradas(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

