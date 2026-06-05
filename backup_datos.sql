--
-- PostgreSQL database dump
--

\restrict nOEsCyuNVcPB20uXNHwroMkoznWlub5Apa4wd2RkLzPiV6PkjX1KeErOW72U5TU

-- Dumped from database version 15.18 (Debian 15.18-1.pgdg13+1)
-- Dumped by pg_dump version 15.18 (Debian 15.18-1.pgdg13+1)

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
-- Name: categoria; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE public.categoria OWNER TO admin;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_categoria_seq OWNER TO admin;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(100),
    apellido character varying(100),
    telefono character varying(20)
);


ALTER TABLE public.cliente OWNER TO admin;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_cliente_seq OWNER TO admin;

--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- Name: compra; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.compra (
    id_compra integer NOT NULL,
    id_proveedor integer,
    fecha timestamp without time zone,
    total numeric(10,2),
    efectuada boolean DEFAULT false
);


ALTER TABLE public.compra OWNER TO admin;

--
-- Name: compra_id_compra_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.compra_id_compra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compra_id_compra_seq OWNER TO admin;

--
-- Name: compra_id_compra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.compra_id_compra_seq OWNED BY public.compra.id_compra;


--
-- Name: cotizacion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.cotizacion (
    id_pedido integer NOT NULL,
    id_producto integer NOT NULL,
    cantidad integer,
    precio_disenio numeric(10,2),
    precio_envio numeric(10,2),
    id_estado integer
);


ALTER TABLE public.cotizacion OWNER TO admin;

--
-- Name: direccion; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.direccion (
    id_direccion integer NOT NULL,
    id_cliente integer,
    descripcion character varying(200)
);


ALTER TABLE public.direccion OWNER TO admin;

--
-- Name: direccion_id_direccion_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.direccion_id_direccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.direccion_id_direccion_seq OWNER TO admin;

--
-- Name: direccion_id_direccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.direccion_id_direccion_seq OWNED BY public.direccion.id_direccion;


--
-- Name: estado; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.estado (
    id_estado integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE public.estado OWNER TO admin;

--
-- Name: estado_id_estado_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.estado_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_id_estado_seq OWNER TO admin;

--
-- Name: estado_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.estado_id_estado_seq OWNED BY public.estado.id_estado;


--
-- Name: estado_pago; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.estado_pago (
    id_estado_pago integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE public.estado_pago OWNER TO admin;

--
-- Name: estado_pago_id_estado_pago_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.estado_pago_id_estado_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estado_pago_id_estado_pago_seq OWNER TO admin;

--
-- Name: estado_pago_id_estado_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.estado_pago_id_estado_pago_seq OWNED BY public.estado_pago.id_estado_pago;


--
-- Name: materia_prima; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.materia_prima (
    id_materia integer NOT NULL,
    id_unidad integer,
    descripcion character varying(100),
    precio_unitario numeric(10,2),
    minimo numeric(10,2),
    maximo numeric(10,2),
    stock_actual numeric(10,2),
    imagen character varying(255),
    activo boolean
);


ALTER TABLE public.materia_prima OWNER TO admin;

--
-- Name: materia_prima_compra; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.materia_prima_compra (
    id_materia integer NOT NULL,
    id_compra integer NOT NULL,
    cantidad numeric(10,2)
);


ALTER TABLE public.materia_prima_compra OWNER TO admin;

--
-- Name: materia_prima_id_materia_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.materia_prima_id_materia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materia_prima_id_materia_seq OWNER TO admin;

--
-- Name: materia_prima_id_materia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.materia_prima_id_materia_seq OWNED BY public.materia_prima.id_materia;


--
-- Name: pago; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    id_pedido integer,
    id_estado_pago integer,
    id_tipo_pago integer,
    anticipo boolean,
    monto numeric(10,2),
    fecha timestamp without time zone
);


ALTER TABLE public.pago OWNER TO admin;

--
-- Name: pago_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pago_id_pago_seq OWNER TO admin;

--
-- Name: pago_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;


--
-- Name: pedidos; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.pedidos (
    id_pedido integer NOT NULL,
    id_direccion integer,
    id_estado integer,
    id_cliente integer,
    fecha_entrega timestamp without time zone,
    fecha_pedido timestamp without time zone,
    comentario character varying(255),
    tipo_entrega boolean,
    subtotal numeric(10,2),
    total numeric(10,2),
    efectuada boolean DEFAULT false
);


ALTER TABLE public.pedidos OWNER TO admin;

--
-- Name: pedidos_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.pedidos_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pedidos_id_pedido_seq OWNER TO admin;

--
-- Name: pedidos_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.pedidos_id_pedido_seq OWNED BY public.pedidos.id_pedido;


--
-- Name: producto; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.producto (
    id_producto integer NOT NULL,
    id_categoria integer,
    id_receta integer,
    descripcion character varying(100),
    precio_unitario numeric(10,2),
    imagen character varying(255),
    activo boolean
);


ALTER TABLE public.producto OWNER TO admin;

--
-- Name: producto_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.producto_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producto_id_producto_seq OWNER TO admin;

--
-- Name: producto_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.producto_id_producto_seq OWNED BY public.producto.id_producto;


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    descripcion character varying(100),
    direccion character varying(200),
    contacto character varying(100)
);


