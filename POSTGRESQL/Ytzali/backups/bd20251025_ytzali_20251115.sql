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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Contactos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Contactos" (
    "Nombres" character varying(100),
    "Apellidos" character varying(100),
    "Correo electr¢nico" character varying(100),
    "Tel‚fono" character varying(100)
);


ALTER TABLE public."Contactos" OWNER TO postgres;

--
-- Name: contactos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contactos (
    nombres character varying(100),
    apellidos character varying(100),
    correo_electronico character varying(100),
    telefono character varying(100)
);


ALTER TABLE public.contactos OWNER TO postgres;

--
-- Name: contactos1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contactos1 (
    id integer NOT NULL,
    nombres character varying(100),
    apellidos character varying(100),
    correo_electronico character varying(100),
    telefono character varying(100)
);


ALTER TABLE public.contactos1 OWNER TO postgres;

--
-- Name: contactos1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contactos1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contactos1_id_seq OWNER TO postgres;

--
-- Name: contactos1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contactos1_id_seq OWNED BY public.contactos1.id;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    proveedor_id integer,
    nombre character varying(100),
    precio numeric(13,2),
    existencia integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_seq OWNER TO postgres;

--
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedores (
    id integer NOT NULL,
    nombres character varying(100),
    "direcci¢n" text,
    telefono character varying(100),
    correo_electronico character varying(100)
);


ALTER TABLE public.proveedores OWNER TO postgres;

--
-- Name: proveedores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedores_id_seq OWNER TO postgres;

--
-- Name: proveedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedores_id_seq OWNED BY public.proveedores.id;


--
-- Name: vista_proveedores_productos; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.vista_proveedores_productos AS
 SELECT proveedores.nombres,
    productos.nombre AS producto,
    productos.precio,
    productos.existencia
   FROM public.proveedores,
    public.productos
  WHERE (proveedores.id = productos.proveedor_id);


ALTER TABLE public.vista_proveedores_productos OWNER TO postgres;

--
-- Name: contactos1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactos1 ALTER COLUMN id SET DEFAULT nextval('public.contactos1_id_seq'::regclass);


--
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- Name: proveedores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN id SET DEFAULT nextval('public.proveedores_id_seq'::regclass);


--
-- Data for Name: Contactos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Contactos" ("Nombres", "Apellidos", "Correo electr¢nico", "Tel‚fono") FROM stdin;
\.


--
-- Data for Name: contactos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contactos (nombres, apellidos, correo_electronico, telefono) FROM stdin;
\.


--
-- Data for Name: contactos1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contactos1 (id, nombres, apellidos, correo_electronico, telefono) FROM stdin;
2	YOLANDA	TORTOZA	ytgmail.com	+58 414 92345678
3	NELLY	CONTRERAS	ncgmail.com	+58 414 82345678
5	NORMA	CEVALLOS	nc@hotmail.com	+58 414 72345678
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, proveedor_id, nombre, precio, existencia) FROM stdin;
2	2	Congelador Vertical 150L	420.50	15
3	3	Nevera Ejecutiva 100L Negra	280.99	40
4	4	Refrigerador Side by Side 650L	1250.75	12
6	2	Frigobar Acero Inoxidable	185.25	30
7	3	Refrigerador de Vinos Dual Zone	980.00	8
8	4	Congelador Horizontal 200L	510.99	20
10	2	Nevera de 2 Puertas 350L	680.00	22
11	3	Bebedero de Agua Fria	110.00	35
12	4	Refrigerador French Door 550L	1150.25	10
14	2	Lavadora Carga Superior 15kg	550.00	35
15	3	Secadora Electrica de 8kg	480.90	28
16	4	Lavasecadora 10/7kg Inverter	899.99	15
18	2	Secadora a Gas Gran Capacidad	650.00	10
19	3	Lavadora Semi-Automatica 18kg	320.75	45
20	4	Centro de Lavado Compacto	950.00	14
22	2	Lavadora Portatil 5kg	190.00	60
23	3	Secadora por Condensacion 7kg	580.00	25
24	4	Lavadora Tecnologia EcoBubble	780.00	18
26	2	Cocina a Gas 4 Quemadores Acero	350.00	30
27	3	Horno Electrico Empotrable 60cm	520.50	25
28	4	Microondas Digital 20 Litros	85.99	70
30	2	Cocina Electrica Vitroceramica	410.75	22
31	3	Horno Microondas con Grill	115.00	65
32	4	Campana Extractora de Pared 90cm	290.00	18
34	2	Parrilla Electrica de Mesa	55.99	90
35	3	Horno de Conveccion Multifuncion	680.00	11
36	4	Cocina Compacta 2 Placas	95.00	80
38	2	Aire Acondicionado Split 12000 BTU	450.00	30
39	3	Calentador de Agua a Gas 10L	210.99	25
40	4	Calefactor Ceramico Oscilante	65.50	50
42	2	Deshumidificador 15L/Dia	199.99	35
43	3	Ventilador de Pedestal Control	40.00	90
44	4	Termostato Inteligente Wi-Fi	85.00	45
46	2	Purificador de Aire Filtro HEPA	150.00	30
47	3	Ventilador de Techo con Luz LED	95.00	50
48	4	Aspiradora Robot Inteligente	299.99	15
\.


--
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedores (id, nombres, "direcci¢n", telefono, correo_electronico) FROM stdin;
2	WHIRPOOL	AV. BARALT	+58 212 4876543	info@whirpool.com
3	SAMSUNG	AV. SAN MARTIN	+58 212 7876543	info@samsung.com
4	ADMIRAL	AV. ROMULO GALLEGOS	+58 212 2876543	info@admiral.com
\.


--
-- Name: contactos1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contactos1_id_seq', 5, true);


--
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 49, true);


--
-- Name: proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedores_id_seq', 4, true);


--
-- Name: contactos1 contactos1_correo_electronico_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactos1
    ADD CONSTRAINT contactos1_correo_electronico_key UNIQUE (correo_electronico);


--
-- Name: contactos1 contactos1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactos1
    ADD CONSTRAINT contactos1_pkey PRIMARY KEY (id);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id);


--
-- Name: productos productos_proveedor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_proveedor_id_fkey FOREIGN KEY (proveedor_id) REFERENCES public.proveedores(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

