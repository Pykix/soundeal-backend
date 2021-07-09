--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: soundealdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE soundealdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE soundealdb OWNER TO postgres;

\connect soundealdb

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
-- Name: instrument_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instrument_type (
    id integer NOT NULL,
    type character varying,
    picture character varying
);


ALTER TABLE public.instrument_type OWNER TO postgres;

--
-- Name: instrument_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrument_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instrument_type_id_seq OWNER TO postgres;

--
-- Name: instrument_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrument_type_id_seq OWNED BY public.instrument_type.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id integer NOT NULL,
    title character varying NOT NULL,
    description character varying,
    state character varying,
    price integer NOT NULL,
    age integer,
    user_id integer,
    type_id integer,
    picture character varying
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying,
    password character varying,
    email character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: instrument_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_type ALTER COLUMN id SET DEFAULT nextval('public.instrument_type_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: instrument_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instrument_type (id, type, picture) FROM stdin;
8	micro	static/categories/micro.jpg
6	violon	static/categories/violon.jpg
4	guitare	static/categories/guitare.jpg
2	flute	static/categories/flute.jpg
10	piano	static/categories/piano.jpg
5	platine	static/categories/turntable.jpg
1	batterie	static/categories/batterie.jpg
9	saxo	static/categories/saxo.jpg
7	trompette	static/categories/trompette.jpg
3	electrique	static/categories/guitare-elec.jpg
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, title, description, state, price, age, user_id, type_id, picture) FROM stdin;
1	Subin	id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui	in	1721	76	8	10	\N
2	Y-find	aliquam quis turpis eget elit sodales	erat	4079	443	3	9	\N
3	Rank	nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique	mi	6219	253	8	8	\N
4	Zoolab	pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus	interdum	937	486	9	9	\N
5	Voyatouch	lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate	mauris	4641	198	3	3	\N
6	Tin	vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing	vel	3315	356	5	9	\N
7	Prodder	amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu	auctor	9947	188	10	5	\N
8	Transcof	est quam pharetra magna ac consequat metus	quis	9511	327	10	2	\N
9	Subin	orci mauris lacinia sapien quis libero nullam sit amet turpis elementum	ac	6998	131	7	4	\N
10	Tampflex	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat	massa	8983	17	4	9	\N
11	Lotlux	vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio	quam	7857	366	10	4	\N
12	Temp	lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante	placerat	5495	366	5	8	\N
13	Home Ing	lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed	vivamus	6372	168	9	5	\N
14	Zamit	at feugiat non pretium quis lectus suspendisse	etiam	1607	277	1	4	\N
15	Voltsillam	ante ipsum primis in faucibus orci luctus	molestie	5834	191	2	8	\N
16	Cardify	sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc	suspendisse	9728	81	9	4	\N
17	Y-find	nam ultrices libero non mattis	lorem	4101	360	8	2	\N
18	Bitwolf	donec ut dolor morbi vel lectus in quam fringilla rhoncus	duis	2615	215	8	2	\N
19	Kanlam	tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet	justo	7397	162	5	6	\N
20	Konklux	cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices	consectetuer	8825	76	6	4	\N
21	Domainer	amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui	felis	2006	373	5	1	\N
22	Stringtough	auctor sed tristique in tempus sit amet sem	velit	3866	313	5	1	\N
23	Namfix	vulputate elementum nullam varius nulla facilisi cras non velit nec nisi	phasellus	9742	14	9	7	\N
24	Trippledex	ut at dolor quis odio consequat varius	ornare	5525	13	1	10	\N
25	Fixflex	elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices	erat	5755	103	7	4	\N
26	Trippledex	non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui	sit	4236	188	3	4	\N
27	Prodder	turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut	integer	245	312	4	4	\N
28	Stringtough	interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	eget	3042	201	10	1	\N
29	Temp	in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum	natoque	5837	62	9	3	\N
30	Tresom	sit amet diam in magna bibendum imperdiet nullam orci	id	603	239	4	6	\N
31	Bigtax	sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus	in	6186	241	9	3	\N
32	Cardify	pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in	dapibus	6825	429	9	6	\N
33	Mat Lam Tam	imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue	platea	734	123	2	4	\N
34	Keylex	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in	et	3386	266	9	3	\N
35	Flowdesk	nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet	eleifend	3968	496	8	6	\N
36	Voyatouch	nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	quis	261	162	2	3	\N
37	Sonair	at feugiat non pretium quis lectus suspendisse potenti in eleifend quam	morbi	6823	176	3	9	\N
38	Lotlux	velit nec nisi vulputate nonummy maecenas tincidunt	id	7307	97	7	7	\N
39	Y-Solowarm	at dolor quis odio consequat	luctus	4097	282	9	7	\N
40	Holdlamis	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget	a	6731	472	1	1	\N
41	Gembucket	maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus	primis	7114	202	1	6	\N
42	Daltfresh	ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit	eget	1592	70	2	9	\N
43	Job	donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante	volutpat	6758	197	4	2	\N
44	Y-find	cras in purus eu magna vulputate luctus cum sociis natoque penatibus et	sociis	2843	239	8	10	\N
128	Kanlam	ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis	varius	8016	378	10	2	\N
45	Zaam-Dox	posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non	donec	5743	62	10	7	\N
46	Sub-Ex	integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec	ipsum	1415	108	5	3	\N
47	Greenlam	elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin	nulla	562	83	9	6	\N
48	Greenlam	dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse	ante	5948	89	5	8	\N
49	It	purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam	donec	5582	200	2	10	\N
50	Greenlam	et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam	nibh	34	383	7	5	\N
51	Ventosanzap	mattis egestas metus aenean fermentum donec ut mauris eget massa	elit	5899	322	6	9	\N
52	Konklux	leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed	molestie	6577	480	3	5	\N
53	Redhold	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus	aliquam	5416	185	4	1	\N
54	Konklab	ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui	id	2825	130	2	2	\N
55	Latlux	sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget	morbi	2873	341	9	5	\N
56	Flowdesk	nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra	sapien	8669	244	4	6	\N
57	Sub-Ex	platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id	lacinia	6695	17	9	3	\N
58	Stim	vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet	tempus	1170	310	10	2	\N
59	Keylex	in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet	eget	8749	170	6	8	\N
60	Alpha	in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum	nullam	1061	411	2	4	\N
61	Sonair	mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur	nulla	1891	500	9	5	\N
62	Rank	tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque	id	5188	423	8	9	\N
63	Sub-Ex	vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet	ornare	1852	236	2	10	\N
64	Hatity	aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit	platea	3323	479	9	7	\N
65	Zathin	lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla	tincidunt	9882	155	3	8	\N
66	Lotlux	magna vestibulum aliquet ultrices erat tortor	nisl	2305	54	5	9	\N
67	Span	quis odio consequat varius integer ac leo	nam	7641	357	7	7	\N
68	Duobam	ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec	sapien	6190	255	7	2	\N
69	Matsoft	nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie	ut	1525	43	5	7	\N
70	Sub-Ex	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit	ultrices	7189	479	5	5	\N
71	Span	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec	lorem	8119	444	8	8	\N
72	Tampflex	luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer	quam	6051	180	2	4	\N
73	Stronghold	fermentum justo nec condimentum neque sapien placerat	eu	649	184	9	7	\N
74	Prodder	consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit	luctus	2654	211	10	2	\N
75	Tempsoft	purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum	sed	5375	191	9	8	\N
76	Sonsing	pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse	et	7981	85	2	6	\N
77	Opela	habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla	integer	4274	23	5	1	\N
78	Stringtough	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non	molestie	8589	343	9	9	\N
79	Holdlamis	pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea	ante	751	96	10	1	\N
80	Span	eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem	nisl	904	147	9	4	\N
81	Prodder	semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus	penatibus	9083	432	7	7	\N
82	Konklux	lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at	vestibulum	3701	450	2	8	\N
83	Kanlam	sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien	non	5650	317	4	7	\N
84	Lotstring	turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium	maecenas	7830	262	4	3	\N
598	Prodder	suscipit ligula in lacus curabitur at ipsum ac tellus	molestie	8887	131	10	8	\N
85	Opela	mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin	eget	6796	211	1	8	\N
86	Konklab	orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam	platea	8125	172	8	4	\N
87	Tampflex	faucibus cursus urna ut tellus nulla ut erat id	aliquet	7251	416	3	3	\N
88	Sub-Ex	eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat	sapien	7796	200	10	3	\N
89	Otcom	lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper	quam	6904	95	3	7	\N
90	Alpha	in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi	vivamus	3106	436	1	9	\N
91	Trippledex	primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo	ante	3122	282	6	5	\N
92	Fixflex	augue a suscipit nulla elit ac nulla sed vel enim sit amet	diam	3245	120	3	5	\N
93	Sonair	sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero	quisque	234	289	8	6	\N
94	Keylex	consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim	mi	7950	352	9	3	\N
95	Tampflex	sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed	eros	7783	484	2	5	\N
96	Cardify	nibh in quis justo maecenas rhoncus aliquam lacus morbi	vel	220	220	10	8	\N
97	Treeflex	ante nulla justo aliquam quis turpis eget elit sodales	dapibus	8777	238	4	10	\N
98	Sub-Ex	justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget	vestibulum	2785	287	3	2	\N
99	Kanlam	dolor morbi vel lectus in	nulla	5876	274	10	10	\N
100	Wrapsafe	sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis	gravida	6196	464	10	3	\N
101	Redhold	pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum	dui	3185	366	5	9	\N
102	Asoka	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis	vestibulum	6907	163	3	3	\N
103	Tempsoft	felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius	morbi	9255	467	8	10	\N
104	Solarbreeze	nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue	iaculis	9886	468	4	3	\N
105	Konklab	libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet	hac	3521	12	5	3	\N
106	Voltsillam	pellentesque ultrices phasellus id sapien	lorem	9292	255	10	9	\N
107	Viva	auctor gravida sem praesent id massa id nisl venenatis lacinia	non	8395	56	3	7	\N
108	Alpha	lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget	erat	7098	76	4	6	\N
109	Sonair	pede libero quis orci nullam	leo	8685	60	3	10	\N
110	Prodder	ut volutpat sapien arcu sed augue aliquam	volutpat	45	422	2	10	\N
111	Keylex	rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam	auctor	7947	224	1	8	\N
112	Zathin	eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc	ut	2405	26	1	4	\N
113	Stim	nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum	nulla	8256	226	8	5	\N
114	Bigtax	a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat	libero	9741	343	1	8	\N
115	Toughjoyfax	donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet	ligula	3740	196	1	7	\N
116	Cardify	elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio	erat	3220	381	6	5	\N
117	Quo Lux	ante vivamus tortor duis mattis egestas metus aenean fermentum	duis	1061	286	8	2	\N
118	Zamit	maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla	a	2252	426	4	5	\N
119	Stringtough	nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy	condimentum	9650	146	5	10	\N
120	Stim	vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl	nec	1108	463	8	7	\N
121	Regrant	in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan	lobortis	1529	15	7	9	\N
122	Vagram	sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean	tristique	1545	93	2	5	\N
123	Subin	dui vel nisl duis ac nibh fusce	dolor	1572	215	7	3	\N
124	Tempsoft	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt	odio	1608	319	8	2	\N
125	Mat Lam Tam	nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris	vestibulum	7548	53	5	8	\N
126	Sonair	molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus	integer	5749	354	3	1	\N
127	Trippledex	lobortis sapien sapien non mi integer ac neque duis bibendum morbi	sociis	1061	111	4	2	\N
129	Sonair	convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis	cum	336	40	10	2	\N
130	Aerified	nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est	interdum	1080	484	5	7	\N
131	Span	augue aliquam erat volutpat in congue etiam justo etiam pretium	elit	7853	87	8	4	\N
132	Regrant	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa	duis	6816	141	1	4	\N
133	Lotstring	etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate	orci	3254	178	5	2	\N
134	Regrant	volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id	in	6265	500	7	4	\N
135	Matsoft	enim sit amet nunc viverra dapibus	mi	3216	466	2	7	\N
136	Holdlamis	lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu	elit	4144	26	3	1	\N
137	Bamity	faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet	tortor	4027	179	3	9	\N
138	Span	accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis	tortor	206	219	3	9	\N
139	Aerified	nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce	est	3687	277	10	9	\N
140	Bytecard	eu massa donec dapibus duis at velit eu est	sem	507	320	7	7	\N
141	Asoka	eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar	montes	3695	41	6	3	\N
142	Solarbreeze	diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in	sit	2976	402	2	8	\N
143	Gembucket	non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi	in	9150	34	4	3	\N
144	Overhold	justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit	vulputate	7788	274	4	7	\N
145	Y-find	vestibulum rutrum rutrum neque aenean auctor gravida sem	odio	1949	108	10	2	\N
146	Toughjoyfax	sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet	cursus	528	345	4	2	\N
147	Bitchip	pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend	quam	9122	158	1	9	\N
148	Daltfresh	nibh fusce lacus purus aliquet	curabitur	9575	127	5	6	\N
149	Redhold	sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus	pharetra	4810	151	9	5	\N
150	Mat Lam Tam	pede morbi porttitor lorem id ligula suspendisse ornare	mi	7242	110	10	2	\N
151	Viva	posuere nonummy integer non velit donec diam	a	4173	429	5	9	\N
152	Sonsing	ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue	tellus	4600	277	3	1	\N
153	Konklux	sagittis nam congue risus semper porta	leo	1405	62	4	6	\N
154	Flowdesk	porta volutpat erat quisque erat eros viverra eget	justo	5104	160	4	7	\N
155	Temp	quis turpis eget elit sodales scelerisque mauris sit amet	odio	638	107	9	6	\N
156	Zaam-Dox	cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam	congue	4575	403	5	7	\N
157	Job	consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque	natoque	4759	134	10	4	\N
158	Fintone	eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices	convallis	569	262	9	10	\N
159	Holdlamis	primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus	sociis	6732	51	2	10	\N
160	Asoka	ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero	vestibulum	3407	26	7	4	\N
161	Andalax	in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet	sapien	1689	251	10	3	\N
162	Konklux	eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis	lectus	5197	220	9	2	\N
163	Bigtax	nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus	lectus	9040	48	9	9	\N
164	Namfix	laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem	dui	3542	90	8	7	\N
165	Zamit	porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non	pede	7210	212	9	2	\N
166	Bitchip	quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum	ante	4623	240	8	8	\N
167	Quo Lux	rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin	turpis	3517	301	1	6	\N
168	Lotstring	tempor convallis nulla neque libero convallis eget eleifend luctus	justo	1931	440	5	2	\N
169	Lotlux	at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum	non	6174	313	1	7	\N
170	Sub-Ex	penatibus et magnis dis parturient montes nascetur	in	2405	389	5	3	\N
171	Zontrax	aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed	libero	598	104	3	8	\N
172	Zathin	nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac	nulla	1198	378	5	7	\N
173	Vagram	vulputate vitae nisl aenean lectus pellentesque eget	posuere	652	497	8	2	\N
174	Voltsillam	est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc	nibh	2848	329	6	8	\N
175	Konklux	vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	lobortis	9714	75	4	6	\N
176	Biodex	sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique	venenatis	2082	255	10	4	\N
177	Redhold	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat	luctus	2065	351	5	3	\N
178	Flexidy	scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis	eget	9902	492	1	6	\N
179	Tin	nec nisi volutpat eleifend donec ut dolor morbi vel lectus in	nulla	5624	356	8	8	\N
180	Veribet	morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus	leo	745	94	1	10	\N
181	Matsoft	odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet	sit	8603	44	5	5	\N
182	Matsoft	tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo	rhoncus	2435	301	4	6	\N
183	Tresom	mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla	tincidunt	7339	352	2	6	\N
184	Voltsillam	eu sapien cursus vestibulum proin eu mi nulla ac enim in	nec	1489	474	6	8	\N
185	Quo Lux	orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor	pellentesque	9611	476	8	3	\N
186	Y-Solowarm	sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in	sed	4412	438	9	9	\N
187	Zaam-Dox	tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis	convallis	4204	419	6	3	\N
188	Domainer	eu orci mauris lacinia sapien quis libero nullam sit amet	leo	128	111	1	1	\N
189	Tresom	metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices	vivamus	6013	65	1	1	\N
190	Viva	feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa	integer	4665	388	6	10	\N
191	Zaam-Dox	volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam	suspendisse	9640	182	3	7	\N
192	Span	nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus	eget	9451	423	1	1	\N
193	Home Ing	nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac	orci	842	372	1	1	\N
194	Stringtough	rutrum neque aenean auctor gravida sem praesent	justo	3964	184	3	8	\N
195	Kanlam	vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus	urna	2531	232	8	4	\N
196	Bytecard	tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla	nec	1479	244	7	7	\N
197	Bigtax	quis lectus suspendisse potenti in eleifend quam	in	6911	139	4	9	\N
198	Domainer	eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio	orci	2154	151	6	6	\N
199	Tin	ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non	donec	8495	304	6	3	\N
200	Tresom	in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis	volutpat	6524	264	4	6	\N
201	Fintone	aliquet massa id lobortis convallis tortor	nisl	5649	143	7	2	\N
202	Solarbreeze	vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu	quam	5077	446	7	6	\N
203	Fintone	nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum	ut	1872	73	2	1	\N
204	Alphazap	justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales	nibh	7048	477	4	9	\N
205	Quo Lux	odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est	iaculis	8433	59	9	4	\N
206	Sonsing	in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae	nullam	2522	78	9	10	\N
207	Transcof	rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas	molestie	1733	379	2	10	\N
208	Asoka	lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper	accumsan	5316	251	5	5	\N
209	Aerified	viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna	sapien	8430	469	1	4	\N
210	Transcof	sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui	integer	9481	381	10	3	\N
211	Tampflex	mi nulla ac enim in tempor	mauris	8060	170	7	1	\N
212	Flowdesk	facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque	libero	6843	4	10	9	\N
213	Alphazap	augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia	nullam	929	443	3	10	\N
214	Konklux	nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget	potenti	1827	226	7	9	\N
215	Asoka	donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc	sit	1088	218	2	6	\N
216	Span	ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing	vel	6115	103	7	7	\N
217	Ventosanzap	odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede	maecenas	5095	423	5	8	\N
218	Bitchip	iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales	ante	8582	483	5	7	\N
219	Biodex	odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac	adipiscing	4647	220	1	9	\N
220	Latlux	lacinia sapien quis libero nullam sit amet turpis elementum ligula	id	8693	268	3	2	\N
221	Viva	in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis	integer	6959	174	5	8	\N
222	Latlux	justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien	ante	3103	28	1	2	\N
223	Andalax	ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis	duis	3879	117	3	6	\N
224	Zaam-Dox	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo	odio	1432	278	5	10	\N
225	Transcof	sed accumsan felis ut at dolor quis odio consequat	sed	2399	25	9	2	\N
226	Tresom	tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy	quam	1846	347	6	10	\N
227	Stronghold	tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum	viverra	8504	60	3	8	\N
228	Zontrax	in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis	id	2885	17	4	4	\N
229	Overhold	erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a	at	7946	497	1	6	\N
230	Konklux	convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante	integer	6897	212	1	2	\N
231	Bitchip	non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel	nec	4476	343	1	10	\N
232	Bitchip	turpis elementum ligula vehicula consequat morbi a	aliquam	1987	127	1	1	\N
233	Lotlux	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est	venenatis	4042	9	6	9	\N
234	Bamity	duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui	suspendisse	112	184	10	5	\N
235	Wrapsafe	phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac	vel	9786	164	8	6	\N
236	Sub-Ex	nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis	vitae	5235	203	4	8	\N
237	Flexidy	vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse	sit	3150	488	4	8	\N
238	Lotlux	neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci	erat	2982	416	1	5	\N
239	Fixflex	augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse	in	1886	373	2	8	\N
240	Solarbreeze	justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis	hac	5775	280	10	3	\N
241	Zamit	dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum	massa	3853	383	10	3	\N
242	Zathin	risus praesent lectus vestibulum quam sapien	ac	7047	310	3	4	\N
243	Hatity	scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget	massa	4181	89	9	4	\N
244	Namfix	mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris	et	1737	443	8	1	\N
245	Voyatouch	vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros	nec	4083	228	5	4	\N
246	Flowdesk	semper interdum mauris ullamcorper purus sit	libero	645	409	9	9	\N
247	Cookley	orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet	convallis	9159	212	1	5	\N
248	Veribet	proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam	aliquam	9630	423	2	4	\N
249	Voyatouch	leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus	amet	7121	161	3	1	\N
250	Redhold	luctus nec molestie sed justo pellentesque	turpis	6973	25	4	3	\N
251	Keylex	eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in	non	5422	38	5	7	\N
252	Redhold	imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam	et	2517	333	3	3	\N
253	Quo Lux	mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis	donec	403	398	6	1	\N
254	Lotstring	accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis	erat	8392	2	1	5	\N
255	Lotstring	purus eu magna vulputate luctus cum	sodales	9790	354	10	5	\N
256	Cardguard	adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate	massa	2590	32	8	8	\N
257	Biodex	in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus	est	8111	49	8	8	\N
258	Tresom	faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin	massa	9697	184	1	9	\N
259	Bitwolf	pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices	ultrices	4408	363	2	7	\N
260	Span	interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla	tortor	213	240	4	9	\N
261	Prodder	eget tincidunt eget tempus vel pede morbi porttitor lorem id	orci	2100	331	2	2	\N
262	Gembucket	maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	risus	6224	355	1	3	\N
263	Sonair	sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	odio	7672	387	4	10	\N
264	Asoka	accumsan tellus nisi eu orci mauris	pede	2798	188	6	1	\N
265	Daltfresh	montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes	libero	1878	72	10	2	\N
266	Stim	faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam	pellentesque	7348	132	7	7	\N
267	Zathin	vivamus vestibulum sagittis sapien cum sociis	lorem	2348	189	10	10	\N
268	Latlux	nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in	tincidunt	3064	128	5	6	\N
269	Trippledex	tortor quis turpis sed ante vivamus tortor duis mattis	vestibulum	9245	318	9	5	\N
270	Latlux	a odio in hac habitasse platea dictumst maecenas ut massa quis	leo	9880	273	1	10	\N
271	Sub-Ex	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus	lorem	9717	276	5	1	\N
272	Alpha	tincidunt eu felis fusce posuere felis sed	et	5898	21	5	8	\N
273	Biodex	vel est donec odio justo sollicitudin ut	turpis	1320	164	8	2	\N
274	Wrapsafe	eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl	justo	9312	424	8	7	\N
275	Domainer	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo	aliquam	5730	229	4	10	\N
276	Mat Lam Tam	ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet	suspendisse	5224	70	5	9	\N
277	Treeflex	quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet	nulla	3920	85	6	3	\N
278	Rank	nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam	at	7643	306	7	7	\N
279	Temp	faucibus orci luctus et ultrices posuere cubilia curae	ullamcorper	6464	186	1	5	\N
280	Ventosanzap	vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper	turpis	9186	172	6	10	\N
281	It	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh	sagittis	8329	316	10	2	\N
282	Bitwolf	eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum	non	4734	484	5	9	\N
283	Voyatouch	varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et	mauris	5941	212	2	6	\N
284	Rank	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras	quis	147	22	3	5	\N
285	Opela	vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id	volutpat	5750	209	4	6	\N
286	Tampflex	duis mattis egestas metus aenean	natoque	3901	392	7	7	\N
287	Lotlux	proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum	pede	5669	93	3	10	\N
288	Aerified	curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla	massa	5862	398	6	2	\N
289	Matsoft	potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie	nisl	8667	18	8	5	\N
290	Tres-Zap	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat	ullamcorper	7354	483	5	10	\N
291	Redhold	ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit	parturient	6426	25	6	10	\N
292	Voyatouch	suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque	nulla	3405	25	2	6	\N
293	Voyatouch	sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis	accumsan	6852	119	5	7	\N
294	Home Ing	ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor	luctus	2943	354	7	1	\N
295	Stim	curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum	donec	9987	472	1	3	\N
296	Zoolab	euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque	sed	2175	488	2	4	\N
297	Domainer	dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet	duis	5486	214	4	7	\N
298	Y-find	lacus at velit vivamus vel	leo	5273	257	10	9	\N
299	Tresom	nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in	vitae	3632	11	4	2	\N
300	Veribet	fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis	pulvinar	5395	240	8	5	\N
301	Alphazap	quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum	mi	7504	88	8	6	\N
302	Lotlux	consequat ut nulla sed accumsan felis ut	ut	8215	39	2	9	\N
303	Span	lacinia aenean sit amet justo morbi ut	dis	6267	436	7	10	\N
304	Domainer	sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum	curabitur	3311	67	5	2	\N
305	Solarbreeze	massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies	vestibulum	1760	384	7	3	\N
306	Kanlam	sapien a libero nam dui proin leo odio porttitor id	luctus	7502	187	3	5	\N
307	Cardify	platea dictumst morbi vestibulum velit id pretium iaculis diam erat	nulla	5721	316	10	1	\N
308	Greenlam	blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus	ipsum	536	3	7	8	\N
309	Cookley	tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque	curabitur	9503	499	4	2	\N
310	Gembucket	etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris	morbi	6018	357	6	8	\N
311	Fintone	faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a	tristique	9390	367	4	10	\N
312	Daltfresh	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer	accumsan	2832	399	10	2	\N
313	Sub-Ex	elementum nullam varius nulla facilisi	tempus	3014	104	9	3	\N
314	Andalax	sed magna at nunc commodo placerat	vestibulum	9819	129	6	5	\N
315	Gembucket	tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget	aliquet	1124	11	3	2	\N
316	Trippledex	diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam	eleifend	9262	93	10	8	\N
317	Gembucket	venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui	massa	6892	116	3	6	\N
318	Vagram	nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis	sit	6875	185	6	3	\N
319	Voltsillam	varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus	vestibulum	5675	333	1	2	\N
320	Ventosanzap	a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit	odio	1274	422	2	3	\N
321	Tin	mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum	eget	1304	120	2	6	\N
322	Kanlam	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum	luctus	9669	338	2	6	\N
323	Solarbreeze	quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	faucibus	5652	83	2	10	\N
324	Duobam	aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere	interdum	3686	403	6	1	\N
325	Solarbreeze	morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat	quis	6809	487	3	8	\N
326	Sub-Ex	aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula	faucibus	5276	195	4	6	\N
327	Veribet	quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla	vivamus	7200	141	8	7	\N
328	Fintone	pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed	fusce	6579	328	7	2	\N
329	Quo Lux	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum	at	3004	315	6	5	\N
330	Latlux	vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo	diam	6544	93	10	9	\N
331	Bytecard	nisi venenatis tristique fusce congue	lorem	6568	379	5	6	\N
332	Stim	feugiat et eros vestibulum ac est lacinia	ultrices	1779	301	2	5	\N
333	Bitchip	justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat	vitae	5004	170	10	10	\N
334	Toughjoyfax	penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl	id	8950	433	1	3	\N
335	Y-find	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante	at	9169	264	10	9	\N
336	Toughjoyfax	est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl	eleifend	6693	489	8	1	\N
337	Voyatouch	eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis	tincidunt	5334	71	1	4	\N
338	Zamit	quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a	vel	190	266	6	1	\N
339	Bitwolf	nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet	sit	4081	346	9	1	\N
340	Zontrax	ultrices aliquet maecenas leo odio condimentum	aliquet	5732	50	7	7	\N
341	Stronghold	amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit	tellus	2721	439	1	9	\N
342	Zaam-Dox	molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui	sed	3427	309	5	5	\N
343	Quo Lux	amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam	mauris	3655	350	8	4	\N
344	It	faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus	velit	7574	78	4	2	\N
388	Alphazap	felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo	aliquam	657	491	8	3	\N
345	Bamity	ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit	libero	1644	252	10	4	\N
346	Flowdesk	posuere cubilia curae duis faucibus accumsan odio curabitur	primis	1012	387	3	5	\N
347	Bytecard	in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing	blandit	914	297	7	4	\N
348	Tres-Zap	amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis	ante	5588	280	1	2	\N
349	Subin	sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan	turpis	9017	292	2	7	\N
350	Zoolab	tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo	sit	7407	198	5	7	\N
351	Bamity	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est	at	5678	114	7	2	\N
352	Alphazap	morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin	volutpat	6144	156	3	5	\N
353	Flexidy	libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in	metus	775	165	8	8	\N
354	Tampflex	magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi	ipsum	4162	377	9	1	\N
355	Toughjoyfax	quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio	at	553	59	4	10	\N
356	Biodex	turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium	quis	1310	258	8	2	\N
357	Bamity	tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu	ut	4071	14	5	6	\N
358	Bitchip	est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam	consectetuer	2474	161	9	2	\N
359	Andalax	id consequat in consequat ut nulla sed accumsan felis ut at	euismod	5207	206	3	5	\N
360	Vagram	pede justo eu massa donec dapibus duis at velit eu est congue elementum	nisl	937	314	7	9	\N
361	Konklux	posuere felis sed lacus morbi	aliquam	4974	455	9	7	\N
362	Span	dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse	non	9181	237	6	9	\N
363	Subin	erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque	sed	1811	184	5	8	\N
364	Lotlux	auctor gravida sem praesent id massa id nisl venenatis lacinia aenean	ante	5973	355	8	8	\N
365	Solarbreeze	viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at	vestibulum	2988	288	8	8	\N
366	Fix San	sem sed sagittis nam congue risus	viverra	5423	207	4	1	\N
367	Lotstring	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut	id	4510	119	9	4	\N
368	Viva	mi integer ac neque duis bibendum morbi	neque	4977	161	3	4	\N
369	Duobam	velit nec nisi vulputate nonummy maecenas tincidunt lacus	orci	1724	30	2	8	\N
370	Alpha	semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus	platea	9764	481	10	7	\N
371	Daltfresh	vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in	lacus	8119	36	3	2	\N
372	Temp	lectus in quam fringilla rhoncus	magnis	9810	118	9	8	\N
373	Temp	nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum	potenti	9684	185	7	3	\N
374	Flowdesk	et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam	sit	7183	221	4	10	\N
375	Konklux	nunc rhoncus dui vel sem sed sagittis nam congue risus semper	augue	792	421	1	10	\N
376	Hatity	sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat	amet	9505	237	9	6	\N
377	Kanlam	tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum	ultrices	9982	105	3	8	\N
378	Zathin	elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus	fermentum	589	311	2	10	\N
379	Home Ing	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit	adipiscing	5928	354	6	3	\N
380	Prodder	dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio	ac	1992	369	9	5	\N
381	Namfix	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum	sed	955	280	3	6	\N
382	Zathin	dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec	quam	924	137	9	9	\N
383	Cardify	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et	orci	2137	218	2	8	\N
384	Cardify	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est	hac	1924	59	9	8	\N
385	Fintone	a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis	nec	7471	372	9	8	\N
386	Zamit	ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse	risus	3947	143	10	5	\N
387	Flowdesk	vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a	mauris	9508	333	10	10	\N
389	Bamity	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum	congue	3267	498	10	5	\N
390	Zamit	nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum	vel	4896	434	8	10	\N
391	Lotstring	ut nunc vestibulum ante ipsum primis	interdum	9941	331	8	8	\N
392	Viva	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec	morbi	6258	244	1	10	\N
393	Lotstring	nisi vulputate nonummy maecenas tincidunt lacus	ante	2558	94	8	9	\N
394	Ronstring	mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis	ac	6170	149	4	7	\N
395	Hatity	habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum	viverra	2997	11	8	10	\N
396	Viva	vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque	viverra	1736	297	5	4	\N
397	Y-Solowarm	mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id	congue	3612	326	6	8	\N
398	Sub-Ex	nulla quisque arcu libero rutrum	eleifend	5979	219	1	5	\N
399	Sub-Ex	sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam	amet	2073	438	6	7	\N
400	Trippledex	luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh	mi	8954	187	4	8	\N
401	Stringtough	integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse	penatibus	684	280	7	9	\N
402	Ronstring	nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas	rhoncus	7948	404	6	8	\N
403	Transcof	aenean auctor gravida sem praesent id	ac	6176	362	8	3	\N
404	Sonair	mattis egestas metus aenean fermentum donec	metus	6490	204	9	10	\N
405	Stringtough	mattis nibh ligula nec sem	luctus	2764	157	7	9	\N
406	Fintone	lorem vitae mattis nibh ligula nec	elementum	5964	257	9	4	\N
407	Trippledex	volutpat eleifend donec ut dolor	nibh	5533	9	1	9	\N
408	Gembucket	nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus	natoque	6455	345	4	4	\N
409	Cardguard	ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin	mi	1162	486	3	3	\N
410	Tres-Zap	maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque	a	6060	292	5	6	\N
411	Overhold	venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet	tincidunt	6557	440	8	9	\N
412	Solarbreeze	odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin	nulla	5310	396	4	5	\N
413	Lotlux	nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in	nec	1843	175	4	4	\N
414	Stim	in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur	nulla	6642	487	7	3	\N
415	Opela	lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis	a	5574	170	8	4	\N
416	Domainer	augue vestibulum rutrum rutrum neque	sed	1452	62	3	4	\N
417	Subin	dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus	tortor	7367	409	9	1	\N
418	Cardguard	et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer	habitasse	7263	98	10	3	\N
419	Flowdesk	pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at	vitae	2645	186	6	3	\N
420	Tin	viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo	mauris	587	359	7	3	\N
421	Fixflex	sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl	dui	5381	212	9	4	\N
422	Voltsillam	ligula pellentesque ultrices phasellus id sapien in sapien iaculis	mauris	6994	339	8	10	\N
423	Konklab	ligula nec sem duis aliquam convallis nunc proin at turpis	sodales	631	100	7	1	\N
424	Biodex	eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut	nisl	3800	319	9	1	\N
425	Solarbreeze	velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam	ut	4198	473	4	8	\N
426	Sonsing	in felis donec semper sapien a libero nam dui proin	duis	4817	165	8	2	\N
427	Redhold	cras in purus eu magna	placerat	7733	430	1	10	\N
428	Cookley	luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque	posuere	5023	14	3	2	\N
429	Sonair	morbi quis tortor id nulla ultrices aliquet maecenas leo	in	7208	350	5	6	\N
430	Tempsoft	adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante	id	1914	37	2	10	\N
431	Zontrax	dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet	nibh	2816	139	9	7	\N
432	Voyatouch	nibh in lectus pellentesque at nulla suspendisse potenti cras in purus	rutrum	9768	264	5	4	\N
433	Bytecard	nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros	rhoncus	6760	389	3	9	\N
434	Lotstring	neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales	metus	7434	232	7	2	\N
435	Bytecard	duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis	ut	7211	27	9	5	\N
436	Voltsillam	potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt	ac	3863	265	8	2	\N
437	Y-Solowarm	congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac	vitae	8945	314	2	2	\N
438	Ventosanzap	nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi	pede	6421	470	4	2	\N
439	Toughjoyfax	integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat	mi	8951	88	8	7	\N
440	Viva	in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis	ligula	4400	218	7	3	\N
441	Voyatouch	vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue	curae	8515	24	7	8	\N
442	Alpha	in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie	id	8395	106	1	4	\N
443	Tempsoft	cum sociis natoque penatibus et	nulla	6457	455	10	2	\N
444	Alphazap	vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper	euismod	6495	200	1	5	\N
445	Cardify	convallis morbi odio odio elementum eu	venenatis	9229	452	10	2	\N
446	Fintone	luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique	id	9603	10	3	1	\N
447	Gembucket	magna vestibulum aliquet ultrices erat tortor	sit	1793	163	7	6	\N
448	Gembucket	et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim	eget	4061	283	10	5	\N
449	Holdlamis	iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean	turpis	529	279	3	6	\N
450	Rank	dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius	lectus	3561	236	6	8	\N
451	Quo Lux	amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor	libero	9431	409	6	2	\N
452	Bitwolf	elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante	semper	974	317	3	3	\N
453	Zontrax	sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis	leo	3457	118	2	5	\N
454	Stim	nulla eget eros elementum pellentesque	nunc	4436	97	7	8	\N
455	Tampflex	quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus	lorem	7377	306	8	1	\N
456	Zaam-Dox	purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis	magna	7930	314	4	2	\N
457	Lotlux	odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non	suscipit	5806	234	4	9	\N
458	Job	ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo	tempus	1691	251	10	3	\N
459	Asoka	volutpat dui maecenas tristique est et tempus semper	adipiscing	7406	338	1	10	\N
460	Vagram	mauris laoreet ut rhoncus aliquet pulvinar sed nisl	pulvinar	7260	361	5	5	\N
461	Greenlam	venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est	pretium	4811	454	3	4	\N
462	Veribet	tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget	in	4220	27	9	6	\N
463	Matsoft	vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus	justo	4362	414	5	10	\N
464	Bitchip	sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh	sapien	878	233	9	3	\N
465	Holdlamis	penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum	aliquet	1029	362	10	5	\N
466	Bamity	feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet	porta	8549	408	10	5	\N
467	Kanlam	potenti nullam porttitor lacus at	at	4573	383	4	7	\N
468	Zamit	auctor sed tristique in tempus sit amet sem	est	3562	473	2	10	\N
469	Alphazap	in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis	convallis	6319	340	6	6	\N
470	Konklux	orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus	phasellus	8255	344	4	5	\N
471	Zamit	sagittis nam congue risus semper porta volutpat quam pede lobortis	sit	6401	36	3	5	\N
472	Redhold	arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis	lacus	2084	475	5	4	\N
473	Kanlam	erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem	vivamus	1897	327	6	3	\N
474	Voltsillam	ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices	curabitur	8983	78	2	7	\N
475	Sonsing	volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie	sem	6908	332	10	9	\N
476	Transcof	eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus	accumsan	9477	96	8	9	\N
477	Veribet	ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non	sapien	7137	204	2	4	\N
478	Y-find	tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem	adipiscing	7920	400	9	10	\N
479	Stronghold	at velit vivamus vel nulla eget eros elementum pellentesque	mi	4667	489	7	8	\N
480	Pannier	sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut	consequat	3584	365	7	2	\N
481	Tin	est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et	tincidunt	6538	96	8	3	\N
482	Y-Solowarm	massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh	congue	3550	296	3	8	\N
483	Quo Lux	in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in	sapien	1630	358	5	8	\N
484	Lotlux	condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus	nulla	4448	452	2	5	\N
485	Temp	mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper	luctus	6249	2	2	3	\N
486	Bigtax	massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus	nibh	6136	63	3	7	\N
487	Bitchip	ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non	blandit	6088	456	5	4	\N
488	Job	sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi	nulla	2659	152	6	9	\N
489	Fixflex	justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo	dolor	8114	443	2	3	\N
490	Wrapsafe	maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis	blandit	5277	255	4	1	\N
491	Biodex	blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie	eros	6801	10	7	7	\N
492	Regrant	viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus	amet	6495	402	4	10	\N
493	Otcom	feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id	donec	2789	93	9	7	\N
494	Cardguard	quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget	erat	7848	313	4	1	\N
495	Stronghold	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas	amet	8842	397	8	8	\N
496	Fintone	ut nulla sed accumsan felis ut	suscipit	4541	21	6	9	\N
497	Sub-Ex	quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut	interdum	509	387	4	1	\N
498	Y-Solowarm	commodo placerat praesent blandit nam nulla integer pede justo lacinia eget	convallis	1370	304	10	1	\N
499	Sonair	primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec	ligula	6853	417	2	7	\N
500	Stim	lacus at turpis donec posuere metus vitae ipsum aliquam	nullam	1370	408	6	1	\N
501	Domainer	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis	non	4076	245	3	6	\N
502	Solarbreeze	sed nisl nunc rhoncus dui vel sem sed sagittis nam	sit	1990	290	5	3	\N
503	Job	nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus	bibendum	4908	298	9	8	\N
504	Stronghold	nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in	in	8538	226	10	8	\N
505	Job	interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in	lacus	9194	486	1	2	\N
506	Konklab	ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id	id	6392	191	2	2	\N
507	Fix San	eros viverra eget congue eget	et	3935	101	10	6	\N
508	Trippledex	turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi	quam	8783	449	9	7	\N
509	Zontrax	nisl aenean lectus pellentesque eget nunc donec quis orci	placerat	7988	319	10	2	\N
510	Bitchip	viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet	nulla	1022	488	9	7	\N
511	Tin	lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere	quam	6287	227	5	8	\N
512	Asoka	quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet	curabitur	109	10	8	9	\N
513	Ventosanzap	non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel	curabitur	2002	313	4	9	\N
514	Regrant	massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh	vulputate	9540	137	3	3	\N
515	Stronghold	vel est donec odio justo sollicitudin ut	vitae	2856	447	10	5	\N
516	Flowdesk	ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel	ornare	6575	45	1	8	\N
517	Voyatouch	integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit	non	5228	469	2	2	\N
518	Zoolab	curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer	erat	2697	286	3	4	\N
519	Asoka	nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est	nulla	4864	428	5	4	\N
520	Fixflex	nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper	libero	7636	126	5	4	\N
521	Toughjoyfax	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at	justo	1868	126	4	3	\N
522	Voltsillam	quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	at	5355	319	1	6	\N
523	Overhold	integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla	pede	8362	438	5	9	\N
524	Latlux	augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut	justo	1569	191	9	9	\N
525	Quo Lux	iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget	id	455	58	1	4	\N
526	Holdlamis	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue	cubilia	6227	282	10	3	\N
527	Sonsing	ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus	vitae	493	253	4	7	\N
528	Viva	metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede	mauris	4015	6	8	9	\N
529	Zoolab	penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel	vivamus	8793	214	9	8	\N
530	Otcom	maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue	vulputate	7829	88	7	2	\N
531	Voyatouch	in sagittis dui vel nisl duis ac	sed	6714	302	7	4	\N
532	Lotlux	aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus	porttitor	8485	278	8	6	\N
533	Overhold	amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris	rhoncus	5220	234	7	9	\N
534	Lotstring	imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl	lobortis	8848	21	1	8	\N
535	Pannier	morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis	est	1836	300	5	10	\N
536	Daltfresh	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in	augue	4186	208	3	3	\N
537	Tres-Zap	nulla pede ullamcorper augue a	dui	2503	106	6	10	\N
538	Transcof	felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat	sit	1133	341	6	7	\N
539	Alphazap	enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu	sapien	1068	392	6	1	\N
540	Otcom	risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum	fermentum	8086	415	10	5	\N
541	It	tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in	erat	3417	351	6	5	\N
542	Flowdesk	adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque	primis	9792	436	10	2	\N
543	Mat Lam Tam	lacus morbi sem mauris laoreet	erat	7276	377	1	4	\N
544	Tres-Zap	leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo	morbi	3623	48	10	9	\N
545	Keylex	quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum	sem	1824	44	7	2	\N
546	Y-find	primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi	justo	3478	273	5	8	\N
547	Y-find	sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh	mattis	4860	6	4	5	\N
548	Transcof	laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet	turpis	3202	120	6	7	\N
549	Bitchip	consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla	aenean	7848	375	2	7	\N
550	Veribet	in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque	justo	4507	140	8	3	\N
551	Veribet	faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat	metus	658	468	9	4	\N
552	Zathin	varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper	ut	3514	148	10	9	\N
553	Prodder	non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium	interdum	3966	412	3	7	\N
554	Fintone	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel	nibh	9008	492	5	10	\N
555	Kanlam	in felis eu sapien cursus vestibulum proin eu	in	4299	205	6	8	\N
556	Zathin	nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	nulla	7069	252	3	6	\N
557	Voyatouch	ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar	libero	7484	486	6	1	\N
558	Andalax	tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et	iaculis	7805	230	10	7	\N
559	Temp	tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer	felis	1238	471	8	8	\N
560	Temp	suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien	eget	8642	362	8	3	\N
561	Subin	lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices	laoreet	7078	326	9	5	\N
562	Duobam	praesent blandit lacinia erat vestibulum sed magna at nunc commodo	ornare	1522	55	7	1	\N
563	Span	augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet	lacus	2267	482	2	2	\N
564	Quo Lux	dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer	sapien	9738	75	7	5	\N
565	Zaam-Dox	quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla	at	2355	209	2	6	\N
566	Domainer	hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque	rutrum	4979	255	9	7	\N
567	Transcof	primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor	elit	4362	56	10	7	\N
568	Zathin	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh	ut	6678	294	3	3	\N
569	Stim	morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit	eget	6443	256	10	3	\N
570	Bytecard	nisl nunc nisl duis bibendum felis sed interdum	lobortis	8884	231	1	5	\N
571	Biodex	curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas	turpis	5660	398	2	4	\N
572	Hatity	turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis	leo	1174	153	4	9	\N
573	Sub-Ex	orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque	et	5788	293	10	8	\N
574	Wrapsafe	in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed	turpis	7706	286	1	10	\N
575	Cookley	nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu	ut	5749	22	10	9	\N
576	Regrant	pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit	leo	9993	316	10	8	\N
577	Solarbreeze	suspendisse ornare consequat lectus in est risus auctor sed tristique in	parturient	3231	333	6	5	\N
578	Redhold	massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus	lectus	5621	191	5	1	\N
579	Pannier	venenatis tristique fusce congue diam id	montes	7701	265	8	1	\N
580	Sub-Ex	pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est	justo	9051	438	10	2	\N
581	Mat Lam Tam	montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque	arcu	2308	180	10	1	\N
582	Tin	at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus	in	7178	300	5	9	\N
583	Cardify	in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac	est	3177	242	10	2	\N
584	Bamity	porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor	et	8624	471	1	1	\N
585	Konklux	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante	aenean	4216	301	4	5	\N
586	Hatity	massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices	sed	9147	442	3	6	\N
587	Vagram	mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla	rutrum	6242	2	6	3	\N
588	Domainer	tincidunt eget tempus vel pede morbi porttitor lorem id	sem	4065	473	8	8	\N
589	Ventosanzap	vel nulla eget eros elementum pellentesque quisque	ut	618	147	8	3	\N
590	Veribet	vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis	ac	5907	252	5	8	\N
591	Gembucket	mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel	non	7429	200	5	5	\N
592	Latlux	in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc	suspendisse	5290	194	2	1	\N
593	Zoolab	mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis	consequat	538	359	4	3	\N
594	Andalax	odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id	nunc	823	167	9	7	\N
595	Ronstring	imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien	sed	3162	442	7	9	\N
596	Hatity	quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet	magna	7076	172	10	5	\N
597	Treeflex	euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula	varius	6062	297	10	4	\N
599	Aerified	velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	nulla	5591	388	6	6	\N
600	Bamity	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus	eget	5448	201	2	2	\N
601	Rank	in imperdiet et commodo vulputate justo in blandit ultrices	etiam	2523	125	5	4	\N
602	Zamit	nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus	convallis	9528	176	10	2	\N
603	Greenlam	id nulla ultrices aliquet maecenas leo odio condimentum id luctus	vel	5107	234	10	7	\N
604	Flexidy	vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra	donec	2303	479	3	9	\N
605	Cardify	in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut	proin	5467	30	7	1	\N
606	Biodex	tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in	vel	2391	396	8	6	\N
607	Zoolab	nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl	pulvinar	7196	454	8	1	\N
608	Span	aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum	donec	7335	418	1	1	\N
609	Greenlam	ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros	lacus	877	379	6	8	\N
610	Veribet	pharetra magna ac consequat metus sapien ut nunc vestibulum ante	dapibus	7632	86	9	2	\N
611	Bigtax	luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et	curae	7758	317	4	1	\N
612	Redhold	sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut	quisque	6771	107	2	9	\N
613	Span	justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non	posuere	5110	229	2	2	\N
614	Bytecard	dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante	etiam	2263	236	10	5	\N
615	It	turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in	suspendisse	7305	442	10	4	\N
616	Sonair	cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus	quam	4603	246	10	7	\N
617	Bytecard	mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh	interdum	7956	399	5	2	\N
618	Hatity	elit proin interdum mauris non ligula pellentesque ultrices	morbi	5075	375	7	2	\N
619	Toughjoyfax	dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet	imperdiet	8882	28	4	10	\N
620	Tampflex	leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis	euismod	9308	396	10	2	\N
621	Keylex	etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non	quam	1765	405	6	9	\N
622	Zontrax	nec condimentum neque sapien placerat	arcu	7079	251	10	1	\N
623	Sonsing	id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu	pellentesque	4508	259	5	8	\N
624	Otcom	nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi	sit	2314	174	1	6	\N
625	Duobam	eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros	diam	6787	267	10	4	\N
626	Rank	molestie sed justo pellentesque viverra	nullam	7023	374	1	8	\N
627	Prodder	sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien	tristique	8443	255	3	8	\N
628	Sonair	arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur	luctus	1505	422	10	6	\N
629	Namfix	et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc	platea	5509	18	6	8	\N
630	Job	varius integer ac leo pellentesque ultrices	ac	2443	488	10	5	\N
631	Tresom	lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis	at	1347	39	3	4	\N
632	Y-Solowarm	ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit	in	9782	23	5	7	\N
633	Sub-Ex	elit proin risus praesent lectus vestibulum quam sapien varius ut blandit	imperdiet	7010	222	7	9	\N
634	Job	pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam	praesent	3352	10	5	1	\N
635	Zamit	suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus	platea	6489	9	6	9	\N
636	Konklab	eros suspendisse accumsan tortor quis	at	3589	407	8	9	\N
637	Sonair	a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur	non	4851	403	10	7	\N
638	It	nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis	amet	6423	431	8	5	\N
639	Bitchip	magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi	dui	4565	12	7	4	\N
640	Tresom	ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo	felis	7209	260	3	10	\N
641	Y-Solowarm	amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet	metus	7256	278	6	3	\N
642	Konklab	amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit	pellentesque	6226	460	1	4	\N
643	Andalax	morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus	sapien	4963	329	9	4	\N
644	Redhold	vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	ac	8163	468	1	2	\N
645	Flowdesk	pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu	in	8148	212	2	5	\N
646	Bitchip	accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam	aliquet	6819	443	7	4	\N
647	Konklux	vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna	sem	2667	428	4	5	\N
648	Keylex	nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo	amet	4084	486	4	6	\N
649	Stringtough	rutrum nulla nunc purus phasellus in felis	ligula	2243	497	5	9	\N
650	Bytecard	erat volutpat in congue etiam	in	8659	101	3	8	\N
651	Wrapsafe	id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis	ut	9983	329	2	10	\N
652	Biodex	vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac	sed	1777	86	10	10	\N
653	Aerified	massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit	risus	963	20	10	3	\N
654	Tempsoft	natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien	in	6076	378	7	7	\N
655	Zaam-Dox	sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl	nulla	7708	128	8	8	\N
656	Veribet	elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in	natoque	4459	79	1	6	\N
657	Veribet	laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula	morbi	9088	111	4	8	\N
658	Mat Lam Tam	sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper	pellentesque	1507	424	5	4	\N
659	Otcom	quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin	rhoncus	5752	240	6	6	\N
660	Span	mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel	iaculis	2605	378	9	4	\N
661	Konklux	mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla	porttitor	1962	478	8	6	\N
662	Holdlamis	vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue	sit	3222	36	2	5	\N
663	Ronstring	vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut	viverra	8276	432	6	9	\N
664	Bytecard	risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci	quis	7972	53	4	5	\N
665	Ronstring	cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia	quis	5137	344	6	10	\N
666	Zamit	maecenas ut massa quis augue luctus tincidunt nulla	tellus	6640	457	4	6	\N
667	Bytecard	tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus	aliquam	1621	424	3	5	\N
668	Alpha	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae	at	1247	211	1	10	\N
669	Greenlam	in congue etiam justo etiam pretium iaculis justo in hac	mauris	4024	243	2	4	\N
670	Duobam	adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non	pharetra	8192	401	4	4	\N
671	Otcom	quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse	sapien	4756	110	9	4	\N
672	Greenlam	primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus	vel	861	131	1	1	\N
673	Rank	porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales	at	9269	120	1	5	\N
674	Overhold	metus aenean fermentum donec ut mauris	suspendisse	7718	220	3	10	\N
675	Namfix	felis donec semper sapien a libero	ante	7015	474	8	9	\N
676	Sub-Ex	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede	vel	2863	40	4	2	\N
677	Bitchip	quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque	convallis	388	7	5	10	\N
678	Opela	justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus	sapien	1649	110	2	3	\N
679	Holdlamis	sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor	at	2464	218	1	10	\N
680	Overhold	vivamus tortor duis mattis egestas metus	facilisi	1693	45	1	4	\N
681	Zathin	hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit	sit	4847	106	8	7	\N
682	Otcom	sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id	suspendisse	4236	113	2	8	\N
683	Prodder	sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam	dolor	8186	268	5	2	\N
684	Voltsillam	tincidunt eget tempus vel pede morbi porttitor lorem id	nunc	2447	321	7	6	\N
685	Cardguard	felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta	turpis	9841	364	7	5	\N
686	Lotlux	risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero	id	4494	403	7	5	\N
687	Bitwolf	sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum	morbi	3902	18	10	8	\N
688	Konklux	quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac	orci	5551	362	9	9	\N
689	Zontrax	habitasse platea dictumst etiam faucibus cursus urna	commodo	3313	421	8	4	\N
690	Zoolab	id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque	cras	6688	339	8	7	\N
691	Flexidy	vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat	vestibulum	4573	394	10	10	\N
692	Fix San	blandit mi in porttitor pede justo eu massa donec	ut	7946	338	1	3	\N
693	Transcof	congue risus semper porta volutpat	aliquet	7890	438	10	9	\N
694	Overhold	aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique	felis	1864	47	1	4	\N
695	Otcom	nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo	morbi	2501	117	9	2	\N
696	Y-Solowarm	ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi	nam	9523	381	3	10	\N
697	Ventosanzap	velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper	consequat	4469	434	3	4	\N
698	Zathin	quis turpis eget elit sodales scelerisque mauris sit amet	magna	6066	387	8	5	\N
699	Fix San	convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit	pede	7501	250	5	8	\N
700	Rank	felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed	volutpat	4250	421	9	10	\N
701	Toughjoyfax	vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue	morbi	3258	169	5	3	\N
702	Zontrax	congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque	turpis	8640	355	9	2	\N
703	Flexidy	vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel	mauris	2112	287	7	1	\N
704	Tin	volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	hac	6758	22	4	10	\N
705	Hatity	nec nisi volutpat eleifend donec ut dolor morbi	a	8640	354	3	5	\N
706	Bigtax	pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut	nulla	641	17	10	1	\N
707	Trippledex	platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id	eget	4301	463	9	5	\N
708	Ronstring	pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus	ac	6786	190	3	1	\N
709	Flowdesk	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu	sed	4188	340	1	6	\N
710	Holdlamis	enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing	enim	2631	145	1	8	\N
711	Overhold	parturient montes nascetur ridiculus mus etiam vel augue vestibulum	erat	7254	153	2	7	\N
712	Zaam-Dox	volutpat dui maecenas tristique est et tempus	mattis	6619	301	4	4	\N
713	Cardguard	pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit	accumsan	2824	396	7	2	\N
714	Duobam	suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis	amet	2446	142	5	8	\N
715	Overhold	nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim	mi	70	297	6	6	\N
716	Job	est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere	ante	1528	345	10	5	\N
717	Andalax	enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin	nulla	9970	102	3	6	\N
718	Sonsing	venenatis tristique fusce congue diam id ornare imperdiet	nisi	9260	26	7	9	\N
719	Y-Solowarm	elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla	semper	6308	379	6	4	\N
720	Domainer	eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam	amet	7485	51	10	3	\N
721	Toughjoyfax	lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id	urna	5197	231	4	2	\N
722	Prodder	interdum in ante vestibulum ante ipsum primis in	malesuada	9735	248	3	6	\N
723	Pannier	dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet	sed	667	114	7	7	\N
724	Tempsoft	ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit	aenean	7657	56	9	5	\N
725	Bitwolf	morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id	integer	559	190	7	1	\N
726	Job	iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id	erat	773	398	5	10	\N
727	Bitwolf	elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus	ipsum	9862	136	7	3	\N
728	Biodex	nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus	interdum	7819	261	6	9	\N
729	Asoka	iaculis justo in hac habitasse platea dictumst etiam faucibus	nec	3284	16	5	8	\N
730	Overhold	vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet	in	845	10	10	2	\N
731	Voyatouch	pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl	duis	4659	117	10	5	\N
732	Keylex	quisque erat eros viverra eget congue eget semper	leo	6284	240	9	10	\N
733	Holdlamis	vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu	duis	8866	344	6	9	\N
734	Cardify	mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis	suspendisse	970	260	5	4	\N
735	Keylex	quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi	in	1909	411	5	8	\N
736	Lotstring	neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus	maecenas	6759	133	1	9	\N
737	Fixflex	eleifend pede libero quis orci nullam molestie nibh in lectus	elit	6374	488	10	7	\N
738	Zaam-Dox	condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis	ut	9973	475	7	3	\N
739	Ventosanzap	neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros	sit	5088	179	2	8	\N
740	Sub-Ex	suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique	suspendisse	308	498	2	3	\N
741	Bytecard	massa id nisl venenatis lacinia aenean sit amet justo	aliquam	1404	181	7	3	\N
742	Asoka	nulla pede ullamcorper augue a suscipit nulla	sit	5101	49	6	2	\N
743	Fix San	erat nulla tempus vivamus in felis eu sapien cursus	aliquam	3965	263	5	9	\N
744	Opela	id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi	nulla	8578	382	1	9	\N
745	Pannier	phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut	justo	1729	443	1	10	\N
746	Konklab	faucibus orci luctus et ultrices posuere	in	8739	50	6	3	\N
747	Voltsillam	consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus	diam	5609	74	5	7	\N
748	Aerified	nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh	suspendisse	6665	3	9	3	\N
749	Treeflex	ante ipsum primis in faucibus orci luctus et	ipsum	5182	422	6	2	\N
750	Quo Lux	mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non	in	7654	445	3	2	\N
751	Holdlamis	amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere	vel	8105	205	9	1	\N
752	Zontrax	ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper	tempor	4565	195	10	4	\N
753	Konklux	fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante	odio	9615	68	1	9	\N
754	Fixflex	sapien dignissim vestibulum vestibulum ante ipsum primis	donec	2125	394	6	4	\N
755	Lotstring	interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis	neque	1935	280	8	5	\N
756	Temp	potenti in eleifend quam a odio in hac habitasse platea	nulla	1219	101	4	6	\N
757	Trippledex	mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum	semper	724	259	10	3	\N
758	Y-find	cursus urna ut tellus nulla ut erat id mauris vulputate	morbi	9895	145	10	8	\N
759	Ronstring	dictumst etiam faucibus cursus urna ut tellus nulla ut erat	hac	2010	371	7	6	\N
760	Transcof	nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim	faucibus	1461	393	8	10	\N
761	Bamity	nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus	cras	9698	456	8	7	\N
762	Alphazap	amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam	rhoncus	6649	346	1	5	\N
763	Domainer	blandit ultrices enim lorem ipsum dolor sit amet	facilisi	9660	488	2	8	\N
764	Flowdesk	non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu	vehicula	5300	166	4	2	\N
765	Wrapsafe	dapibus dolor vel est donec odio	luctus	5178	219	5	1	\N
766	Y-find	lectus suspendisse potenti in eleifend quam a odio	interdum	4497	415	3	5	\N
767	Cardify	dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla	ac	1667	109	7	2	\N
768	Wrapsafe	sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat	vestibulum	6526	271	9	1	\N
769	Tin	rutrum rutrum neque aenean auctor gravida sem praesent id	pede	8063	72	1	1	\N
770	Sonair	justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non	duis	2713	167	4	7	\N
771	Tampflex	sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa	et	1918	81	10	4	\N
772	Zathin	justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus	eu	8979	429	8	5	\N
773	Biodex	cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at	sapien	6234	369	9	7	\N
774	Opela	lectus aliquam sit amet diam in magna	dui	1019	485	7	6	\N
775	Andalax	posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi	sapien	2391	109	8	8	\N
776	Lotlux	nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer	aenean	6822	406	1	2	\N
777	Prodder	ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi	nascetur	1619	469	2	4	\N
778	Bitwolf	justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit	fermentum	1700	372	7	4	\N
779	Stronghold	at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in	cubilia	5616	178	9	10	\N
780	Trippledex	cum sociis natoque penatibus et	ac	773	410	5	2	\N
781	Subin	nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id	nunc	6203	207	6	2	\N
782	Zamit	vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac	eu	6922	419	6	10	\N
783	Tin	blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et	lacinia	3186	16	2	5	\N
784	Konklux	curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam	consequat	6437	368	5	10	\N
785	Zaam-Dox	cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices	eget	9497	497	5	6	\N
786	Alphazap	dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium	vestibulum	7327	368	9	10	\N
787	Bitwolf	id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl	blandit	3565	48	1	2	\N
788	Alphazap	nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida	nulla	3554	492	2	5	\N
789	Konklux	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti	sociis	3816	495	8	1	\N
790	Ronstring	eget vulputate ut ultrices vel augue vestibulum	ante	2231	4	2	2	\N
791	Voltsillam	diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet	nibh	7442	464	2	6	\N
792	Temp	vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in	quam	6224	138	8	4	\N
793	Solarbreeze	nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id	in	2860	327	10	2	\N
794	Biodex	suspendisse ornare consequat lectus in est risus auctor	odio	2434	214	9	2	\N
795	Wrapsafe	felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit	id	5245	476	5	4	\N
796	Toughjoyfax	tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus	lorem	6354	355	1	9	\N
797	Zamit	luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus	et	8479	128	9	4	\N
798	Voyatouch	morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque	magna	1431	468	7	4	\N
799	Home Ing	blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque	ut	2062	436	8	7	\N
800	Fixflex	pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper	enim	8141	78	3	4	\N
801	Rank	orci luctus et ultrices posuere cubilia	mus	2990	465	2	9	\N
802	Holdlamis	sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac	placerat	4465	298	8	5	\N
803	Hatity	hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non	nulla	3635	429	4	3	\N
804	Flexidy	non interdum in ante vestibulum	eu	4540	157	10	2	\N
805	Duobam	convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat	eleifend	4606	137	1	7	\N
806	Temp	ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac	id	1633	220	3	10	\N
807	Prodder	erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros	in	6576	272	1	10	\N
808	Stringtough	gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet	luctus	865	200	10	4	\N
809	Regrant	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc	libero	3293	1	6	7	\N
810	Bitchip	nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus	cursus	9403	141	4	10	\N
811	Latlux	massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi	consequat	7428	481	5	6	\N
812	Flowdesk	nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam	felis	9279	54	10	10	\N
813	Flowdesk	nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus	justo	1884	429	3	2	\N
814	Zoolab	ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus	tortor	1965	278	3	8	\N
815	Temp	massa id lobortis convallis tortor risus dapibus augue vel accumsan	ultrices	6890	499	9	9	\N
816	Voltsillam	cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra	sapien	310	201	10	2	\N
817	Zamit	lobortis convallis tortor risus dapibus augue vel accumsan tellus	risus	2823	96	5	10	\N
818	Tempsoft	etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam	volutpat	8748	307	10	7	\N
819	Lotlux	vitae nisi nam ultrices libero non mattis pulvinar nulla	commodo	1137	112	9	6	\N
820	Biodex	id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget	adipiscing	6440	208	7	10	\N
821	Zathin	ac neque duis bibendum morbi	platea	636	222	4	3	\N
822	Sub-Ex	venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium	odio	5061	413	8	8	\N
823	Namfix	donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper	suscipit	2336	321	9	2	\N
824	Zontrax	sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque	sit	2811	306	4	1	\N
825	Fintone	molestie lorem quisque ut erat	metus	1836	346	2	6	\N
826	Gembucket	felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at	adipiscing	9422	140	3	8	\N
827	Tempsoft	sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam	convallis	6000	465	4	5	\N
828	Flowdesk	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla	at	3383	185	7	8	\N
829	Opela	curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet	pede	9328	77	8	2	\N
830	Fix San	elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut	mus	9477	442	9	6	\N
831	Regrant	nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia	non	3569	238	9	5	\N
832	Trippledex	amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam	in	2119	145	2	9	\N
833	Stronghold	porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat	tortor	2146	217	10	7	\N
834	Biodex	tincidunt nulla mollis molestie lorem quisque ut erat	sociis	5918	304	9	1	\N
835	Viva	nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit	sit	3257	23	1	3	\N
836	Flowdesk	congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus	nunc	649	374	3	5	\N
837	Voltsillam	lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum	nulla	4228	337	1	7	\N
838	Stringtough	placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id	maecenas	6995	32	1	8	\N
839	Regrant	mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum	pellentesque	7072	385	6	7	\N
840	Zamit	neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat	ac	9953	260	9	6	\N
841	Opela	duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus	vulputate	8824	420	10	7	\N
842	Domainer	ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla	nibh	7751	112	7	1	\N
843	Tempsoft	mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus	varius	9688	234	10	6	\N
844	Voltsillam	ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor	nec	1238	11	3	2	\N
845	Daltfresh	donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam	lorem	374	28	5	4	\N
846	Daltfresh	luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus	elementum	9242	401	10	2	\N
847	Lotstring	ac diam cras pellentesque volutpat dui maecenas tristique est	fringilla	8271	43	8	5	\N
848	Keylex	iaculis diam erat fermentum justo nec condimentum	adipiscing	661	369	8	3	\N
849	Tres-Zap	turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam	quis	1990	235	3	4	\N
850	Otcom	integer ac neque duis bibendum morbi non quam nec dui luctus rutrum	donec	5993	179	9	3	\N
851	Span	nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti	congue	3690	211	10	8	\N
852	Sonsing	interdum in ante vestibulum ante ipsum	sagittis	9941	433	9	2	\N
853	Gembucket	sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum	sapien	4541	428	2	2	\N
854	Quo Lux	fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis	amet	7647	430	3	9	\N
855	Prodder	duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum	tortor	5747	324	6	7	\N
856	Alphazap	sed ante vivamus tortor duis	cras	437	193	5	5	\N
857	Regrant	lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum	lectus	5898	57	6	6	\N
858	Pannier	nulla tellus in sagittis dui vel nisl duis	vestibulum	7603	307	3	2	\N
859	Domainer	porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci	amet	8734	175	2	4	\N
860	Rank	suscipit ligula in lacus curabitur at	ullamcorper	7367	168	6	6	\N
861	Solarbreeze	accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam	sit	5402	266	2	4	\N
862	Span	sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede	et	1170	360	3	1	\N
863	Bitchip	est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim	pede	5615	334	10	2	\N
864	Tres-Zap	nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula	ut	5483	236	6	6	\N
865	Latlux	in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices	nulla	3632	124	4	8	\N
866	Stringtough	at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros	ultrices	9307	338	1	6	\N
867	Overhold	eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in	ipsum	8735	368	7	8	\N
868	Sonair	morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet	donec	1369	150	4	4	\N
869	Regrant	donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec	lorem	2604	108	2	7	\N
870	Alphazap	volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id	suscipit	3355	498	6	3	\N
871	Alphazap	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat	posuere	8340	74	8	5	\N
872	Otcom	mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque	felis	650	328	4	2	\N
873	Flowdesk	metus aenean fermentum donec ut mauris	tempor	7335	460	4	1	\N
874	Namfix	semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse	quis	3960	398	8	2	\N
875	Gembucket	habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at	sapien	6041	208	5	7	\N
876	It	et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel	in	8910	381	3	7	\N
877	Job	faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae	dapibus	2125	9	10	2	\N
878	Vagram	amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in	massa	5603	381	4	4	\N
879	Home Ing	primis in faucibus orci luctus et ultrices posuere cubilia	pulvinar	5207	196	5	7	\N
880	Domainer	proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus	eget	9127	127	2	9	\N
881	Biodex	nulla suspendisse potenti cras in purus	vivamus	5545	48	3	2	\N
882	Subin	non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper	amet	1398	164	6	3	\N
883	Fintone	in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at	sed	4189	98	5	3	\N
884	Span	nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo	vitae	4113	299	9	9	\N
885	Asoka	erat fermentum justo nec condimentum neque sapien placerat ante nulla	eu	917	237	2	8	\N
886	Trippledex	convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla	lectus	9883	475	3	1	\N
887	Subin	felis eu sapien cursus vestibulum proin	eleifend	5443	26	6	6	\N
888	Otcom	neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus	sodales	1949	174	7	10	\N
889	Konklux	mauris sit amet eros suspendisse accumsan tortor quis turpis sed	in	4875	305	7	10	\N
890	Treeflex	nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est	orci	8030	74	10	4	\N
891	Zaam-Dox	dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi	tortor	3156	135	3	10	\N
892	Zontrax	metus arcu adipiscing molestie hendrerit at vulputate vitae nisl	sit	8311	124	5	2	\N
893	Bamity	ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo	vitae	5579	317	4	8	\N
894	Zamit	erat tortor sollicitudin mi sit amet lobortis sapien sapien	sed	8856	133	5	2	\N
895	Solarbreeze	amet consectetuer adipiscing elit proin risus praesent lectus vestibulum	sed	4647	210	7	7	\N
896	Zaam-Dox	nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo	vitae	9310	210	10	4	\N
897	Zontrax	mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis	ut	9629	304	9	7	\N
898	Flexidy	amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla	enim	2204	218	9	10	\N
899	Home Ing	blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi	pharetra	3976	126	4	8	\N
900	Fintone	porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci	eu	8470	37	5	6	\N
901	Biodex	at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel	leo	9830	131	8	3	\N
902	Veribet	at feugiat non pretium quis lectus	velit	8689	490	10	9	\N
903	Sub-Ex	pede justo lacinia eget tincidunt	non	6381	461	4	1	\N
904	Konklab	enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit	ante	150	177	6	7	\N
905	Latlux	rutrum at lorem integer tincidunt ante vel	erat	5383	73	6	7	\N
906	Zathin	praesent id massa id nisl venenatis	et	9088	66	10	2	\N
907	It	rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam	purus	2038	149	10	6	\N
908	Treeflex	habitasse platea dictumst etiam faucibus cursus	pulvinar	5872	199	1	4	\N
909	Duobam	lectus pellentesque eget nunc donec quis	placerat	8678	58	9	5	\N
910	Y-Solowarm	sit amet consectetuer adipiscing elit proin	vestibulum	6449	465	7	1	\N
911	Tempsoft	eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat	scelerisque	1629	241	7	3	\N
912	Alphazap	rutrum rutrum neque aenean auctor gravida sem praesent id	nullam	9986	218	5	7	\N
913	Tampflex	in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien	ac	4798	451	6	9	\N
914	Kanlam	arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci	leo	6035	326	8	7	\N
915	Solarbreeze	quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus	justo	5039	404	4	7	\N
916	Transcof	mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi	eget	8832	272	5	9	\N
917	Temp	tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc	justo	9634	490	9	9	\N
918	Kanlam	duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus	tincidunt	4565	189	2	4	\N
919	Cardguard	eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci	duis	6875	477	7	2	\N
920	Y-Solowarm	vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum	vivamus	981	471	3	9	\N
921	Zaam-Dox	adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue	convallis	3001	281	9	6	\N
922	Daltfresh	aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum	amet	5690	142	6	8	\N
923	Span	id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum	justo	9625	459	1	6	\N
924	Greenlam	vel nisl duis ac nibh fusce lacus purus	adipiscing	8106	346	1	10	\N
925	Toughjoyfax	sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci	morbi	7782	125	1	2	\N
926	Andalax	hac habitasse platea dictumst morbi vestibulum	sagittis	2858	71	7	1	\N
927	Temp	vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero	scelerisque	4689	92	1	1	\N
928	Hatity	posuere cubilia curae nulla dapibus dolor	ac	596	447	7	1	\N
929	Cookley	vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam	lorem	5408	166	7	1	\N
930	Flexidy	phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis	ac	3882	266	7	6	\N
931	Cookley	nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci	nulla	4337	148	9	1	\N
932	Bitwolf	leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus	donec	6398	493	5	5	\N
933	Stringtough	nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget	et	4871	65	4	3	\N
934	Holdlamis	felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque	accumsan	8403	32	2	5	\N
935	Greenlam	vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse	quisque	6156	19	5	4	\N
936	Mat Lam Tam	eleifend quam a odio in hac habitasse platea dictumst maecenas	eu	2217	396	7	6	\N
937	Stim	arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam	mauris	5794	382	6	9	\N
938	Treeflex	luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer	vel	4392	272	4	10	\N
939	Duobam	eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros	lacinia	6474	101	1	2	\N
940	Flowdesk	sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla	phasellus	2630	426	5	8	\N
941	Y-find	viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat	libero	4508	459	6	9	\N
942	Opela	orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec	id	2530	225	4	7	\N
943	Alpha	quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis	eu	7264	199	3	3	\N
944	Overhold	dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis	aliquam	6030	363	7	2	\N
945	Biodex	amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet	vel	467	234	10	9	\N
946	Pannier	dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus	diam	5803	69	9	9	\N
947	Trippledex	integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum	sed	8130	473	5	3	\N
948	Keylex	praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent	non	4352	344	4	2	\N
949	Bitchip	nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices	turpis	9062	405	5	8	\N
950	Domainer	potenti in eleifend quam a odio in hac habitasse platea dictumst	imperdiet	9983	456	7	9	\N
951	Solarbreeze	nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at	sit	2330	353	8	2	\N
952	Redhold	dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend	vestibulum	7316	226	2	7	\N
953	Tempsoft	luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et	iaculis	5310	340	9	10	\N
954	Asoka	consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci	pellentesque	156	490	3	7	\N
955	Bigtax	mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante	ante	1301	397	6	2	\N
956	Fixflex	lobortis sapien sapien non mi integer ac neque duis	donec	3834	351	2	6	\N
957	Zaam-Dox	adipiscing elit proin interdum mauris non	magna	5819	436	6	2	\N
958	Stim	nibh ligula nec sem duis aliquam convallis nunc proin	scelerisque	9659	115	1	2	\N
959	Zathin	donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut	pretium	1951	151	7	10	\N
960	Alpha	eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor	vel	6154	102	10	1	\N
961	Regrant	dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna	diam	8913	16	10	10	\N
962	Home Ing	at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis	consequat	9185	290	8	5	\N
963	Biodex	non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl	proin	8334	284	4	5	\N
964	Subin	ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra	nisl	7331	7	1	2	\N
965	Holdlamis	sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque	orci	1155	437	5	6	\N
966	Cookley	luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus	odio	6567	114	6	8	\N
967	Fix San	lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus	non	8001	246	8	10	\N
968	Zathin	gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat	risus	4890	415	4	5	\N
969	Trippledex	maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida	in	4701	295	9	4	\N
970	Matsoft	vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor	fermentum	3594	411	10	2	\N
971	Treeflex	quam pede lobortis ligula sit amet eleifend pede libero	id	8245	346	9	1	\N
972	Zamit	fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est	diam	1356	448	6	8	\N
973	Voyatouch	dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst	justo	545	55	9	6	\N
974	Temp	vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros	semper	2918	491	10	1	\N
975	Hatity	ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci	eget	479	148	4	6	\N
976	Quo Lux	enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam	pharetra	7192	41	2	5	\N
977	Fix San	ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus	justo	2857	415	9	9	\N
978	Zamit	aliquam convallis nunc proin at turpis a pede posuere nonummy integer non	vestibulum	1966	285	8	10	\N
979	Tampflex	aliquet at feugiat non pretium quis lectus suspendisse potenti	primis	3173	7	6	8	\N
980	Stronghold	nullam orci pede venenatis non	viverra	240	405	4	4	\N
981	Kanlam	lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam	urna	1510	492	1	9	\N
982	Domainer	justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet	blandit	597	157	5	9	\N
983	Zathin	congue elementum in hac habitasse platea dictumst morbi vestibulum velit	hac	1337	277	7	10	\N
984	Span	justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est	ipsum	2718	88	1	8	\N
985	Bitwolf	in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in	in	4968	111	8	2	\N
986	Latlux	iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis	purus	9959	353	2	1	\N
987	Fixflex	libero nullam sit amet turpis	non	1006	209	7	10	\N
988	Zathin	velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit	consectetuer	8141	490	6	1	\N
989	Tempsoft	mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida	mauris	576	479	4	8	\N
990	Temp	sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus	scelerisque	2868	231	10	10	\N
991	Tin	quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus	augue	8024	220	4	4	\N
992	Stringtough	mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim	purus	3166	476	2	10	\N
993	Kanlam	a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum	vehicula	6897	463	1	9	\N
994	Namfix	orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet	felis	2502	19	3	1	\N
995	Tresom	pellentesque ultrices mattis odio donec vitae nisi nam	at	1127	291	4	6	\N
996	Flexidy	faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non	lectus	3769	362	8	9	\N
997	Solarbreeze	blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat	nam	3196	44	4	3	\N
998	Holdlamis	bibendum morbi non quam nec dui luctus rutrum	elementum	3901	48	10	10	\N
999	Zamit	mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper	quis	675	443	6	5	\N
1000	Subin	lacus morbi sem mauris laoreet	faucibus	5916	54	7	8	\N
1001	Yamaha	Piano electrique end bon etat de marche	tres bon	490	8	11	10	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, email) FROM stdin;
1	jnevill0	7MEXQOhhLMQ	mvlies0@imageshack.us
2	gairlie1	9WS7wtcFeVNv	nmacentee1@skyrock.com
3	rroseveare2	1ihjAn5i	jjumonet2@about.me
4	tcochern3	Pip8doeEhG	gdoxey3@dot.gov
5	kratledge4	rIWGhtszud	sleacock4@wix.com
6	ichinnock5	ATjojvcfej	hpridham5@google.com.au
7	kdrinkall6	iia6NltvKRY	dbrinson6@deliciousdays.com
8	bwillgrass7	APHUYjc	brizzardini7@hostgator.com
9	dcruz8	GaFrMUACRWKv	vmarks8@fotki.com
10	adandrea9	FDJsJMP	bsleite9@sphinn.com
11	moune	$2b$12$3W6Y7fl8TEofwEi356wKd.gf8jbN78/6fsaEbAItUhf72LxxAHgaa	moune@moune.fr
\.


--
-- Name: instrument_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrument_type_id_seq', 10, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 1001, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- Name: instrument_type instrument_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_type
    ADD CONSTRAINT instrument_type_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: ix_instrument_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_instrument_type_id ON public.instrument_type USING btree (id);


--
-- Name: ix_items_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_items_id ON public.items USING btree (id);


--
-- Name: ix_users_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_users_id ON public.users USING btree (id);


--
-- Name: items items_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.instrument_type(id);


--
-- Name: items items_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

