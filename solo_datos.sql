--
-- PostgreSQL database dump
--

\restrict xvCKsRCc5p8pKcBHGiZsYJcT1EbqQumruAPvMhRNVX6ngsVN09d3X3j1LJ7mw94

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

--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.categoria VALUES (4, 'Carritos');
INSERT INTO public.categoria VALUES (5, 'Desayunos');
INSERT INTO public.categoria VALUES (6, 'Tablas de quesos');
INSERT INTO public.categoria VALUES (7, 'Pasteles');
INSERT INTO public.categoria VALUES (8, 'Postres variados');
INSERT INTO public.categoria VALUES (9, 'Candy bar');


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.cliente VALUES (1, 'rubii', 'cardenas', '8441079955');
INSERT INTO public.cliente VALUES (3, 'Carlos', 'Gonz lez', '8445672222');
INSERT INTO public.cliente VALUES (4, 'Mar¡a', 'Rodr¡guez', '8446783333');
INSERT INTO public.cliente VALUES (5, 'Jos‚', 'L¢pez', '8444444444');
INSERT INTO public.cliente VALUES (6, 'Laura', 'Fern ndez', '8445555555');
INSERT INTO public.cliente VALUES (2, 'Ana', 'Martínez', '8443898528');
INSERT INTO public.cliente VALUES (7, 'Sofia', 'Villarreal', '8611283292');
INSERT INTO public.cliente VALUES (8, 'Sofia', 'Villarreal', '8611283292');


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.proveedor VALUES (6, 'Harina', 'Calle 1 #123', '8441234567');
INSERT INTO public.proveedor VALUES (7, 'L cteos', 'Calle 2 #456', '8440987654');
INSERT INTO public.proveedor VALUES (8, 'Reposter¡a', 'Calle 3 #789', '8447743685');
INSERT INTO public.proveedor VALUES (9, 'Chocolates', 'Calle 4 #321', '8442274995');
INSERT INTO public.proveedor VALUES (10, 'Frutas', 'Calle 5 #45', '84493411375');


--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.compra VALUES (1, 6, '2026-04-01 10:30:00', 1250.00, false);
INSERT INTO public.compra VALUES (2, 7, '2026-04-05 11:45:00', 890.00, false);
INSERT INTO public.compra VALUES (3, 8, '2026-04-10 09:15:00', 1520.00, false);
INSERT INTO public.compra VALUES (4, 6, '2026-04-12 14:20:00', 2100.00, false);
INSERT INTO public.compra VALUES (5, 9, '2026-04-13 12:00:00', 650.00, false);
INSERT INTO public.compra VALUES (6, 10, '2026-04-14 08:30:00', 450.00, false);


--
-- Data for Name: direccion; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.direccion VALUES (1, 1, 'Dirección de rubii cardenas');
INSERT INTO public.direccion VALUES (2, 2, 'AV');
INSERT INTO public.direccion VALUES (3, 5, 'reynosa #535');
INSERT INTO public.direccion VALUES (4, 7, 'Reynosa #147');
INSERT INTO public.direccion VALUES (5, 3, 'ttt');
INSERT INTO public.direccion VALUES (6, 6, 'reynosa');


--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.estado VALUES (2, 'Pendiente');
INSERT INTO public.estado VALUES (5, 'Entregado');
INSERT INTO public.estado VALUES (6, 'Cancelado');
INSERT INTO public.estado VALUES (3, 'En proceso');


