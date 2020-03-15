--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6

-- Started on 2020-03-14 17:05:31

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

SET default_with_oids = false;

--
-- TOC entry 214 (class 1259 OID 17892)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name text NOT NULL,
    unit text,
    "isDeleted" boolean DEFAULT false NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17890)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 213
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- TOC entry 2763 (class 2604 OID 17895)
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- TOC entry 2891 (class 0 OID 17892)
-- Dependencies: 214
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--


INSERT INTO public.category (id, name, unit, "isDeleted") VALUES (1, 'Tổng hợp', 'món', false);

INSERT INTO public.category (id, name, unit, "isDeleted") VALUES (2, 'Sắt đặc', 'kg', false);

INSERT INTO public.category (id, name, unit, "isDeleted") VALUES (3, 'Sắt vụn', 'kg', false);

INSERT INTO public.category (id, name, unit, "isDeleted") VALUES (4, 'Giấy cứng', 'kg', false);

INSERT INTO public.category (id, name, unit, "isDeleted") VALUES (5, 'Giấy photo', 'kg', false);

INSERT INTO public.category (id, name, unit, "isDeleted") VALUES (6, 'Đồng dây', 'kg', false);



--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 213
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 6, true);


--
-- TOC entry 2766 (class 2606 OID 17901)
-- Name: category PK_9c4e4a89e3674fc9f382d733f03; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT "PK_9c4e4a89e3674fc9f382d733f03" PRIMARY KEY (id);


--
-- TOC entry 2768 (class 2606 OID 17903)
-- Name: category UQ_23c05c292c439d77b0de816b500; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT "UQ_23c05c292c439d77b0de816b500" UNIQUE (name);


-- Completed on 2020-03-14 17:05:32

--
-- PostgreSQL database dump complete
--

