--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: archivos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE archivos (
    id integer NOT NULL,
    ruta text NOT NULL,
    caracteristica text NOT NULL,
    id_proyectos integer
);


ALTER TABLE public.archivos OWNER TO postgres;

--
-- Name: archivos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE archivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.archivos_id_seq OWNER TO postgres;

--
-- Name: archivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE archivos_id_seq OWNED BY archivos.id;


--
-- Name: asociaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE asociaciones (
    id integer NOT NULL,
    nombre_asoc text NOT NULL,
    membresia text NOT NULL,
    inicio date NOT NULL,
    fin date NOT NULL,
    id_cv integer
);


ALTER TABLE public.asociaciones OWNER TO postgres;

--
-- Name: asociaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE asociaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asociaciones_id_seq OWNER TO postgres;

--
-- Name: asociaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE asociaciones_id_seq OWNED BY asociaciones.id;


--
-- Name: campos_extras; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE campos_extras (
    id integer NOT NULL,
    nombre_campo text NOT NULL,
    tipo_dato text NOT NULL,
    informacion_extra text NOT NULL,
    id_proyectos integer,
    id_rh integer,
    id_cv integer,
    id_instituciones integer,
    id_rol integer,
    id_rf integer
);


ALTER TABLE public.campos_extras OWNER TO postgres;

--
-- Name: campos_extras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE campos_extras_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campos_extras_id_seq OWNER TO postgres;

--
-- Name: campos_extras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE campos_extras_id_seq OWNED BY campos_extras.id;


--
-- Name: curriculum_vitae; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE curriculum_vitae (
    id integer NOT NULL,
    nombre text,
    programa_posgrado text,
    programa_licenciatura text,
    categoria_plaza text,
    fecha_nacimiento date,
    email text,
    nombre_lic text,
    institucion_lic text,
    periodo_lic text,
    fecha_titulacion_lic text,
    numero_cedula_lic text,
    nombre_esp text,
    institucion_esp text,
    periodo_esp text,
    fecha_titulacion_esp text,
    numero_cedula_esp text,
    nombre_maestria text,
    institucion_maestria text,
    periodo_maestria text,
    fecha_titulacion_maestria text,
    numero_cedula_maestria text,
    nombre_doctorado text,
    institucion_doctorado text,
    periodo_doctorado text,
    fecha_titulacion_doctorado text,
    numero_cedula_doctorado text,
    nombre_posdoctorado text,
    institucion_posdoctorado text,
    periodo_posdoctorado text,
    fecha_titulacion_posdoctorado text,
    numero_cedula_posdoctorado text,
    id_rh integer,
    id_proyectos integer
);


ALTER TABLE public.curriculum_vitae OWNER TO postgres;

--
-- Name: curriculum_vitae_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE curriculum_vitae_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curriculum_vitae_id_seq OWNER TO postgres;

--
-- Name: curriculum_vitae_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE curriculum_vitae_id_seq OWNED BY curriculum_vitae.id;


--
-- Name: experiencia_docente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE experiencia_docente (
    id integer NOT NULL,
    asignaturas_impartidas text,
    nivel integer,
    id_instituciones integer,
    institucion_alternativa text,
    inicio date NOT NULL,
    fin date NOT NULL,
    id_cv integer
);


ALTER TABLE public.experiencia_docente OWNER TO postgres;

--
-- Name: experiencia_docente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE experiencia_docente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.experiencia_docente_id_seq OWNER TO postgres;

--
-- Name: experiencia_docente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE experiencia_docente_id_seq OWNED BY experiencia_docente.id;


--
-- Name: experiencia_profesional; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE experiencia_profesional (
    id integer NOT NULL,
    puesto text NOT NULL,
    funciones text NOT NULL,
    id_instituciones integer,
    insti_empresa text,
    inicio date NOT NULL,
    fin date NOT NULL,
    id_cv integer
);


ALTER TABLE public.experiencia_profesional OWNER TO postgres;

--
-- Name: experiencia_profesional_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE experiencia_profesional_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.experiencia_profesional_id_seq OWNER TO postgres;

--
-- Name: experiencia_profesional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE experiencia_profesional_id_seq OWNED BY experiencia_profesional.id;