--
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.pedidos VALUES (3, 1, 5, 1, '2026-04-15 06:00:00', '2026-04-15 02:30:00.189', 'qqqq', true, 504.00, 504.00, false);
INSERT INTO public.pedidos VALUES (5, 2, 5, 2, '2026-04-24 06:00:00', '2026-04-15 03:05:10.546', 'jjj', true, 120.00, 120.00, false);
INSERT INTO public.pedidos VALUES (4, 1, 2, 1, '2026-04-15 00:00:00', '2026-04-12 07:17:29.941', 's', false, 504.00, 504.00, false);
INSERT INTO public.pedidos VALUES (1, 1, 3, 1, '2026-04-15 06:00:00', '2026-04-12 07:24:19.8', 'qqqq', true, 507.97, 508.00, false);
INSERT INTO public.pedidos VALUES (2, 1, 6, 1, '2026-04-15 06:00:00', '2026-04-15 03:02:58.914', 'qqqq', true, 504.00, 504.00, false);
INSERT INTO public.pedidos VALUES (9, 3, 2, 5, '2026-04-18 00:00:00', '2026-04-15 17:10:45.444', '', true, 220.00, 220.00, false);
INSERT INTO public.pedidos VALUES (11, 4, 2, 7, '2026-04-30 00:00:00', '2026-04-15 17:18:34.272', 'Sin chocolate', true, 220.00, 220.00, false);
INSERT INTO public.pedidos VALUES (8, 3, 5, 5, '2026-04-18 06:00:00', '2026-04-15 19:52:53.213', '', true, 220.00, 220.00, false);
INSERT INTO public.pedidos VALUES (14, 5, 2, 3, '2026-04-23 00:00:00', '2026-04-15 20:18:39.119', 'ee', true, 220.00, 220.00, false);
INSERT INTO public.pedidos VALUES (15, 6, 2, 6, '2026-04-29 00:00:00', '2026-04-15 20:21:04.712', 'comentario', true, 220.00, 220.00, false);
INSERT INTO public.pedidos VALUES (16, 2, 2, 2, '2026-04-29 00:00:00', '2026-04-22 19:29:40.483', 'hola', true, 22.00, 22.00, false);


--
-- Data for Name: receta; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.receta VALUES (3, 'Masa básica');
INSERT INTO public.receta VALUES (6, 'Pastel 3 leches');
INSERT INTO public.receta VALUES (7, 'Pastel de Vainilla');
INSERT INTO public.receta VALUES (8, 'Pastel de Chocolate');
INSERT INTO public.receta VALUES (9, 'Galletas de Mantequilla');
INSERT INTO public.receta VALUES (10, 'Pan Blanco');
INSERT INTO public.receta VALUES (11, 'Brownies');
INSERT INTO public.receta VALUES (12, 'Pastel Red Velvet');
INSERT INTO public.receta VALUES (13, 'Galletas de Vainilla');
INSERT INTO public.receta VALUES (14, 'Galletas de Chocolate');
INSERT INTO public.receta VALUES (15, 'Galletas Red Velvet');
INSERT INTO public.receta VALUES (16, 'Hotcakes');


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.producto VALUES (15, 7, 12, 'Pastel Red Velvet (12 porciones)', 420.00, 'productos/5eab49ff21c54a9fa9d1d0eb7aca0fb9.webp', true);
INSERT INTO public.producto VALUES (17, 9, 14, 'Galletas de Chocolate (12 piezas)', 85.00, 'productos/d313a6d248f9444e9a0560a166815d18.webp', true);
INSERT INTO public.producto VALUES (16, 9, 13, 'Galletas de Vainilla (12 piezas)', 85.00, 'productos/27c36cbfd00a4c929863695993f1927f.webp', true);
INSERT INTO public.producto VALUES (18, 9, 15, 'Galletas Red Velvet (12 piezas)', 95.00, 'productos/a24b42f91f1849b19c42caafbed29961.webp', true);
INSERT INTO public.producto VALUES (19, 5, 16, 'Hotcakes (4 piezas)', 120.00, 'productos/dac2aa4905184ae881be6025aaf9b56f.webp', true);
INSERT INTO public.producto VALUES (20, 5, 16, 'Hotcakes (8 piezas)', 220.00, 'productos/3bcfd3433f9845cdaf5bac2346e7861b.webp', true);
INSERT INTO public.producto VALUES (14, 7, 12, 'Pastel Red Velvet (6 porciones)', 220.00, 'productos/c86305fcb6264039a006599ba1458cea.webp', true);
INSERT INTO public.producto VALUES (21, 7, 3, 'harina de trigot', 22.00, 'productos/fcd13771e6ef499884234b8f0ef1d7f2.webp', true);
INSERT INTO public.producto VALUES (22, 7, 3, 'harina de trigot', 22.00, 'productos/c3818151f46d400ab296a09a4052c1c7.webp', true);


--
-- Data for Name: cotizacion; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.cotizacion VALUES (1, 14, 1, 0.00, 0.00, 2);
INSERT INTO public.cotizacion VALUES (1, 16, 1, 0.00, 0.00, 2);
INSERT INTO public.cotizacion VALUES (2, 15, 1, 0.00, 0.00, 3);
INSERT INTO public.cotizacion VALUES (3, 17, 1, 0.00, 0.00, 5);
INSERT INTO public.cotizacion VALUES (3, 18, 1, 0.00, 0.00, 5);
INSERT INTO public.cotizacion VALUES (4, 19, 2, 0.00, 50.00, 6);
INSERT INTO public.cotizacion VALUES (4, 20, 1, 0.00, 50.00, 6);