ALTER TABLE public.proveedor OWNER TO admin;

--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.proveedor_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedor_id_proveedor_seq OWNER TO admin;

--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNED BY public.proveedor.id_proveedor;


--
-- Name: receta; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.receta (
    id_receta integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE public.receta OWNER TO admin;

--
-- Name: receta_id_receta_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.receta_id_receta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.receta_id_receta_seq OWNER TO admin;

--
-- Name: receta_id_receta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.receta_id_receta_seq OWNED BY public.receta.id_receta;


--
-- Name: receta_materia_prima; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.receta_materia_prima (
    id_receta integer NOT NULL,
    id_materia integer NOT NULL,
    cantidad numeric(10,2)
);


ALTER TABLE public.receta_materia_prima OWNER TO admin;

--
-- Name: rol; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE public.rol OWNER TO admin;

--
-- Name: rol_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rol_id_rol_seq OWNER TO admin;

--
-- Name: rol_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;


--
-- Name: tipo_pago; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.tipo_pago (
    id_tipo_pago integer NOT NULL,
    descripcion character varying(100)
);


ALTER TABLE public.tipo_pago OWNER TO admin;

--
-- Name: tipo_pago_id_tipo_pago_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.tipo_pago_id_tipo_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_pago_id_tipo_pago_seq OWNER TO admin;

--
-- Name: tipo_pago_id_tipo_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.tipo_pago_id_tipo_pago_seq OWNED BY public.tipo_pago.id_tipo_pago;


--
-- Name: unidad_medida; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.unidad_medida (
    id_unidad integer NOT NULL,
    descripcion character varying(100),
    abreviatura character varying(10)
);


ALTER TABLE public.unidad_medida OWNER TO admin;

--
-- Name: unidad_medida_id_unidad_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.unidad_medida_id_unidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unidad_medida_id_unidad_seq OWNER TO admin;

--
-- Name: unidad_medida_id_unidad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.unidad_medida_id_unidad_seq OWNED BY public.unidad_medida.id_unidad;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    id_rol integer,
    nombre character varying(100),
    contrasena_hash text NOT NULL
);


ALTER TABLE public.usuario OWNER TO admin;

--
-- Name: usuario_has_pedidos; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.usuario_has_pedidos (
    id_usuario integer NOT NULL,
    id_pedido integer NOT NULL
);


ALTER TABLE public.usuario_has_pedidos OWNER TO admin;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_usuario_seq OWNER TO admin;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- Name: compra id_compra; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.compra ALTER COLUMN id_compra SET DEFAULT nextval('public.compra_id_compra_seq'::regclass);


--
-- Name: direccion id_direccion; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.direccion ALTER COLUMN id_direccion SET DEFAULT nextval('public.direccion_id_direccion_seq'::regclass);


--
-- Name: estado id_estado; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.estado ALTER COLUMN id_estado SET DEFAULT nextval('public.estado_id_estado_seq'::regclass);


--
-- Name: estado_pago id_estado_pago; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.estado_pago ALTER COLUMN id_estado_pago SET DEFAULT nextval('public.estado_pago_id_estado_pago_seq'::regclass);


--
-- Name: materia_prima id_materia; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.materia_prima ALTER COLUMN id_materia SET DEFAULT nextval('public.materia_prima_id_materia_seq'::regclass);


--
-- Name: pago id_pago; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);


--
-- Name: pedidos id_pedido; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedidos_id_pedido_seq'::regclass);