--
-- Name: instituciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instituciones (
    id integer NOT NULL,
    nombre text,
    clave text,
    direccion text,
    email text,
    infraestructura text,
    nombre_director text,
    email_director text,
    id_proyectos integer
);


ALTER TABLE public.instituciones OWNER TO postgres;

--
-- Name: instituciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instituciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instituciones_id_seq OWNER TO postgres;

--
-- Name: instituciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instituciones_id_seq OWNED BY instituciones.id;


--
-- Name: par_ponente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE par_ponente (
    id integer NOT NULL,
    nombre_event text NOT NULL,
    tipo_parti text NOT NULL,
    inicio date NOT NULL,
    fin date NOT NULL,
    id_cv integer
);


ALTER TABLE public.par_ponente OWNER TO postgres;

--
-- Name: par_ponente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE par_ponente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.par_ponente_id_seq OWNER TO postgres;

--
-- Name: par_ponente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE par_ponente_id_seq OWNED BY par_ponente.id;


--
-- Name: premios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE premios (
    id integer NOT NULL,
    premio_distincion text NOT NULL,
    otorgado_por text NOT NULL,
    inicio date NOT NULL,
    fin date NOT NULL,
    id_cv integer
);


ALTER TABLE public.premios OWNER TO postgres;

--
-- Name: premios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE premios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.premios_id_seq OWNER TO postgres;

