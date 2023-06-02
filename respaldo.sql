--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg110+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg110+1)

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
-- Name: citas; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.citas (
    id integer NOT NULL,
    paciente_id integer,
    medico_id integer,
    fecha_hora timestamp without time zone,
    estado character varying,
    disponibilidad_cita_id integer
);


ALTER TABLE public.citas OWNER TO myuser;

--
-- Name: citas_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.citas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.citas_id_seq OWNER TO myuser;

--
-- Name: citas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.citas_id_seq OWNED BY public.citas.id;


--
-- Name: disponibilidad_citas; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.disponibilidad_citas (
    id integer NOT NULL,
    medico_id integer,
    fecha_hora timestamp without time zone,
    estado_id integer
);


ALTER TABLE public.disponibilidad_citas OWNER TO myuser;

--
-- Name: disponibilidad_citas_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.disponibilidad_citas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.disponibilidad_citas_id_seq OWNER TO myuser;

--
-- Name: disponibilidad_citas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.disponibilidad_citas_id_seq OWNED BY public.disponibilidad_citas.id;


--
-- Name: especialidades; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.especialidades (
    id integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.especialidades OWNER TO myuser;

--
-- Name: especialidades_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.especialidades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.especialidades_id_seq OWNER TO myuser;

--
-- Name: especialidades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.especialidades_id_seq OWNED BY public.especialidades.id;


--
-- Name: estados_citas; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.estados_citas (
    id integer NOT NULL,
    estado character varying(20) NOT NULL
);


ALTER TABLE public.estados_citas OWNER TO myuser;

--
-- Name: estados_citas_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.estados_citas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estados_citas_id_seq OWNER TO myuser;

--
-- Name: estados_citas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.estados_citas_id_seq OWNED BY public.estados_citas.id;


--
-- Name: examenes; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.examenes (
    id integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.examenes OWNER TO myuser;

--
-- Name: examenes_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.examenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.examenes_id_seq OWNER TO myuser;

--
-- Name: examenes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.examenes_id_seq OWNED BY public.examenes.id;


--
-- Name: historiales_medicos; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.historiales_medicos (
    id integer NOT NULL,
    paciente_id integer,
    peso numeric,
    altura numeric,
    enfermedades_base text,
    procedimientos_realizados text
);


ALTER TABLE public.historiales_medicos OWNER TO myuser;

--
-- Name: historiales_medicos_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.historiales_medicos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historiales_medicos_id_seq OWNER TO myuser;

--
-- Name: historiales_medicos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.historiales_medicos_id_seq OWNED BY public.historiales_medicos.id;


--
-- Name: licencias_medicas; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.licencias_medicas (
    id integer NOT NULL,
    paciente_id integer,
    medico_id integer,
    fecha_emision date,
    detalle text
);


ALTER TABLE public.licencias_medicas OWNER TO myuser;

--
-- Name: licencias_medicas_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.licencias_medicas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.licencias_medicas_id_seq OWNER TO myuser;

--
-- Name: licencias_medicas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.licencias_medicas_id_seq OWNED BY public.licencias_medicas.id;


--
-- Name: medicos; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.medicos (
    id integer NOT NULL,
    usuario_id integer,
    nombre character varying,
    apellido character varying,
    especialidad_id integer
);


ALTER TABLE public.medicos OWNER TO myuser;

--
-- Name: medicos_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.medicos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicos_id_seq OWNER TO myuser;

--
-- Name: medicos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.medicos_id_seq OWNED BY public.medicos.id;


--
-- Name: pacientes; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.pacientes (
    id integer NOT NULL,
    usuario_id integer,
    nombre character varying,
    apellido character varying,
    fecha_nacimiento date
);


ALTER TABLE public.pacientes OWNER TO myuser;

--
-- Name: pacientes_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.pacientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pacientes_id_seq OWNER TO myuser;

--
-- Name: pacientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.pacientes_id_seq OWNED BY public.pacientes.id;


--
-- Name: recetas; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.recetas (
    id integer NOT NULL,
    paciente_id integer,
    medico_id integer,
    detalle text,
    fecha date
);


ALTER TABLE public.recetas OWNER TO myuser;

--
-- Name: recetas_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.recetas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recetas_id_seq OWNER TO myuser;

--
-- Name: recetas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.recetas_id_seq OWNED BY public.recetas.id;


--
-- Name: resultados_examenes; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.resultados_examenes (
    id integer NOT NULL,
    paciente_id integer,
    examen_id integer,
    fecha date,
    detalle text,
    solicitud_id integer
);


ALTER TABLE public.resultados_examenes OWNER TO myuser;

--
-- Name: resultados_examenes_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.resultados_examenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resultados_examenes_id_seq OWNER TO myuser;

--
-- Name: resultados_examenes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.resultados_examenes_id_seq OWNED BY public.resultados_examenes.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.roles OWNER TO myuser;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO myuser;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: solicitudes_examenes; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.solicitudes_examenes (
    id integer NOT NULL,
    medico_id integer,
    paciente_id integer,
    examen_id integer,
    fecha date
);


ALTER TABLE public.solicitudes_examenes OWNER TO myuser;

--
-- Name: solicitudes_examenes_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.solicitudes_examenes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solicitudes_examenes_id_seq OWNER TO myuser;

--
-- Name: solicitudes_examenes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.solicitudes_examenes_id_seq OWNED BY public.solicitudes_examenes.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: myuser
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    rut character varying,
    contrasena character varying,
    rol_id integer DEFAULT 2,
    email character varying,
    telefono character varying
);


ALTER TABLE public.usuarios OWNER TO myuser;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: myuser
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO myuser;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: myuser
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: citas id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.citas ALTER COLUMN id SET DEFAULT nextval('public.citas_id_seq'::regclass);


--
-- Name: disponibilidad_citas id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.disponibilidad_citas ALTER COLUMN id SET DEFAULT nextval('public.disponibilidad_citas_id_seq'::regclass);


--
-- Name: especialidades id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.especialidades ALTER COLUMN id SET DEFAULT nextval('public.especialidades_id_seq'::regclass);


--
-- Name: estados_citas id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.estados_citas ALTER COLUMN id SET DEFAULT nextval('public.estados_citas_id_seq'::regclass);


--
-- Name: examenes id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.examenes ALTER COLUMN id SET DEFAULT nextval('public.examenes_id_seq'::regclass);


--
-- Name: historiales_medicos id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.historiales_medicos ALTER COLUMN id SET DEFAULT nextval('public.historiales_medicos_id_seq'::regclass);


--
-- Name: licencias_medicas id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.licencias_medicas ALTER COLUMN id SET DEFAULT nextval('public.licencias_medicas_id_seq'::regclass);


--
-- Name: medicos id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.medicos ALTER COLUMN id SET DEFAULT nextval('public.medicos_id_seq'::regclass);


--
-- Name: pacientes id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.pacientes ALTER COLUMN id SET DEFAULT nextval('public.pacientes_id_seq'::regclass);


--
-- Name: recetas id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.recetas ALTER COLUMN id SET DEFAULT nextval('public.recetas_id_seq'::regclass);


--
-- Name: resultados_examenes id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.resultados_examenes ALTER COLUMN id SET DEFAULT nextval('public.resultados_examenes_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: solicitudes_examenes id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.solicitudes_examenes ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_examenes_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: citas; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.citas (id, paciente_id, medico_id, fecha_hora, estado, disponibilidad_cita_id) FROM stdin;
\.


--
-- Data for Name: disponibilidad_citas; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.disponibilidad_citas (id, medico_id, fecha_hora, estado_id) FROM stdin;
\.


--
-- Data for Name: especialidades; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.especialidades (id, nombre) FROM stdin;
1	Medicina General
2	Pediatría
3	Ginecología
4	Cardiología
5	Dermatología
6	Oftalmología
7	Otorrinolaringología
8	Neurología
9	Psiquiatría
10	Endocrinología
11	Gastroenterología
12	Nefrología
13	Urología
14	Traumatología
15	Radiología
16	Oncología
17	Hematología
18	Neumología
19	Rehabilitación
20	Cirugía General
\.


--
-- Data for Name: estados_citas; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.estados_citas (id, estado) FROM stdin;
1	Disponible
2	Ocupada
3	No Disponible
\.


--
-- Data for Name: examenes; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.examenes (id, nombre) FROM stdin;
1	Hemograma completo
2	Perfil lipídico
3	Glucosa en ayunas
4	Examen de orina completo
5	Radiografía de tórax
6	Electrocardiograma
7	Ecografía abdominal
8	Tomografía computarizada (TAC)
9	Resonancia magnética (RM)
10	Endoscopia digestiva
11	Colonoscopia
12	Mamografía
13	Densitometría ósea
14	Prueba de esfuerzo (ergometría)
15	Audiometría
16	Test de visión (agudeza visual)
17	Papanicolaou (citología cervical)
18	Cultivo de bacterias
19	Prueba de alergia
20	Biopsia
\.


--
-- Data for Name: historiales_medicos; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.historiales_medicos (id, paciente_id, peso, altura, enfermedades_base, procedimientos_realizados) FROM stdin;
\.


--
-- Data for Name: licencias_medicas; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.licencias_medicas (id, paciente_id, medico_id, fecha_emision, detalle) FROM stdin;
\.


--
-- Data for Name: medicos; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.medicos (id, usuario_id, nombre, apellido, especialidad_id) FROM stdin;
\.


--
-- Data for Name: pacientes; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.pacientes (id, usuario_id, nombre, apellido, fecha_nacimiento) FROM stdin;
1	1	Nombre del paciente	Apellido del paciente	1990-01-01
\.


--
-- Data for Name: recetas; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.recetas (id, paciente_id, medico_id, detalle, fecha) FROM stdin;
\.


--
-- Data for Name: resultados_examenes; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.resultados_examenes (id, paciente_id, examen_id, fecha, detalle, solicitud_id) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.roles (id, nombre) FROM stdin;
1	Doctor
2	Paciente
\.


--
-- Data for Name: solicitudes_examenes; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.solicitudes_examenes (id, medico_id, paciente_id, examen_id, fecha) FROM stdin;
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: myuser
--

COPY public.usuarios (id, rut, contrasena, rol_id, email, telefono) FROM stdin;
1	ejemploRut	$2b$10$krguKpTzvk/qSR3rxvT.eel62csSPF3/bMpe8HYsbgKOdYpjwatWu	2	ejemplo@correo.com	123456789
\.


--
-- Name: citas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.citas_id_seq', 1, false);


--
-- Name: disponibilidad_citas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.disponibilidad_citas_id_seq', 1, false);


--
-- Name: especialidades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.especialidades_id_seq', 20, true);


--
-- Name: estados_citas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.estados_citas_id_seq', 3, true);


--
-- Name: examenes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.examenes_id_seq', 20, true);


--
-- Name: historiales_medicos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.historiales_medicos_id_seq', 1, false);


--
-- Name: licencias_medicas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.licencias_medicas_id_seq', 1, false);


--
-- Name: medicos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.medicos_id_seq', 1, false);


--
-- Name: pacientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.pacientes_id_seq', 1, true);


--
-- Name: recetas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.recetas_id_seq', 1, false);


--
-- Name: resultados_examenes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.resultados_examenes_id_seq', 1, false);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.roles_id_seq', 2, true);


--
-- Name: solicitudes_examenes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.solicitudes_examenes_id_seq', 1, false);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: myuser
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, true);


