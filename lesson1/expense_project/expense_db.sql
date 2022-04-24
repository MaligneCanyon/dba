--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.17
-- Dumped by pg_dump version 9.5.17

SET statement_timeout = 0;
SET lock_timeout = 0;
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
-- Name: expenses; Type: TABLE; Schema: public; Owner: gmk
--

CREATE TABLE public.expenses (
    id integer NOT NULL,
    amount numeric(6,2) DEFAULT 0.00,
    memo text,
    created_on text DEFAULT ('now'::text)::date,
    CONSTRAINT expenses_amount_check CHECK ((amount > 0.00))
);


ALTER TABLE public.expenses OWNER TO gmk;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: gmk
--

CREATE SEQUENCE public.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.expenses_id_seq OWNER TO gmk;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gmk
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: gmk
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: gmk
--

INSERT INTO public.expenses VALUES (1, 9999.99, 'max amount', '2019-10-23');
INSERT INTO public.expenses VALUES (3, 14.56, 'Pencils', '2019-10-23');
INSERT INTO public.expenses VALUES (4, 3.29, 'Coffee', '2019-10-23');
INSERT INTO public.expenses VALUES (5, 49.99, 'Text Editor', '2019-10-23');
INSERT INTO public.expenses VALUES (6, 1.23, 'some text', '2019-10-24');
INSERT INTO public.expenses VALUES (7, 1.99, 'Paper', '2019-10-24');
INSERT INTO public.expenses VALUES (8, 1.90, 'Paper', '2019-10-24');
INSERT INTO public.expenses VALUES (9, 2.00, 'TP', '2019-10-24');
INSERT INTO public.expenses VALUES (10, 43.23, 'Gas for My Car', '2019-10-24');


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gmk
--

SELECT pg_catalog.setval('public.expenses_id_seq', 10, true);


--
-- Name: expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: gmk
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