--
-- Name: premios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE premios_id_seq OWNED BY premios.id;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE productos (
    id integer NOT NULL,
    nombre text NOT NULL,
    fi date NOT NULL,
    ff date,
    tipo text,
    id_proyectos integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_seq OWNER TO postgres;

--
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE productos_id_seq OWNED BY productos.id;


--
-- Name: proyectos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE proyectos (
    id integer NOT NULL,
    nombre text NOT NULL,
    nombre_lider_inv text,
    fecha_inicio date,
    fecha_termino date,
    disciplina text,
    protocolo text,
    viabilidad text,
    obj_general text,
    obj_especificos text,
    integrantes text,
    representante text,
    actividades text,
    tipo_investigacion text,
    fecha_elaboracion date,
    linea_invest text,
    area_invest text,
    meta text,
    cantidad_metas text,
    fecha_cumplimiento_metas date,
    observaciones text,
    resumen text,
    introduccion text,
    antecedentes text,
    marco_teorico text,
    impacto text,
    metodologia text,
    descripcion_problema text,
    justificacion text,
    hipotesis text,
    vinculacion_sector_productivo text,
    numero_registro text,
    nombre_programa_educativo text,
    cuerpo_academico text,
    nombre_cuerpo_academico text,
    materiales_suministros text,
    actividades_cuerpo_academico text,
    co_responsable text,
    modalidad_proyecto text,
    vigencia_nombramiento date,
    duracion_proyecto integer,
    descripcion_bienes text,
    productividad_academica text,
    servicios_generales text,
    contribucion_formacion_recursos text,
    referencias text
);


ALTER TABLE public.proyectos OWNER TO postgres;

--
-- Name: proyectos_dirigidos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE proyectos_dirigidos (
    id integer NOT NULL,
    linea_alt text NOT NULL,
    id_proyectos integer,
    nombre_proyectos text NOT NULL,
    monto double precision,
    fuente_finan text,
    inicio date NOT NULL,
    fin date NOT NULL,
    resultados text NOT NULL,
    id_cv integer
);


ALTER TABLE public.proyectos_dirigidos OWNER TO postgres;

--
-- Name: proyectos_dirigidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE proyectos_dirigidos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_dirigidos_id_seq OWNER TO postgres;

--
-- Name: proyectos_dirigidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE proyectos_dirigidos_id_seq OWNED BY proyectos_dirigidos.id;


--
-- Name: proyectos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE proyectos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proyectos_id_seq OWNER TO postgres;

--
-- Name: proyectos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE proyectos_id_seq OWNED BY proyectos.id;


--
-- Name: publicaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE publicaciones (
    id integer NOT NULL,
    linea_alt text NOT NULL,
    nombre_articulo text,
    titulo_revista text,
    inicio date NOT NULL,
    fin date NOT NULL,
    id_cv integer
);


ALTER TABLE public.publicaciones OWNER TO postgres;

--
-- Name: publicaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE publicaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publicaciones_id_seq OWNER TO postgres;

--
-- Name: publicaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE publicaciones_id_seq OWNED BY publicaciones.id;


--
-- Name: recursos_financieros; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE recursos_financieros (
    id integer NOT NULL,
    partida_solicitada integer,
    monto_solicitado double precision,
    monto_por_cuatrimestre double precision,
    monto_solicitado_dgest double precision,
    total double precision,
    monto_tec_participante double precision,
    apoyo_eco double precision,
    monto_institucion double precision,
    monto_otras_instituciones double precision,
    presupuesto double precision,
    id_instituciones integer,
    id_proyectos integer
);


ALTER TABLE public.recursos_financieros OWNER TO postgres;

--
-- Name: recursos_financieros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE recursos_financieros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recursos_financieros_id_seq OWNER TO postgres;

--
-- Name: recursos_financieros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE recursos_financieros_id_seq OWNED BY recursos_financieros.id;


--
-- Name: recursos_humanos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE recursos_humanos (
    id integer NOT NULL,
    nombre text NOT NULL,
    email text NOT NULL,
    fdn date,
    sexo boolean,
    nivel_sni text,
    grado_acad integer NOT NULL,
    fecha_ingreso date NOT NULL,
    fecha_salida date,
    ptc boolean DEFAULT false,
    perfil_promep boolean DEFAULT false,
    ptc_ptp text,
    grado_academico text,
    id_proyectos integer,
    telefono text,
    direccion text
);


ALTER TABLE public.recursos_humanos OWNER TO postgres;

--
-- Name: recursos_humanos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE recursos_humanos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recursos_humanos_id_seq OWNER TO postgres;

--
-- Name: recursos_humanos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE recursos_humanos_id_seq OWNED BY recursos_humanos.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE roles (
    id integer NOT NULL,
    id_rh integer,
    id_proyectos integer,
    docente_fi date,
    docente_ff date,
    colaborador_fi date,
    colaborador_ff date,
    tesista_fi date,
    tesista_ff date,
    residente_fi date,
    residente_ff date,
    servicio_fi date,
    servicio_ff date,
    creditos_fi date,
    creditos_ff date
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: tesis_dirigidas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tesis_dirigidas (
    id integer NOT NULL,
    nombre_alum text,
    institucion text,
    id_instituciones integer,
    programa text NOT NULL,
    inicio date NOT NULL,
    fin date NOT NULL,
    id_cv integer
);


ALTER TABLE public.tesis_dirigidas OWNER TO postgres;

--
-- Name: tesis_dirigidas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tesis_dirigidas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tesis_dirigidas_id_seq OWNER TO postgres;

--
-- Name: tesis_dirigidas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tesis_dirigidas_id_seq OWNED BY tesis_dirigidas.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    id integer NOT NULL,
    nombre text NOT NULL,
    usuario text NOT NULL,
    correo text NOT NULL,
    pass text NOT NULL,
    rol integer NOT NULL,
    foto_perfil text
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_id_seq OWNED BY usuarios.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY archivos ALTER COLUMN id SET DEFAULT nextval('archivos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asociaciones ALTER COLUMN id SET DEFAULT nextval('asociaciones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campos_extras ALTER COLUMN id SET DEFAULT nextval('campos_extras_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curriculum_vitae ALTER COLUMN id SET DEFAULT nextval('curriculum_vitae_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY experiencia_docente ALTER COLUMN id SET DEFAULT nextval('experiencia_docente_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY experiencia_profesional ALTER COLUMN id SET DEFAULT nextval('experiencia_profesional_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instituciones ALTER COLUMN id SET DEFAULT nextval('instituciones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY par_ponente ALTER COLUMN id SET DEFAULT nextval('par_ponente_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY premios ALTER COLUMN id SET DEFAULT nextval('premios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos ALTER COLUMN id SET DEFAULT nextval('productos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos ALTER COLUMN id SET DEFAULT nextval('proyectos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_dirigidos ALTER COLUMN id SET DEFAULT nextval('proyectos_dirigidos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicaciones ALTER COLUMN id SET DEFAULT nextval('publicaciones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recursos_financieros ALTER COLUMN id SET DEFAULT nextval('recursos_financieros_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recursos_humanos ALTER COLUMN id SET DEFAULT nextval('recursos_humanos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tesis_dirigidas ALTER COLUMN id SET DEFAULT nextval('tesis_dirigidas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq'::regclass);


--
-- Data for Name: archivos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY archivos (id, ruta, caracteristica, id_proyectos) FROM stdin;
\.


--
-- Name: archivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('archivos_id_seq', 1, false);


--
-- Data for Name: asociaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY asociaciones (id, nombre_asoc, membresia, inicio, fin, id_cv) FROM stdin;
\.


--
-- Name: asociaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('asociaciones_id_seq', 1, false);


--
-- Data for Name: campos_extras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY campos_extras (id, nombre_campo, tipo_dato, informacion_extra, id_proyectos, id_rh, id_cv, id_instituciones, id_rol, id_rf) FROM stdin;
\.


--
-- Name: campos_extras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('campos_extras_id_seq', 1, false);


--
-- Data for Name: curriculum_vitae; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY curriculum_vitae (id, nombre, programa_posgrado, programa_licenciatura, categoria_plaza, fecha_nacimiento, email, nombre_lic, institucion_lic, periodo_lic, fecha_titulacion_lic, numero_cedula_lic, nombre_esp, institucion_esp, periodo_esp, fecha_titulacion_esp, numero_cedula_esp, nombre_maestria, institucion_maestria, periodo_maestria, fecha_titulacion_maestria, numero_cedula_maestria, nombre_doctorado, institucion_doctorado, periodo_doctorado, fecha_titulacion_doctorado, numero_cedula_doctorado, nombre_posdoctorado, institucion_posdoctorado, periodo_posdoctorado, fecha_titulacion_posdoctorado, numero_cedula_posdoctorado, id_rh, id_proyectos) FROM stdin;
\.


--
-- Name: curriculum_vitae_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('curriculum_vitae_id_seq', 1, false);


--
-- Data for Name: experiencia_docente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY experiencia_docente (id, asignaturas_impartidas, nivel, id_instituciones, institucion_alternativa, inicio, fin, id_cv) FROM stdin;
\.


--
-- Name: experiencia_docente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('experiencia_docente_id_seq', 1, false);


--
-- Data for Name: experiencia_profesional; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY experiencia_profesional (id, puesto, funciones, id_instituciones, insti_empresa, inicio, fin, id_cv) FROM stdin;
\.


--
-- Name: experiencia_profesional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('experiencia_profesional_id_seq', 1, false);


--
-- Data for Name: instituciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instituciones (id, nombre, clave, direccion, email, infraestructura, nombre_director, email_director, id_proyectos) FROM stdin;
\.


--
-- Name: instituciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instituciones_id_seq', 1, false);


--
-- Data for Name: par_ponente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY par_ponente (id, nombre_event, tipo_parti, inicio, fin, id_cv) FROM stdin;
\.


--
-- Name: par_ponente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('par_ponente_id_seq', 1, false);


--
-- Data for Name: premios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY premios (id, premio_distincion, otorgado_por, inicio, fin, id_cv) FROM stdin;
\.


--
-- Name: premios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('premios_id_seq', 1, false);


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY productos (id, nombre, fi, ff, tipo, id_proyectos) FROM stdin;
\.


--
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_id_seq', 1, false);


--
-- Data for Name: proyectos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY proyectos (id, nombre, nombre_lider_inv, fecha_inicio, fecha_termino, disciplina, protocolo, viabilidad, obj_general, obj_especificos, integrantes, representante, actividades, tipo_investigacion, fecha_elaboracion, linea_invest, area_invest, meta, cantidad_metas, fecha_cumplimiento_metas, observaciones, resumen, introduccion, antecedentes, marco_teorico, impacto, metodologia, descripcion_problema, justificacion, hipotesis, vinculacion_sector_productivo, numero_registro, nombre_programa_educativo, cuerpo_academico, nombre_cuerpo_academico, materiales_suministros, actividades_cuerpo_academico, co_responsable, modalidad_proyecto, vigencia_nombramiento, duracion_proyecto, descripcion_bienes, productividad_academica, servicios_generales, contribucion_formacion_recursos, referencias) FROM stdin;
\.


--
-- Data for Name: proyectos_dirigidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY proyectos_dirigidos (id, linea_alt, id_proyectos, nombre_proyectos, monto, fuente_finan, inicio, fin, resultados, id_cv) FROM stdin;
\.


--
-- Name: proyectos_dirigidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proyectos_dirigidos_id_seq', 1, false);


--
-- Name: proyectos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proyectos_id_seq', 1, false);


--
-- Data for Name: publicaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY publicaciones (id, linea_alt, nombre_articulo, titulo_revista, inicio, fin, id_cv) FROM stdin;
\.


--
-- Name: publicaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('publicaciones_id_seq', 1, false);


--
-- Data for Name: recursos_financieros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY recursos_financieros (id, partida_solicitada, monto_solicitado, monto_por_cuatrimestre, monto_solicitado_dgest, total, monto_tec_participante, apoyo_eco, monto_institucion, monto_otras_instituciones, presupuesto, id_instituciones, id_proyectos) FROM stdin;
\.


--
-- Name: recursos_financieros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('recursos_financieros_id_seq', 1, false);


--
-- Data for Name: recursos_humanos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY recursos_humanos (id, nombre, email, fdn, sexo, nivel_sni, grado_acad, fecha_ingreso, fecha_salida, ptc, perfil_promep, ptc_ptp, grado_academico, id_proyectos, telefono, direccion) FROM stdin;
\.


--
-- Name: recursos_humanos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('recursos_humanos_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles (id, id_rh, id_proyectos, docente_fi, docente_ff, colaborador_fi, colaborador_ff, tesista_fi, tesista_ff, residente_fi, residente_ff, servicio_fi, servicio_ff, creditos_fi, creditos_ff) FROM stdin;
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_seq', 1, false);


--
-- Data for Name: tesis_dirigidas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tesis_dirigidas (id, nombre_alum, institucion, id_instituciones, programa, inicio, fin, id_cv) FROM stdin;
\.


--
-- Name: tesis_dirigidas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tesis_dirigidas_id_seq', 1, false);


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuarios (id, nombre, usuario, correo, pass, rol, foto_perfil) FROM stdin;
1	Gina Huerta	gina	yina_mha@hotmail.com	gina	1	\N
\.


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_seq', 2, true);


--
-- Name: archivos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY archivos
    ADD CONSTRAINT archivos_pkey PRIMARY KEY (id);


--
-- Name: asociaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY asociaciones
    ADD CONSTRAINT asociaciones_pkey PRIMARY KEY (id);


--
-- Name: campos_extras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY campos_extras
    ADD CONSTRAINT campos_extras_pkey PRIMARY KEY (id);


--
-- Name: curriculum_vitae_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY curriculum_vitae
    ADD CONSTRAINT curriculum_vitae_pkey PRIMARY KEY (id);


--
-- Name: experiencia_docente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY experiencia_docente
    ADD CONSTRAINT experiencia_docente_pkey PRIMARY KEY (id);


--
-- Name: experiencia_profesional_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY experiencia_profesional
    ADD CONSTRAINT experiencia_profesional_pkey PRIMARY KEY (id);


--
-- Name: instituciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instituciones
    ADD CONSTRAINT instituciones_pkey PRIMARY KEY (id);


--
-- Name: par_ponente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY par_ponente
    ADD CONSTRAINT par_ponente_pkey PRIMARY KEY (id);


--
-- Name: premios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY premios
    ADD CONSTRAINT premios_pkey PRIMARY KEY (id);


--
-- Name: productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- Name: proyectos_dirigidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY proyectos_dirigidos
    ADD CONSTRAINT proyectos_dirigidos_pkey PRIMARY KEY (id);


--
-- Name: proyectos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY proyectos
    ADD CONSTRAINT proyectos_pkey PRIMARY KEY (id);


--
-- Name: publicaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY publicaciones
    ADD CONSTRAINT publicaciones_pkey PRIMARY KEY (id);


--
-- Name: recursos_financieros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recursos_financieros
    ADD CONSTRAINT recursos_financieros_pkey PRIMARY KEY (id);


--
-- Name: recursos_humanos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY recursos_humanos
    ADD CONSTRAINT recursos_humanos_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: tesis_dirigidas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tesis_dirigidas
    ADD CONSTRAINT tesis_dirigidas_pkey PRIMARY KEY (id);


--
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: archivos_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY archivos
    ADD CONSTRAINT archivos_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: asociaciones_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asociaciones
    ADD CONSTRAINT asociaciones_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: campos_extras_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campos_extras
    ADD CONSTRAINT campos_extras_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: campos_extras_id_instituciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campos_extras
    ADD CONSTRAINT campos_extras_id_instituciones_fkey FOREIGN KEY (id_instituciones) REFERENCES instituciones(id);


--
-- Name: campos_extras_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campos_extras
    ADD CONSTRAINT campos_extras_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: campos_extras_id_rf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campos_extras
    ADD CONSTRAINT campos_extras_id_rf_fkey FOREIGN KEY (id_rf) REFERENCES recursos_financieros(id);


--
-- Name: campos_extras_id_rh_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campos_extras
    ADD CONSTRAINT campos_extras_id_rh_fkey FOREIGN KEY (id_rh) REFERENCES recursos_humanos(id);


--
-- Name: campos_extras_id_rol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY campos_extras
    ADD CONSTRAINT campos_extras_id_rol_fkey FOREIGN KEY (id_rol) REFERENCES roles(id);


--
-- Name: curriculum_vitae_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curriculum_vitae
    ADD CONSTRAINT curriculum_vitae_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: curriculum_vitae_id_rh_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY curriculum_vitae
    ADD CONSTRAINT curriculum_vitae_id_rh_fkey FOREIGN KEY (id_rh) REFERENCES recursos_humanos(id);


--
-- Name: experiencia_docente_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY experiencia_docente
    ADD CONSTRAINT experiencia_docente_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: experiencia_docente_id_instituciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY experiencia_docente
    ADD CONSTRAINT experiencia_docente_id_instituciones_fkey FOREIGN KEY (id_instituciones) REFERENCES instituciones(id);


--
-- Name: experiencia_profesional_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY experiencia_profesional
    ADD CONSTRAINT experiencia_profesional_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: experiencia_profesional_id_instituciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY experiencia_profesional
    ADD CONSTRAINT experiencia_profesional_id_instituciones_fkey FOREIGN KEY (id_instituciones) REFERENCES instituciones(id);


--
-- Name: instituciones_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instituciones
    ADD CONSTRAINT instituciones_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: par_ponente_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY par_ponente
    ADD CONSTRAINT par_ponente_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: premios_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY premios
    ADD CONSTRAINT premios_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: productos_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: proyectos_dirigidos_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proyectos_dirigidos
    ADD CONSTRAINT proyectos_dirigidos_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: publicaciones_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY publicaciones
    ADD CONSTRAINT publicaciones_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: recursos_financieros_id_instituciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recursos_financieros
    ADD CONSTRAINT recursos_financieros_id_instituciones_fkey FOREIGN KEY (id_instituciones) REFERENCES instituciones(id);


--
-- Name: recursos_financieros_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recursos_financieros
    ADD CONSTRAINT recursos_financieros_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: recursos_humanos_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recursos_humanos
    ADD CONSTRAINT recursos_humanos_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: roles_id_proyectos_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_id_proyectos_fkey FOREIGN KEY (id_proyectos) REFERENCES proyectos(id);


--
-- Name: roles_id_rh_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_id_rh_fkey FOREIGN KEY (id_rh) REFERENCES recursos_humanos(id);


--
-- Name: tesis_dirigidas_id_cv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tesis_dirigidas
    ADD CONSTRAINT tesis_dirigidas_id_cv_fkey FOREIGN KEY (id_cv) REFERENCES curriculum_vitae(id);


--
-- Name: tesis_dirigidas_id_instituciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tesis_dirigidas
    ADD CONSTRAINT tesis_dirigidas_id_instituciones_fkey FOREIGN KEY (id_instituciones) REFERENCES instituciones(id);


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