--
-- Name: citas citas_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.citas
    ADD CONSTRAINT citas_pkey PRIMARY KEY (id);


--
-- Name: disponibilidad_citas disponibilidad_citas_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.disponibilidad_citas
    ADD CONSTRAINT disponibilidad_citas_pkey PRIMARY KEY (id);


--
-- Name: especialidades especialidades_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_pkey PRIMARY KEY (id);


--
-- Name: estados_citas estados_citas_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.estados_citas
    ADD CONSTRAINT estados_citas_pkey PRIMARY KEY (id);


--
-- Name: examenes examenes_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.examenes
    ADD CONSTRAINT examenes_pkey PRIMARY KEY (id);


--
-- Name: historiales_medicos historiales_medicos_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.historiales_medicos
    ADD CONSTRAINT historiales_medicos_pkey PRIMARY KEY (id);


--
-- Name: licencias_medicas licencias_medicas_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.licencias_medicas
    ADD CONSTRAINT licencias_medicas_pkey PRIMARY KEY (id);


--
-- Name: medicos medicos_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT medicos_pkey PRIMARY KEY (id);


--
-- Name: pacientes pacientes_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id);


--
-- Name: recetas recetas_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT recetas_pkey PRIMARY KEY (id);


--
-- Name: resultados_examenes resultados_examenes_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.resultados_examenes
    ADD CONSTRAINT resultados_examenes_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: solicitudes_examenes solicitudes_examenes_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.solicitudes_examenes
    ADD CONSTRAINT solicitudes_examenes_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: disponibilidad_citas disponibilidad_citas_estado_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.disponibilidad_citas
    ADD CONSTRAINT disponibilidad_citas_estado_id_fkey FOREIGN KEY (estado_id) REFERENCES public.estados_citas(id);