--
-- Name: producto id_producto; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.producto ALTER COLUMN id_producto SET DEFAULT nextval('public.producto_id_producto_seq'::regclass);


--
-- Name: proveedor id_proveedor; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedor_id_proveedor_seq'::regclass);


--
-- Name: receta id_receta; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.receta ALTER COLUMN id_receta SET DEFAULT nextval('public.receta_id_receta_seq'::regclass);


--
-- Name: rol id_rol; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);


--
-- Name: tipo_pago id_tipo_pago; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tipo_pago ALTER COLUMN id_tipo_pago SET DEFAULT nextval('public.tipo_pago_id_tipo_pago_seq'::regclass);


--
-- Name: unidad_medida id_unidad; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.unidad_medida ALTER COLUMN id_unidad SET DEFAULT nextval('public.unidad_medida_id_unidad_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.categoria (id_categoria, descripcion) FROM stdin;
4	Carritos
5	Desayunos
6	Tablas de quesos
7	Pasteles
8	Postres variados
9	Candy bar
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.cliente (id_cliente, nombre, apellido, telefono) FROM stdin;
1	rubii	cardenas	8441079955
3	Carlos	Gonz lez	8445672222
4	Mar¡a	Rodr¡guez	8446783333
5	Jos‚	L¢pez	8444444444
6	Laura	Fern ndez	8445555555
2	Ana	Martínez	8443898528
7	Sofia	Villarreal	8611283292
8	Sofia	Villarreal	8611283292
\.


--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.compra (id_compra, id_proveedor, fecha, total, efectuada) FROM stdin;
1	6	2026-04-01 10:30:00	1250.00	f
2	7	2026-04-05 11:45:00	890.00	f
3	8	2026-04-10 09:15:00	1520.00	f
4	6	2026-04-12 14:20:00	2100.00	f
5	9	2026-04-13 12:00:00	650.00	f
6	10	2026-04-14 08:30:00	450.00	f
\.


--
-- Data for Name: cotizacion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.cotizacion (id_pedido, id_producto, cantidad, precio_disenio, precio_envio, id_estado) FROM stdin;
1	14	1	0.00	0.00	2
1	16	1	0.00	0.00	2
2	15	1	0.00	0.00	3
3	17	1	0.00	0.00	5
3	18	1	0.00	0.00	5
4	19	2	0.00	50.00	6
4	20	1	0.00	50.00	6
\.


--
-- Data for Name: direccion; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.direccion (id_direccion, id_cliente, descripcion) FROM stdin;
1	1	Dirección de rubii cardenas
2	2	AV
3	5	reynosa #535
4	7	Reynosa #147
5	3	ttt
6	6	reynosa
\.


--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.estado (id_estado, descripcion) FROM stdin;
2	Pendiente
5	Entregado
6	Cancelado
3	En proceso
\.


--
-- Data for Name: estado_pago; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.estado_pago (id_estado_pago, descripcion) FROM stdin;
1	Pendiente
2	Pagado
3	Rechazado
\.


--
-- Data for Name: materia_prima; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.materia_prima (id_materia, id_unidad, descripcion, precio_unitario, minimo, maximo, stock_actual, imagen, activo) FROM stdin;
20	4	Harina de trigo	25.50	50.00	500.00	200.00	harina.jpg	t
21	5	Az£car	18.00	40.00	400.00	150.00	azucar.jpg	t
22	5	Mantequilla	45.00	30.00	300.00	80.00	mantequilla.jpg	t
23	7	Huevos	3.50	100.00	1000.00	500.00	huevos.jpg	t
24	6	Leche	22.00	40.00	400.00	120.00	leche.jpg	t
25	5	Cacao en polvo	65.00	20.00	200.00	45.00	cacao.jpg	t
26	5	Polvo de hornear	12.00	10.00	100.00	30.00	polvo.jpg	t
27	7	Vainilla	85.00	5.00	50.00	15.00	vainilla.jpg	t
28	4	harina de trigo	50.00	3.00	30.00	0.00		t
\.


--
-- Data for Name: materia_prima_compra; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.materia_prima_compra (id_materia, id_compra, cantidad) FROM stdin;
20	1	50.00
21	1	30.00
22	2	20.00
23	2	100.00
24	2	40.00
25	3	15.00
26	3	25.00
27	3	5.00
20	4	80.00
21	4	40.00
25	5	8.00
23	6	50.00
\.


--
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.pago (id_pago, id_pedido, id_estado_pago, id_tipo_pago, anticipo, monto, fecha) FROM stdin;
1	1	2	1	f	508.00	2026-04-12 10:30:00
2	2	2	2	f	504.00	2026-04-12 11:00:00
3	3	1	3	t	250.00	2026-04-12 09:15:00
4	4	2	1	f	508.00	2026-04-12 14:20:00
\.


--
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.pedidos (id_pedido, id_direccion, id_estado, id_cliente, fecha_entrega, fecha_pedido, comentario, tipo_entrega, subtotal, total, efectuada) FROM stdin;
3	1	5	1	2026-04-15 06:00:00	2026-04-15 02:30:00.189	qqqq	t	504.00	504.00	f
5	2	5	2	2026-04-24 06:00:00	2026-04-15 03:05:10.546	jjj	t	120.00	120.00	f
4	1	2	1	2026-04-15 00:00:00	2026-04-12 07:17:29.941	s	f	504.00	504.00	f
1	1	3	1	2026-04-15 06:00:00	2026-04-12 07:24:19.8	qqqq	t	507.97	508.00	f
2	1	6	1	2026-04-15 06:00:00	2026-04-15 03:02:58.914	qqqq	t	504.00	504.00	f
9	3	2	5	2026-04-18 00:00:00	2026-04-15 17:10:45.444		t	220.00	220.00	f
11	4	2	7	2026-04-30 00:00:00	2026-04-15 17:18:34.272	Sin chocolate	t	220.00	220.00	f
8	3	5	5	2026-04-18 06:00:00	2026-04-15 19:52:53.213		t	220.00	220.00	f
14	5	2	3	2026-04-23 00:00:00	2026-04-15 20:18:39.119	ee	t	220.00	220.00	f
15	6	2	6	2026-04-29 00:00:00	2026-04-15 20:21:04.712	comentario	t	220.00	220.00	f
16	2	2	2	2026-04-29 00:00:00	2026-04-22 19:29:40.483	hola	t	22.00	22.00	f
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.producto (id_producto, id_categoria, id_receta, descripcion, precio_unitario, imagen, activo) FROM stdin;
15	7	12	Pastel Red Velvet (12 porciones)	420.00	productos/5eab49ff21c54a9fa9d1d0eb7aca0fb9.webp	t
17	9	14	Galletas de Chocolate (12 piezas)	85.00	productos/d313a6d248f9444e9a0560a166815d18.webp	t
16	9	13	Galletas de Vainilla (12 piezas)	85.00	productos/27c36cbfd00a4c929863695993f1927f.webp	t
18	9	15	Galletas Red Velvet (12 piezas)	95.00	productos/a24b42f91f1849b19c42caafbed29961.webp	t
19	5	16	Hotcakes (4 piezas)	120.00	productos/dac2aa4905184ae881be6025aaf9b56f.webp	t
20	5	16	Hotcakes (8 piezas)	220.00	productos/3bcfd3433f9845cdaf5bac2346e7861b.webp	t
14	7	12	Pastel Red Velvet (6 porciones)	220.00	productos/c86305fcb6264039a006599ba1458cea.webp	t
21	7	3	harina de trigot	22.00	productos/fcd13771e6ef499884234b8f0ef1d7f2.webp	t
22	7	3	harina de trigot	22.00	productos/c3818151f46d400ab296a09a4052c1c7.webp	t
\.


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.proveedor (id_proveedor, descripcion, direccion, contacto) FROM stdin;
6	Harina	Calle 1 #123	8441234567
7	L cteos	Calle 2 #456	8440987654
8	Reposter¡a	Calle 3 #789	8447743685
9	Chocolates	Calle 4 #321	8442274995
10	Frutas	Calle 5 #45	84493411375
\.


--
-- Data for Name: receta; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.receta (id_receta, descripcion) FROM stdin;
3	Masa básica
6	Pastel 3 leches
7	Pastel de Vainilla
8	Pastel de Chocolate
9	Galletas de Mantequilla
10	Pan Blanco
11	Brownies
12	Pastel Red Velvet
13	Galletas de Vainilla
14	Galletas de Chocolate
15	Galletas Red Velvet
16	Hotcakes
\.


--
-- Data for Name: receta_materia_prima; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.receta_materia_prima (id_receta, id_materia, cantidad) FROM stdin;
12	20	0.50
12	21	0.40
12	22	0.25
12	23	3.00
12	24	0.25
12	27	0.01
12	25	0.05
13	20	0.30
13	21	0.15
13	22	0.18
13	23	1.00
13	27	0.01
14	20	0.30
14	21	0.16
14	22	0.18
14	23	1.00
14	25	0.04
15	20	0.30
15	21	0.16
15	22	0.18
15	23	1.00
15	25	0.02
15	27	0.01
16	20	0.40
16	21	0.20
16	22	0.10
16	23	2.00
16	24	0.30
16	26	0.01
16	27	0.01
\.


--
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.rol (id_rol, descripcion) FROM stdin;
1	admin
2	dueña
3	repartidor
\.


--
-- Data for Name: tipo_pago; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.tipo_pago (id_tipo_pago, descripcion) FROM stdin;
1	Efectivo
2	Transferencia
3	Tarjeta
\.


--
-- Data for Name: unidad_medida; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.unidad_medida (id_unidad, descripcion, abreviatura) FROM stdin;
4	Kilogramo	kg
5	Gramo	g
6	Litro	L
7	Mililitro	mL
8	Unidad	ud
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.usuario (id_usuario, id_rol, nombre, contrasena_hash) FROM stdin;
1	1	fer	$2b$12$91pSHyQYBDbddQl/bdOWeOO9fxrWaWCvMNi6N2tQ142L1jnSgEw8O
2	1	gabi	$2b$12$vXQ3Zqy4Ag/Ry.9hEK1TpuVjng0HX5lGoDa/1/p79v/TmmW6dBwtq
5	1	rubi	$2b$12$z1vAniv9K2gnPgNh5LmMYu9Ql3594Mje8EmYLGdiBFf/J213C7T3C
7	1	mariaaa	$2b$12$EZ.oVgQgbRgaWhE9GwMnU.bgtetqIVPzT3l3.aVPmIyjWNnLU8SKm
3	1	devalle	$2b$12$S/of1xT3vV.zQpt1KqJyP.BcVjIlZlS2ucZ049lMrF093JQKDUrK2
4	1	sofi	$2b$12$7fZcbyWtBhs.h620aqGIgekjBl9Nrh36cF1RV.2XgFFaVG3W.IPGy
8	1	dddd	$2b$12$aTyWgzstdN4gjM456GBq4uHSEsy74Lp5DTTyWSVerlXOaJ74.F/gS
\.


--
-- Data for Name: usuario_has_pedidos; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.usuario_has_pedidos (id_usuario, id_pedido) FROM stdin;
1	1
2	2
3	3
2	4
\.


--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 9, true);