--
-- Data for Name: estado_pago; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.estado_pago VALUES (1, 'Pendiente');
INSERT INTO public.estado_pago VALUES (2, 'Pagado');
INSERT INTO public.estado_pago VALUES (3, 'Rechazado');


--
-- Data for Name: unidad_medida; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.unidad_medida VALUES (4, 'Kilogramo', 'kg');
INSERT INTO public.unidad_medida VALUES (5, 'Gramo', 'g');
INSERT INTO public.unidad_medida VALUES (6, 'Litro', 'L');
INSERT INTO public.unidad_medida VALUES (7, 'Mililitro', 'mL');
INSERT INTO public.unidad_medida VALUES (8, 'Unidad', 'ud');


--
-- Data for Name: materia_prima; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.materia_prima VALUES (20, 4, 'Harina de trigo', 25.50, 50.00, 500.00, 200.00, 'harina.jpg', true);
INSERT INTO public.materia_prima VALUES (21, 5, 'Az£car', 18.00, 40.00, 400.00, 150.00, 'azucar.jpg', true);
INSERT INTO public.materia_prima VALUES (22, 5, 'Mantequilla', 45.00, 30.00, 300.00, 80.00, 'mantequilla.jpg', true);
INSERT INTO public.materia_prima VALUES (23, 7, 'Huevos', 3.50, 100.00, 1000.00, 500.00, 'huevos.jpg', true);
INSERT INTO public.materia_prima VALUES (24, 6, 'Leche', 22.00, 40.00, 400.00, 120.00, 'leche.jpg', true);
INSERT INTO public.materia_prima VALUES (25, 5, 'Cacao en polvo', 65.00, 20.00, 200.00, 45.00, 'cacao.jpg', true);
INSERT INTO public.materia_prima VALUES (26, 5, 'Polvo de hornear', 12.00, 10.00, 100.00, 30.00, 'polvo.jpg', true);
INSERT INTO public.materia_prima VALUES (27, 7, 'Vainilla', 85.00, 5.00, 50.00, 15.00, 'vainilla.jpg', true);
INSERT INTO public.materia_prima VALUES (28, 4, 'harina de trigo', 50.00, 3.00, 30.00, 0.00, '', true);


--
-- Data for Name: materia_prima_compra; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.materia_prima_compra VALUES (20, 1, 50.00);
INSERT INTO public.materia_prima_compra VALUES (21, 1, 30.00);
INSERT INTO public.materia_prima_compra VALUES (22, 2, 20.00);
INSERT INTO public.materia_prima_compra VALUES (23, 2, 100.00);
INSERT INTO public.materia_prima_compra VALUES (24, 2, 40.00);
INSERT INTO public.materia_prima_compra VALUES (25, 3, 15.00);
INSERT INTO public.materia_prima_compra VALUES (26, 3, 25.00);
INSERT INTO public.materia_prima_compra VALUES (27, 3, 5.00);
INSERT INTO public.materia_prima_compra VALUES (20, 4, 80.00);
INSERT INTO public.materia_prima_compra VALUES (21, 4, 40.00);
INSERT INTO public.materia_prima_compra VALUES (25, 5, 8.00);
INSERT INTO public.materia_prima_compra VALUES (23, 6, 50.00);


--
-- Data for Name: tipo_pago; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.tipo_pago VALUES (1, 'Efectivo');
INSERT INTO public.tipo_pago VALUES (2, 'Transferencia');
INSERT INTO public.tipo_pago VALUES (3, 'Tarjeta');


--
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.pago VALUES (1, 1, 2, 1, false, 508.00, '2026-04-12 10:30:00');
INSERT INTO public.pago VALUES (2, 2, 2, 2, false, 504.00, '2026-04-12 11:00:00');
INSERT INTO public.pago VALUES (3, 3, 1, 3, true, 250.00, '2026-04-12 09:15:00');
INSERT INTO public.pago VALUES (4, 4, 2, 1, false, 508.00, '2026-04-12 14:20:00');