--
-- Name: citas fk_citas_disponibilidad_citas; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.citas
    ADD CONSTRAINT fk_citas_disponibilidad_citas FOREIGN KEY (disponibilidad_cita_id) REFERENCES public.disponibilidad_citas(id);


--
-- Name: citas fk_citas_medicos; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.citas
    ADD CONSTRAINT fk_citas_medicos FOREIGN KEY (medico_id) REFERENCES public.medicos(id);


--
-- Name: citas fk_citas_pacientes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.citas
    ADD CONSTRAINT fk_citas_pacientes FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);


--
-- Name: historiales_medicos fk_historiales_medicos_pacientes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.historiales_medicos
    ADD CONSTRAINT fk_historiales_medicos_pacientes FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);


--
-- Name: licencias_medicas fk_licencias_medicas_medicos; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.licencias_medicas
    ADD CONSTRAINT fk_licencias_medicas_medicos FOREIGN KEY (medico_id) REFERENCES public.medicos(id);


--
-- Name: licencias_medicas fk_licencias_medicas_pacientes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.licencias_medicas
    ADD CONSTRAINT fk_licencias_medicas_pacientes FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);


--
-- Name: medicos fk_medicos_especialidades; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT fk_medicos_especialidades FOREIGN KEY (especialidad_id) REFERENCES public.especialidades(id);


