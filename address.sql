--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6

-- Started on 2020-03-14 20:38:14

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
-- TOC entry 204 (class 1259 OID 17835)
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    id integer NOT NULL,
    latitude text,
    longitude text,
    "detailsAddress" text NOT NULL,
    "wardId" integer,
    "districtId" integer,
    "provinceId" integer
);


ALTER TABLE public.address OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17833)
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_id_seq OWNER TO postgres;

--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 203
-- Name: address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;


--
-- TOC entry 2763 (class 2604 OID 17838)
-- Name: address id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);


--
-- TOC entry 2891 (class 0 OID 17835)
-- Dependencies: 204
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (1, '10.8310592', '106.6692271', '330 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (2, '10.8310279', '106.6687266', '417 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (3, '10.8310279', '106.6687266', '417 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (4, '10.8310279', '106.6687266', '417 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (5, '10.8310279', '106.6687266', '417 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (6, '10.8310279', '106.6687266', '417 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (7, '10.8310592', '106.6692271', '330 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (8, '10.8310592', '106.6692271', '330 Quang Trung', 78, 6, 1);
INSERT INTO public.address (id, latitude, longitude, "detailsAddress", "wardId", "districtId", "provinceId") VALUES (9, '10.8310592', '106.6692271', '330 Quang Trung', 78, 6, 1);


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 203
-- Name: address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_id_seq', 9, true);


--
-- TOC entry 2765 (class 2606 OID 17843)
-- Name: address PK_d92de1f82754668b5f5f5dd4fd5; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5" PRIMARY KEY (id);


--
-- TOC entry 2766 (class 2606 OID 17967)
-- Name: address FK_36a5ea1bf9f1a45fc696628bda2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_36a5ea1bf9f1a45fc696628bda2" FOREIGN KEY ("wardId") REFERENCES public.ward(id);


--
-- TOC entry 2768 (class 2606 OID 17977)
-- Name: address FK_6b08d352c02976faa2b4b2933c3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_6b08d352c02976faa2b4b2933c3" FOREIGN KEY ("provinceId") REFERENCES public.province(id);


--
-- TOC entry 2767 (class 2606 OID 17972)
-- Name: address FK_89e09cf52a27eec4a04378bbdda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_89e09cf52a27eec4a04378bbdda" FOREIGN KEY ("districtId") REFERENCES public.district(id);


-- Completed on 2020-03-14 20:38:14

--
-- PostgreSQL database dump complete
--