--
-- Data for Name: receta_materia_prima; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.receta_materia_prima VALUES (12, 20, 0.50);
INSERT INTO public.receta_materia_prima VALUES (12, 21, 0.40);
INSERT INTO public.receta_materia_prima VALUES (12, 22, 0.25);
INSERT INTO public.receta_materia_prima VALUES (12, 23, 3.00);
INSERT INTO public.receta_materia_prima VALUES (12, 24, 0.25);
INSERT INTO public.receta_materia_prima VALUES (12, 27, 0.01);
INSERT INTO public.receta_materia_prima VALUES (12, 25, 0.05);
INSERT INTO public.receta_materia_prima VALUES (13, 20, 0.30);
INSERT INTO public.receta_materia_prima VALUES (13, 21, 0.15);
INSERT INTO public.receta_materia_prima VALUES (13, 22, 0.18);
INSERT INTO public.receta_materia_prima VALUES (13, 23, 1.00);
INSERT INTO public.receta_materia_prima VALUES (13, 27, 0.01);
INSERT INTO public.receta_materia_prima VALUES (14, 20, 0.30);
INSERT INTO public.receta_materia_prima VALUES (14, 21, 0.16);
INSERT INTO public.receta_materia_prima VALUES (14, 22, 0.18);
INSERT INTO public.receta_materia_prima VALUES (14, 23, 1.00);
INSERT INTO public.receta_materia_prima VALUES (14, 25, 0.04);
INSERT INTO public.receta_materia_prima VALUES (15, 20, 0.30);
INSERT INTO public.receta_materia_prima VALUES (15, 21, 0.16);
INSERT INTO public.receta_materia_prima VALUES (15, 22, 0.18);
INSERT INTO public.receta_materia_prima VALUES (15, 23, 1.00);
INSERT INTO public.receta_materia_prima VALUES (15, 25, 0.02);
INSERT INTO public.receta_materia_prima VALUES (15, 27, 0.01);
INSERT INTO public.receta_materia_prima VALUES (16, 20, 0.40);
INSERT INTO public.receta_materia_prima VALUES (16, 21, 0.20);
INSERT INTO public.receta_materia_prima VALUES (16, 22, 0.10);
INSERT INTO public.receta_materia_prima VALUES (16, 23, 2.00);
INSERT INTO public.receta_materia_prima VALUES (16, 24, 0.30);
INSERT INTO public.receta_materia_prima VALUES (16, 26, 0.01);
INSERT INTO public.receta_materia_prima VALUES (16, 27, 0.01);


--
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.rol VALUES (1, 'admin');
INSERT INTO public.rol VALUES (2, 'dueña');
INSERT INTO public.rol VALUES (3, 'repartidor');


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.usuario VALUES (1, 1, 'fer', '$2b$12$91pSHyQYBDbddQl/bdOWeOO9fxrWaWCvMNi6N2tQ142L1jnSgEw8O');
INSERT INTO public.usuario VALUES (2, 1, 'gabi', '$2b$12$vXQ3Zqy4Ag/Ry.9hEK1TpuVjng0HX5lGoDa/1/p79v/TmmW6dBwtq');
INSERT INTO public.usuario VALUES (5, 1, 'rubi', '$2b$12$z1vAniv9K2gnPgNh5LmMYu9Ql3594Mje8EmYLGdiBFf/J213C7T3C');
INSERT INTO public.usuario VALUES (7, 1, 'mariaaa', '$2b$12$EZ.oVgQgbRgaWhE9GwMnU.bgtetqIVPzT3l3.aVPmIyjWNnLU8SKm');
INSERT INTO public.usuario VALUES (3, 1, 'devalle', '$2b$12$S/of1xT3vV.zQpt1KqJyP.BcVjIlZlS2ucZ049lMrF093JQKDUrK2');
INSERT INTO public.usuario VALUES (4, 1, 'sofi', '$2b$12$7fZcbyWtBhs.h620aqGIgekjBl9Nrh36cF1RV.2XgFFaVG3W.IPGy');
INSERT INTO public.usuario VALUES (8, 1, 'dddd', '$2b$12$aTyWgzstdN4gjM456GBq4uHSEsy74Lp5DTTyWSVerlXOaJ74.F/gS');


--
-- Data for Name: usuario_has_pedidos; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.usuario_has_pedidos VALUES (1, 1);
INSERT INTO public.usuario_has_pedidos VALUES (2, 2);
INSERT INTO public.usuario_has_pedidos VALUES (3, 3);
INSERT INTO public.usuario_has_pedidos VALUES (2, 4);


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
-- PostgreSQL database dump complete
--

\unrestrict xvCKsRCc5p8pKcBHGiZsYJcT1EbqQumruAPvMhRNVX6ngsVN09d3X3j1LJ7mw94

