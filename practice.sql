--
-- PostgreSQL database dump
--

\restrict w0IWx6HzQddj8xno8Az7T0AKQnmTOJVOA8xJIJs9PAMChc9GJAVhSlWO2tFg7Ee

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: practice; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA practice;


ALTER SCHEMA practice OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customers; Type: TABLE; Schema: practice; Owner: postgres
--

CREATE TABLE practice.customers (
    customer_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    signup_date date
);


ALTER TABLE practice.customers OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: practice; Owner: postgres
--

CREATE SEQUENCE practice.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE practice.customers_customer_id_seq OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: practice; Owner: postgres
--

ALTER SEQUENCE practice.customers_customer_id_seq OWNED BY practice.customers.customer_id;


--
-- Name: order_items; Type: TABLE; Schema: practice; Owner: postgres
--

CREATE TABLE practice.order_items (
    order_item_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer,
    line_total numeric(10,2)
);


ALTER TABLE practice.order_items OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE; Schema: practice; Owner: postgres
--

CREATE SEQUENCE practice.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE practice.order_items_order_item_id_seq OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: practice; Owner: postgres
--

ALTER SEQUENCE practice.order_items_order_item_id_seq OWNED BY practice.order_items.order_item_id;


--
-- Name: orders; Type: TABLE; Schema: practice; Owner: postgres
--

CREATE TABLE practice.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount numeric(10,2)
);


ALTER TABLE practice.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: practice; Owner: postgres
--

CREATE SEQUENCE practice.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE practice.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: practice; Owner: postgres
--

ALTER SEQUENCE practice.orders_order_id_seq OWNED BY practice.orders.order_id;


--
-- Name: orders_v2; Type: TABLE; Schema: practice; Owner: postgres
--

CREATE TABLE practice.orders_v2 (
    order_id integer NOT NULL,
    customer_id integer,
    total_amount numeric(10,2),
    order_date date DEFAULT CURRENT_DATE
);


ALTER TABLE practice.orders_v2 OWNER TO postgres;

--
-- Name: orders_v2_order_id_seq; Type: SEQUENCE; Schema: practice; Owner: postgres
--

CREATE SEQUENCE practice.orders_v2_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE practice.orders_v2_order_id_seq OWNER TO postgres;

--
-- Name: orders_v2_order_id_seq; Type: SEQUENCE OWNED BY; Schema: practice; Owner: postgres
--

ALTER SEQUENCE practice.orders_v2_order_id_seq OWNED BY practice.orders_v2.order_id;


--
-- Name: products; Type: TABLE; Schema: practice; Owner: postgres
--

CREATE TABLE practice.products (
    product_id integer NOT NULL,
    product_name character varying(100),
    category character varying(50),
    price numeric(10,2)
);


ALTER TABLE practice.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: practice; Owner: postgres
--

CREATE SEQUENCE practice.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE practice.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: practice; Owner: postgres
--