--
-- Name: medicos fk_medicos_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT fk_medicos_usuarios FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: pacientes fk_pacientes_usuarios; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT fk_pacientes_usuarios FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: recetas fk_recetas_medicos; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_medicos FOREIGN KEY (medico_id) REFERENCES public.medicos(id);


--
-- Name: recetas fk_recetas_pacientes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_pacientes FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);


--
-- Name: resultados_examenes fk_resultados_examenes_examenes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.resultados_examenes
    ADD CONSTRAINT fk_resultados_examenes_examenes FOREIGN KEY (examen_id) REFERENCES public.examenes(id);


--
-- Name: resultados_examenes fk_resultados_examenes_pacientes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.resultados_examenes
    ADD CONSTRAINT fk_resultados_examenes_pacientes FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);


--
-- Name: resultados_examenes fk_resultados_examenes_solicitudes_examenes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.resultados_examenes
    ADD CONSTRAINT fk_resultados_examenes_solicitudes_examenes FOREIGN KEY (solicitud_id) REFERENCES public.solicitudes_examenes(id);


--
-- Name: solicitudes_examenes fk_solicitudes_examenes_examenes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.solicitudes_examenes
    ADD CONSTRAINT fk_solicitudes_examenes_examenes FOREIGN KEY (examen_id) REFERENCES public.examenes(id);


--
-- Name: solicitudes_examenes fk_solicitudes_examenes_medicos; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.solicitudes_examenes
    ADD CONSTRAINT fk_solicitudes_examenes_medicos FOREIGN KEY (medico_id) REFERENCES public.medicos(id);


--
-- Name: solicitudes_examenes fk_solicitudes_examenes_pacientes; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.solicitudes_examenes
    ADD CONSTRAINT fk_solicitudes_examenes_pacientes FOREIGN KEY (paciente_id) REFERENCES public.pacientes(id);


--
-- Name: usuarios fk_usuarios_roles; Type: FK CONSTRAINT; Schema: public; Owner: myuser
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_usuarios_roles FOREIGN KEY (rol_id) REFERENCES public.roles(id);


--
-- PostgreSQL database dump complete
--