--
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 8, true);


--
-- Name: compra_id_compra_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.compra_id_compra_seq', 6, true);


--
-- Name: direccion_id_direccion_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.direccion_id_direccion_seq', 6, true);


--
-- Name: estado_id_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.estado_id_estado_seq', 6, true);


--
-- Name: estado_pago_id_estado_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.estado_pago_id_estado_pago_seq', 3, true);


--
-- Name: materia_prima_id_materia_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.materia_prima_id_materia_seq', 28, true);


--
-- Name: pago_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.pago_id_pago_seq', 4, true);


--
-- Name: pedidos_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.pedidos_id_pedido_seq', 16, true);


--
-- Name: producto_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.producto_id_producto_seq', 22, true);


--
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.proveedor_id_proveedor_seq', 10, true);


--
-- Name: receta_id_receta_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.receta_id_receta_seq', 17, true);


--
-- Name: rol_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.rol_id_rol_seq', 3, true);


--
-- Name: tipo_pago_id_tipo_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.tipo_pago_id_tipo_pago_seq', 3, true);


--
-- Name: unidad_medida_id_unidad_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.unidad_medida_id_unidad_seq', 8, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 8, true);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- Name: compra compra_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id_compra);


--
-- Name: direccion direccion_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_pkey PRIMARY KEY (id_direccion);