ALTER SEQUENCE practice.products_product_id_seq OWNED BY practice.products.product_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_total numeric(10,2),
    order_date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: orders_v2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_v2 (
    order_id integer NOT NULL,
    customer_id integer,
    order_total numeric(10,2),
    order_date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.orders_v2 OWNER TO postgres;

--
-- Name: orders_v2_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_v2_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_v2_order_id_seq OWNER TO postgres;

--
-- Name: orders_v2_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_v2_order_id_seq OWNED BY public.orders_v2.order_id;


--
-- Name: customers customer_id; Type: DEFAULT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.customers ALTER COLUMN customer_id SET DEFAULT nextval('practice.customers_customer_id_seq'::regclass);


--
-- Name: order_items order_item_id; Type: DEFAULT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('practice.order_items_order_item_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.orders ALTER COLUMN order_id SET DEFAULT nextval('practice.orders_order_id_seq'::regclass);


--
-- Name: orders_v2 order_id; Type: DEFAULT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.orders_v2 ALTER COLUMN order_id SET DEFAULT nextval('practice.orders_v2_order_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.products ALTER COLUMN product_id SET DEFAULT nextval('practice.products_product_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: orders_v2 order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_v2 ALTER COLUMN order_id SET DEFAULT nextval('public.orders_v2_order_id_seq'::regclass);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: practice; Owner: postgres
--

COPY practice.customers (customer_id, first_name, last_name, email, signup_date) FROM stdin;
1	Ava	Thompson	ava.thompson@example.com	2024-01-12
2	Liam	Rodriguez	liam.rod@example.com	2024-02-03
3	Mia	Chen	mia.chen@example.com	2024-02-15
4	Noah	Patel	noah.patel@example.com	2024-03-01
5	Emma	Garcia	emma.garcia@example.com	2024-03-18
6	Oliver	Kim	oliver.kim@example.com	2024-04-02
7	Sophia	Davis	sophia.davis@example.com	2024-04-20
8	Ethan	Lopez	ethan.lopez@example.com	2024-05-05
9	Isabella	Martinez	isabella.martinez@example.com	2024-05-22
10	James	Wilson	james.wilson@example.com	2024-06-01
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: practice; Owner: postgres
--

COPY practice.order_items (order_item_id, order_id, product_id, quantity, line_total) FROM stdin;
1	1	1	1	24.99
2	1	3	1	9.99
3	2	2	1	79.99
4	3	1	1	24.99
5	4	4	1	129.99
6	5	5	1	14.99
7	5	10	1	12.99
8	5	11	1	5.99
9	5	3	1	9.99
10	6	7	1	89.99
11	7	4	1	129.99
12	7	3	1	9.99
13	7	1	1	24.99
14	8	3	2	19.98
15	9	4	1	129.99
16	10	8	1	49.99
17	10	5	1	14.99
18	11	2	1	79.99
19	12	8	1	49.99
20	13	7	1	89.99
21	13	3	1	9.99
22	14	5	1	14.99
23	15	7	1	89.99
24	15	4	1	129.99
25	16	12	1	39.99
26	17	1	1	24.99
27	18	7	1	89.99
28	19	6	1	29.99
29	20	8	1	49.99
30	21	4	1	129.99
31	22	3	2	19.98
32	23	8	1	49.99
33	23	3	1	9.99
34	24	12	1	39.99
35	25	7	1	89.99
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: practice; Owner: postgres
--

COPY practice.orders (order_id, customer_id, order_date, total_amount) FROM stdin;
1	1	2024-02-01	34.98
2	2	2024-02-10	79.99
3	3	2024-02-20	24.98
4	4	2024-03-05	129.99
5	5	2024-03-22	49.98
6	6	2024-04-10	89.99
7	7	2024-04-25	144.98
8	8	2024-05-08	19.98
9	9	2024-05-28	129.99
10	10	2024-06-03	59.98
11	1	2024-06-15	79.99
12	2	2024-06-20	49.99
13	3	2024-06-25	99.98
14	4	2024-07-01	14.99
15	5	2024-07-10	169.98
16	6	2024-07-18	39.99
17	7	2024-07-22	24.99
18	8	2024-07-30	89.99
19	9	2024-08-05	29.99
20	10	2024-08-12	49.99
21	1	2024-08-20	129.99
22	2	2024-08-25	19.98
23	3	2024-09-01	59.98
24	4	2024-09-10	39.99
25	5	2024-09-15	89.99
\.


--
-- Data for Name: orders_v2; Type: TABLE DATA; Schema: practice; Owner: postgres
--

COPY practice.orders_v2 (order_id, customer_id, total_amount, order_date) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: practice; Owner: postgres
--

COPY practice.products (product_id, product_name, category, price) FROM stdin;
1	Wireless Mouse	Electronics	24.99
2	Mechanical Keyboard	Electronics	79.99
3	USB-C Cable	Electronics	9.99
4	Noise-Canceling Headphones	Electronics	129.99
5	Water Bottle	Home	14.99
6	Yoga Mat	Fitness	29.99
7	Running Shoes	Fitness	89.99
8	Backpack	Accessories	49.99
9	Desk Lamp	Home	34.99
10	Notebook Set	Office	12.99
11	Ballpoint Pen Pack	Office	5.99
12	Laptop Stand	Electronics	39.99
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, first_name, last_name, email, created_at) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_id, order_total, order_date) FROM stdin;
\.


--
-- Data for Name: orders_v2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_v2 (order_id, customer_id, order_total, order_date) FROM stdin;
\.


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: practice; Owner: postgres
--

SELECT pg_catalog.setval('practice.customers_customer_id_seq', 11, true);


--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE SET; Schema: practice; Owner: postgres
--

SELECT pg_catalog.setval('practice.order_items_order_item_id_seq', 35, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: practice; Owner: postgres
--

SELECT pg_catalog.setval('practice.orders_order_id_seq', 25, true);


--
-- Name: orders_v2_order_id_seq; Type: SEQUENCE SET; Schema: practice; Owner: postgres
--

SELECT pg_catalog.setval('practice.orders_v2_order_id_seq', 1, false);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: practice; Owner: postgres
--

SELECT pg_catalog.setval('practice.products_product_id_seq', 12, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, false);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 2, true);


--
-- Name: orders_v2_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_v2_order_id_seq', 1, false);


--
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: orders_v2 orders_v2_pkey; Type: CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.orders_v2
    ADD CONSTRAINT orders_v2_pkey PRIMARY KEY (order_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: orders_v2 orders_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_v2
    ADD CONSTRAINT orders_v2_pkey PRIMARY KEY (order_id);


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES practice.orders(order_id);


--
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES practice.products(product_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES practice.customers(customer_id);


--
-- Name: orders_v2 orders_v2_customer_id_fkey; Type: FK CONSTRAINT; Schema: practice; Owner: postgres
--

ALTER TABLE ONLY practice.orders_v2
    ADD CONSTRAINT orders_v2_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: orders_v2 orders_v2_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_v2
    ADD CONSTRAINT orders_v2_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- PostgreSQL database dump complete
--

\unrestrict w0IWx6HzQddj8xno8Az7T0AKQnmTOJVOA8xJIJs9PAMChc9GJAVhSlWO2tFg7Ee