--
-- Name: estado_pago estado_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.estado_pago
    ADD CONSTRAINT estado_pago_pkey PRIMARY KEY (id_estado_pago);


--
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);


--
-- Name: materia_prima_compra materia_prima_compra_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.materia_prima_compra
    ADD CONSTRAINT materia_prima_compra_pkey PRIMARY KEY (id_materia, id_compra);


--
-- Name: materia_prima materia_prima_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.materia_prima
    ADD CONSTRAINT materia_prima_pkey PRIMARY KEY (id_materia);


--
-- Name: pago pago_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);


--
-- Name: cotizacion pedidos_has_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cotizacion
    ADD CONSTRAINT pedidos_has_producto_pkey PRIMARY KEY (id_pedido, id_producto);


--
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id_pedido);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id_producto);


--
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);


--
-- Name: receta_materia_prima receta_materia_prima_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.receta_materia_prima
    ADD CONSTRAINT receta_materia_prima_pkey PRIMARY KEY (id_receta, id_materia);


--
-- Name: receta receta_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT receta_pkey PRIMARY KEY (id_receta);


--
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);


--
-- Name: tipo_pago tipo_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.tipo_pago
    ADD CONSTRAINT tipo_pago_pkey PRIMARY KEY (id_tipo_pago);


--
-- Name: unidad_medida unidad_medida_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.unidad_medida
    ADD CONSTRAINT unidad_medida_pkey PRIMARY KEY (id_unidad);


--
-- Name: usuario_has_pedidos usuario_has_pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuario_has_pedidos
    ADD CONSTRAINT usuario_has_pedidos_pkey PRIMARY KEY (id_usuario, id_pedido);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: compra compra_id_proveedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);


--
-- Name: direccion direccion_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.direccion
    ADD CONSTRAINT direccion_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: cotizacion fk_cotizacion_estado; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cotizacion
    ADD CONSTRAINT fk_cotizacion_estado FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);


--
-- Name: materia_prima_compra materia_prima_compra_id_compra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.materia_prima_compra
    ADD CONSTRAINT materia_prima_compra_id_compra_fkey FOREIGN KEY (id_compra) REFERENCES public.compra(id_compra);


--
-- Name: materia_prima_compra materia_prima_compra_id_materia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.materia_prima_compra
    ADD CONSTRAINT materia_prima_compra_id_materia_fkey FOREIGN KEY (id_materia) REFERENCES public.materia_prima(id_materia);


--
-- Name: materia_prima materia_prima_id_unidad_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.materia_prima
    ADD CONSTRAINT materia_prima_id_unidad_fkey FOREIGN KEY (id_unidad) REFERENCES public.unidad_medida(id_unidad);


--
-- Name: pago pago_id_estado_pago_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_id_estado_pago_fkey FOREIGN KEY (id_estado_pago) REFERENCES public.estado_pago(id_estado_pago);


--
-- Name: pago pago_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido);


--
-- Name: pago pago_id_tipo_pago_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_id_tipo_pago_fkey FOREIGN KEY (id_tipo_pago) REFERENCES public.tipo_pago(id_tipo_pago);


--
-- Name: cotizacion pedidos_has_producto_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cotizacion
    ADD CONSTRAINT pedidos_has_producto_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido);


--
-- Name: cotizacion pedidos_has_producto_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.cotizacion
    ADD CONSTRAINT pedidos_has_producto_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.producto(id_producto);


--
-- Name: pedidos pedidos_id_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- Name: pedidos pedidos_id_direccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_direccion_fkey FOREIGN KEY (id_direccion) REFERENCES public.direccion(id_direccion);


--
-- Name: pedidos pedidos_id_estado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_estado_fkey FOREIGN KEY (id_estado) REFERENCES public.estado(id_estado);


--
-- Name: producto producto_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);


--
-- Name: producto producto_id_receta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_id_receta_fkey FOREIGN KEY (id_receta) REFERENCES public.receta(id_receta);


--
-- Name: receta_materia_prima receta_materia_prima_id_materia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.receta_materia_prima
    ADD CONSTRAINT receta_materia_prima_id_materia_fkey FOREIGN KEY (id_materia) REFERENCES public.materia_prima(id_materia);


--
-- Name: receta_materia_prima receta_materia_prima_id_receta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.receta_materia_prima
    ADD CONSTRAINT receta_materia_prima_id_receta_fkey FOREIGN KEY (id_receta) REFERENCES public.receta(id_receta);


--
-- Name: usuario_has_pedidos usuario_has_pedidos_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuario_has_pedidos
    ADD CONSTRAINT usuario_has_pedidos_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id_pedido);


--
-- Name: usuario_has_pedidos usuario_has_pedidos_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.usuario_has_pedidos
    ADD CONSTRAINT usuario_has_pedidos_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- PostgreSQL database dump complete
--

\unrestrict nOEsCyuNVcPB20uXNHwroMkoznWlub5Apa4wd2RkLzPiV6PkjX1KeErOW72U5TU

