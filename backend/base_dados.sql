--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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
-- Name: doencas; Type: TABLE; Schema: public; Owner: rbc
--

CREATE TABLE public.doencas (
    id integer NOT NULL,
    "descDoenca" character varying NOT NULL,
    area_damaged character varying NOT NULL,
    canker_lesion character varying NOT NULL,
    crop_hist character varying NOT NULL,
    date character varying NOT NULL,
    external_decay character varying NOT NULL,
    fruit_spots character varying NOT NULL,
    fruiting_bodies character varying NOT NULL,
    fruit_pods character varying NOT NULL,
    germination character varying NOT NULL,
    hail character varying NOT NULL,
    int_discolor character varying NOT NULL,
    leaf_malf character varying NOT NULL,
    leaf_mild character varying NOT NULL,
    leaf_shread character varying NOT NULL,
    leafspots_halo character varying NOT NULL,
    leafspot_size character varying NOT NULL,
    leafspots_marg character varying NOT NULL,
    leaves character varying NOT NULL,
    lodging character varying NOT NULL,
    mold_growth character varying NOT NULL,
    mycelium character varying NOT NULL,
    plant_growth character varying NOT NULL,
    plant_stand character varying NOT NULL,
    precip character varying NOT NULL,
    roots character varying NOT NULL,
    sclerotia character varying NOT NULL,
    seed character varying NOT NULL,
    seed_discolor character varying NOT NULL,
    seed_size character varying NOT NULL,
    seed_tmt character varying NOT NULL,
    severity character varying NOT NULL,
    shriveling character varying NOT NULL,
    stem character varying NOT NULL,
    stem_cankers character varying NOT NULL,
    temp character varying NOT NULL
);


ALTER TABLE public.doencas OWNER TO rbc;

--
-- Name: doencas_id_seq; Type: SEQUENCE; Schema: public; Owner: rbc
--

CREATE SEQUENCE public.doencas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.doencas_id_seq OWNER TO rbc;

--
-- Name: doencas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rbc
--

ALTER SEQUENCE public.doencas_id_seq OWNED BY public.doencas.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: rbc
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migrations OWNER TO rbc;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: rbc
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO rbc;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rbc
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: doencas id; Type: DEFAULT; Schema: public; Owner: rbc
--

ALTER TABLE ONLY public.doencas ALTER COLUMN id SET DEFAULT nextval('public.doencas_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: rbc
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Data for Name: doencas; Type: TABLE DATA; Schema: public; Owner: rbc
--

COPY public.doencas (id, "descDoenca", area_damaged, canker_lesion, crop_hist, date, external_decay, fruit_spots, fruiting_bodies, fruit_pods, germination, hail, int_discolor, leaf_malf, leaf_mild, leaf_shread, leafspots_halo, leafspot_size, leafspots_marg, leaves, lodging, mold_growth, mycelium, plant_growth, plant_stand, precip, roots, sclerotia, seed, seed_discolor, seed_size, seed_tmt, severity, shriveling, stem, stem_cankers, temp) FROM stdin;
1	diaporthe-stem-canker	low-areas	Brown	same-1st-yr	Outubro	firm-and-dry	dna	Present	Norm	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
2	diaporthe-stem-canker	scattered	Brown	same-lst-two-yrs	Agosto	firm-and-dry	dna	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-sec-nde	norm
3	diaporthe-stem-canker	scattered	dna	same-1st-yr	Julho	firm-and-dry	dna	Present	Norm	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-sec-nde	norm
4	diaporthe-stem-canker	scattered	dna	same-1st-yr	Julho	firm-and-dry	dna	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	Above-sec-nde	norm
5	diaporthe-stem-canker	scattered	Brown	same-lst-two-yrs	Outubro	firm-and-dry	dna	Present	Norm	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
6	diaporthe-stem-canker	scattered	dna	same-lst-sev-yrs	Setembro	firm-and-dry	dna	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
7	diaporthe-stem-canker	scattered	Brown	same-lst-two-yrs	Setembro	firm-and-dry	dna	Present	Norm	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Above-sec-nde	norm
8	diaporthe-stem-canker	scattered	Brown	same-1st-yr	Agosto	firm-and-dry	dna	Present	Norm	lt-80%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
9	diaporthe-stem-canker	scattered	Brown	same-lst-sev-yrs	Outubro	firm-and-dry	dna	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Above-sec-nde	norm
10	diaporthe-stem-canker	scattered	Brown	same-lst-two-yrs	Agosto	firm-and-dry	dna	Present	Norm	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	Above-sec-nde	norm
11	charcoal-rot	whole-field	tan	same-1st-yr	Outubro	Absent	dna	Absent	Norm	90-100%	Yes	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	gt-norm
12	charcoal-rot	whole-field	tan	same-1st-yr	Agosto	Absent	dna	Absent	Norm	80-89%	No	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
13	charcoal-rot	upper-areas	tan	same-1st-yr	Julho	Absent	dna	Absent	Norm	90-100%	Yes	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
14	charcoal-rot	whole-field	tan	same-lst-sev-yrs	Outubro	Absent	dna	Absent	Norm	90-100%	No	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
15	charcoal-rot	whole-field	tan	same-1st-yr	Outubro	Absent	dna	Absent	Norm	80-89%	Yes	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	gt-norm
16	charcoal-rot	whole-field	tan	same-lst-sev-yrs	Setembro	Absent	dna	Absent	Norm	lt-80%	No	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	gt-norm
17	charcoal-rot	upper-areas	tan	diff-1st-year	Outubro	Absent	dna	Absent	Norm	90-100%	No	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	gt-norm
18	charcoal-rot	upper-areas	tan	same-lst-two-yrs	Agosto	Absent	dna	Absent	Norm	80-89%	Yes	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
19	charcoal-rot	upper-areas	tan	same-lst-two-yrs	Julho	Absent	dna	Absent	Norm	lt-80%	Yes	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	gt-norm
20	charcoal-rot	upper-areas	tan	same-lst-two-yrs	Setembro	Absent	dna	Absent	Norm	lt-80%	No	Black	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Present	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	gt-norm
21	rhizoctonia-root-rot	low-areas	Brown	same-lst-two-yrs	Maio	firm-and-dry	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Present	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
22	rhizoctonia-root-rot	low-areas	Brown	same-1st-yr	Maio	firm-and-dry	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
23	rhizoctonia-root-rot	low-areas	Brown	same-lst-sev-yrs	Julho	firm-and-dry	dna	Absent	dna	80-89%	No	None	Absent	Absent	absent	absent	dna	dna	Norm	No	Absent	Present	Abnorm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
24	rhizoctonia-root-rot	low-areas	Brown	diff-1st-year	Abril	firm-and-dry	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	below-soil	lt-norm
25	rhizoctonia-root-rot	low-areas	Brown	same-1st-yr	Abril	firm-and-dry	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	below-soil	lt-norm
26	rhizoctonia-root-rot	low-areas	Brown	same-lst-sev-yrs	Maio	firm-and-dry	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
27	rhizoctonia-root-rot	low-areas	Brown	diff-1st-year	Maio	firm-and-dry	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	below-soil	lt-norm
29	rhizoctonia-root-rot	low-areas	Brown	same-1st-yr	Maio	firm-and-dry	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
30	rhizoctonia-root-rot	low-areas	Brown	same-1st-yr	Junho	firm-and-dry	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
31	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Abril	firm-and-dry	dna	Absent	dna	90-100%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	below-soil	norm
32	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Maio	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	norm
33	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	gt-norm
34	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Maio	Absent	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-soil	lt-norm
35	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	gt-norm
36	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	norm
37	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Abril	Absent	dna	Absent	dna	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	below-soil	norm
38	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Julho	Absent	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-soil	lt-norm
39	phytophthora-rot	low-areas	dk-brown-blk	diff-1st-year	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	Normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	norm
40	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Junho	Absent	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
41	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	norm
42	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Maio	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	below-soil	norm
43	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Abril	Absent	dna	Absent	dna	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	below-soil	norm
44	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Abril	firm-and-dry	dna	Absent	dna	90-100%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-soil	norm
45	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Julho	Absent	dna	Absent	dna	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-soil	lt-norm
46	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	gt-norm
47	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Abril	Absent	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	below-soil	norm
48	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	Normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	gt-norm
49	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Junho	firm-and-dry	dna	Absent	dna	lt-80%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	norm
50	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Abril	Absent	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	below-soil	norm
51	phytophthora-rot	low-areas	dk-brown-blk	diff-1st-year	Maio	Absent	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-soil	norm
52	phytophthora-rot	low-areas	dk-brown-blk	diff-1st-year	Maio	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	below-soil	norm
53	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	norm
54	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	norm
55	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	gt-norm
56	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Maio	firm-and-dry	dna	Absent	dna	80-89%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	norm
57	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	Normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	norm
58	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	gt-norm
59	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	Normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	gt-norm
60	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Maio	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	below-soil	gt-norm
61	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	gt-norm
62	phytophthora-rot	low-areas	dk-brown-blk	diff-1st-year	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	Normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	norm
63	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Junho	Absent	dna	Absent	dna	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	below-soil	lt-norm
64	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	Normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	norm
65	phytophthora-rot	low-areas	dk-brown-blk	same-1st-yr	Junho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	below-soil	gt-norm
66	phytophthora-rot	low-areas	dk-brown-blk	diff-1st-year	Maio	Absent	dna	Absent	dna	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-soil	lt-norm
67	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-soil	norm
68	phytophthora-rot	low-areas	dk-brown-blk	same-lst-sev-yrs	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	norm
69	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Julho	Absent	dna	Absent	dna	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Above-soil	lt-norm
70	phytophthora-rot	low-areas	dk-brown-blk	same-lst-two-yrs	Julho	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Desconhecido	Absent	Abnorm	lt-normal	gt-normal	Rotted	Absent	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Above-sec-nde	gt-norm
71	brown-stem-rot	whole-field	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
72	brown-stem-rot	whole-field	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
73	brown-stem-rot	scattered	tan	same-lst-sev-yrs	Julho	Absent	dna	Absent	Norm	lt-80%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	lt-norm
74	brown-stem-rot	whole-field	dna	same-1st-yr	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	gt-norm
75	brown-stem-rot	whole-field	dna	same-lst-two-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	gt-norm
76	brown-stem-rot	upper-areas	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
77	brown-stem-rot	whole-field	tan	same-lst-sev-yrs	Setembro	Absent	dna	Absent	Norm	lt-80%	No	Brown	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	No	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
78	brown-stem-rot	scattered	tan	same-lst-two-yrs	Outubro	Absent	dna	Absent	Norm	90-100%	No	Brown	Absent	Absent	absent	absent	gt-1/8	dna	Norm	No	Absent	Absent	Abnorm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
79	brown-stem-rot	upper-areas	tan	same-lst-sev-yrs	Setembro	Absent	dna	Absent	Norm	90-100%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	lt-norm
80	brown-stem-rot	whole-field	tan	same-1st-yr	Setembro	Absent	dna	Absent	Norm	90-100%	Yes	Brown	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	No	Absent	Absent	Abnorm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
81	brown-stem-rot	whole-field	tan	same-lst-two-yrs	Agosto	Absent	dna	Absent	Norm	lt-80%	No	Brown	Absent	Absent	absent	absent	dna	dna	Norm	No	Absent	Absent	Abnorm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	lt-norm
82	brown-stem-rot	upper-areas	tan	same-lst-sev-yrs	Agosto	Absent	dna	Absent	Norm	80-89%	Yes	Brown	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	No	Absent	Absent	Abnorm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	lt-norm
83	brown-stem-rot	scattered	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
84	brown-stem-rot	scattered	tan	same-lst-two-yrs	Julho	Absent	dna	Absent	Norm	80-89%	Yes	Brown	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	Absent	lt-norm
85	brown-stem-rot	upper-areas	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
86	brown-stem-rot	whole-field	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
87	brown-stem-rot	upper-areas	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
88	brown-stem-rot	upper-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Absent	norm
89	brown-stem-rot	upper-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
90	brown-stem-rot	upper-areas	dna	same-lst-sev-yrs	Julho	Absent	Absent	Absent	Norm	90-100%	Yes	Brown	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Absent	norm
91	powdery-mildew	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
92	powdery-mildew	scattered	dna	diff-1st-year	Outubro	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	lt-norm
93	powdery-mildew	whole-field	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Norm	Absent	norm
94	powdery-mildew	upper-areas	dna	same-lst-two-yrs	Outubro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	lt-norm
95	powdery-mildew	upper-areas	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	Outros	Minor	Absent	Norm	Absent	lt-norm
96	powdery-mildew	low-areas	dna	same-1st-yr	Outubro	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
97	powdery-mildew	upper-areas	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	lt-norm
98	powdery-mildew	low-areas	dna	same-1st-yr	Outubro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
99	powdery-mildew	low-areas	dna	same-1st-yr	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
100	powdery-mildew	low-areas	dna	same-1st-yr	Maio	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Upper-surf	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	lt-normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Norm	Absent	norm
101	downy-mildew	low-areas	dna	same-lst-two-yrs	Outubro	Absent	Absent	Absent	Norm	lt-80%	No	None	Present	Lower-surf	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	lt-norm
102	downy-mildew	low-areas	dna	same-1st-yr	Junho	Absent	Absent	Absent	Norm	lt-80%	No	None	Present	Lower-surf	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
103	downy-mildew	upper-areas	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Lower-surf	absent	yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
104	downy-mildew	upper-areas	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Present	Lower-surf	absent	yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
105	downy-mildew	scattered	dna	diff-1st-year	Maio	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Lower-surf	absent	yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	lt-norm
106	downy-mildew	scattered	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Lower-surf	absent	yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	lt-norm
107	downy-mildew	scattered	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Lower-surf	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
108	downy-mildew	low-areas	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Lower-surf	absent	yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
109	downy-mildew	upper-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Lower-surf	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	lt-norm
110	downy-mildew	upper-areas	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Lower-surf	absent	yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
111	brown-spot	whole-field	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
112	brown-spot	whole-field	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
113	brown-spot	whole-field	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
114	brown-spot	scattered	dna	same-1st-yr	Junho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Norm	Absent	norm
115	brown-spot	whole-field	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
116	brown-spot	whole-field	dna	same-lst-two-yrs	Maio	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
117	brown-spot	whole-field	dna	same-lst-sev-yrs	Abril	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Norm	Absent	gt-norm
118	brown-spot	whole-field	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
119	brown-spot	whole-field	dna	same-lst-two-yrs	Maio	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
120	brown-spot	whole-field	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
121	brown-spot	upper-areas	Brown	same-lst-two-yrs	Setembro	Absent	Absent	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
122	brown-spot	whole-field	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
123	brown-spot	whole-field	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Norm	Absent	norm
124	brown-spot	whole-field	Brown	same-1st-yr	Agosto	Absent	Absent	Present	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
125	brown-spot	whole-field	dna	same-lst-two-yrs	Maio	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
126	brown-spot	whole-field	Brown	same-lst-sev-yrs	Agosto	Absent	Absent	Present	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
127	brown-spot	whole-field	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
128	brown-spot	upper-areas	dna	same-lst-two-yrs	Abril	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	Outros	Minor	Absent	Norm	Absent	norm
129	brown-spot	scattered	dna	same-lst-two-yrs	Maio	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
130	brown-spot	scattered	dna	same-1st-yr	Maio	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Norm	Absent	norm
131	brown-spot	whole-field	Brown	same-1st-yr	Maio	Absent	Absent	Present	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
132	brown-spot	whole-field	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
133	brown-spot	whole-field	tan	same-lst-two-yrs	Julho	firm-and-dry	Absent	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	severe	Absent	Abnorm	Absent	norm
134	brown-spot	low-areas	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	90-100%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
135	brown-spot	whole-field	dna	same-lst-two-yrs	Maio	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Norm	Absent	norm
136	brown-spot	whole-field	dna	same-lst-two-yrs	Maio	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
137	brown-spot	whole-field	Brown	same-1st-yr	Setembro	Absent	Absent	Present	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
138	brown-spot	upper-areas	Brown	same-lst-two-yrs	Agosto	Absent	Colored	Present	Norm	lt-80%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Abnorm	Above-sec-nde	norm
139	brown-spot	whole-field	Brown	same-1st-yr	Julho	Absent	Absent	Present	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
140	brown-spot	whole-field	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
141	brown-spot	whole-field	tan	same-lst-two-yrs	Agosto	firm-and-dry	Absent	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	severe	Absent	Abnorm	Absent	norm
142	brown-spot	whole-field	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
143	brown-spot	scattered	dna	diff-1st-year	Junho	Absent	Absent	Absent	Norm	90-100%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
144	brown-spot	low-areas	Brown	same-lst-sev-yrs	Julho	Absent	Absent	Present	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
145	brown-spot	whole-field	tan	same-lst-sev-yrs	Julho	firm-and-dry	Absent	Present	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	severe	Absent	Abnorm	Absent	norm
146	brown-spot	upper-areas	Brown	same-lst-two-yrs	Junho	Absent	Absent	Present	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
147	brown-spot	low-areas	dna	same-lst-sev-yrs	Julho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
148	brown-spot	low-areas	Brown	same-lst-sev-yrs	Julho	Absent	Absent	Present	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
149	brown-spot	whole-field	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	severe	Absent	Norm	Absent	norm
150	brown-spot	whole-field	tan	same-lst-sev-yrs	Setembro	firm-and-dry	Absent	Present	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	severe	Absent	Abnorm	Absent	norm
151	bacterial-blight	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	90-100%	No	None	Absent	Absent	Present	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
152	bacterial-blight	whole-field	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	Present	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
153	bacterial-blight	scattered	dna	diff-1st-year	Junho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
154	bacterial-blight	upper-areas	dna	same-1st-yr	Julho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
155	bacterial-blight	upper-areas	dna	same-lst-sev-yrs	Julho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Present	Absent	Present	yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
156	bacterial-blight	low-areas	dna	same-lst-two-yrs	Julho	Absent	Absent	Absent	Norm	90-100%	No	None	Absent	Absent	Present	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
157	bacterial-blight	scattered	dna	same-1st-yr	Julho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	Present	yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
158	bacterial-blight	whole-field	dna	diff-1st-year	Agosto	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	Present	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
159	bacterial-blight	low-areas	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
160	bacterial-blight	low-areas	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Absent	Present	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
161	bacterial-pustule	upper-areas	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	galls-cysts	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	gt-norm
162	bacterial-pustule	whole-field	dna	same-lst-two-yrs	Julho	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	Present	no-yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Present	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	fungicida	pot-severe	Absent	Norm	Absent	lt-norm
163	bacterial-pustule	scattered	dna	diff-1st-year	Junho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	lt-norm
164	bacterial-pustule	scattered	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Present	Absent	Present	yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Rotted	Absent	Norm	Absent	lt-norm	none	pot-severe	Absent	Norm	Absent	norm
165	bacterial-pustule	low-areas	dna	same-1st-yr	Julho	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	Present	yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Present	Absent	Norm	Normal	gt-normal	Rotted	Absent	Abnorm	Present	lt-norm	none	pot-severe	Absent	Norm	Absent	norm
166	bacterial-pustule	scattered	dna	same-lst-two-yrs	Julho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Rotted	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	lt-norm
167	bacterial-pustule	whole-field	dna	same-lst-two-yrs	Julho	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	Present	yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Present	Absent	Abnorm	Normal	Normal	Norm	Absent	Abnorm	Present	lt-norm	none	Minor	Absent	Norm	Absent	norm
168	bacterial-pustule	upper-areas	dna	diff-1st-year	Julho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Rotted	Absent	Norm	Absent	lt-norm	none	pot-severe	Absent	Norm	Absent	norm
169	bacterial-pustule	whole-field	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	Present	yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Present	Absent	Norm	Normal	Normal	Norm	Absent	Abnorm	Present	lt-norm	none	Minor	Absent	Norm	Absent	norm
170	bacterial-pustule	scattered	dna	same-lst-two-yrs	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	yellow-halos	lt-1/8	no-w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Rotted	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
171	purple-seed-stain	upper-areas	tan	same-lst-two-yrs	Outubro	Absent	Colored	Absent	Diseased	90-100%	No	None	Absent	Absent	absent	absent	dna	dna	Norm	No	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	none	Minor	Absent	Abnorm	Absent	lt-norm
172	purple-seed-stain	upper-areas	tan	same-lst-two-yrs	Outubro	Absent	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	fungicida	Minor	Absent	Abnorm	Absent	lt-norm
173	purple-seed-stain	low-areas	tan	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	fungicida	Minor	Absent	Norm	Absent	norm
174	purple-seed-stain	scattered	tan	diff-1st-year	Agosto	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	absent	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	No	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	none	Minor	Absent	Norm	Absent	norm
175	purple-seed-stain	scattered	tan	diff-1st-year	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	none	Minor	Absent	Norm	Absent	lt-norm
176	purple-seed-stain	upper-areas	tan	same-lst-two-yrs	Outubro	Absent	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	none	Minor	Absent	Abnorm	Absent	gt-norm
177	purple-seed-stain	scattered	tan	diff-1st-year	Julho	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	absent	absent	dna	dna	Norm	No	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	none	Minor	Absent	Norm	Absent	lt-norm
178	purple-seed-stain	whole-field	tan	same-lst-sev-yrs	Julho	Absent	Absent	Absent	Norm	80-89%	No	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	fungicida	Minor	Absent	Norm	Absent	norm
179	purple-seed-stain	low-areas	tan	same-1st-yr	Setembro	Absent	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	lt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	none	Minor	Absent	Abnorm	Absent	norm
180	purple-seed-stain	scattered	tan	diff-1st-year	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	fungicida	Minor	Absent	Abnorm	Absent	norm
181	anthracnose	whole-field	dk-brown-blk	same-lst-sev-yrs	Setembro	Absent	Brown-w/blk-specks	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Above-sec-nde	norm
182	anthracnose	upper-areas	Brown	same-lst-two-yrs	Setembro	firm-and-dry	Brown-w/blk-specks	Present	Diseased	lt-80%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	fungicida	Minor	Present	Abnorm	Above-sec-nde	gt-norm
183	anthracnose	low-areas	dk-brown-blk	same-1st-yr	Outubro	Absent	Brown-w/blk-specks	Present	Diseased	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Present	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	fungicida	pot-severe	Present	Abnorm	Above-sec-nde	norm
184	anthracnose	scattered	Brown	diff-1st-year	Junho	firm-and-dry	Absent	Absent	Norm	90-100%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-soil	gt-norm
185	anthracnose	whole-field	dk-brown-blk	same-lst-sev-yrs	Julho	firm-and-dry	Brown-w/blk-specks	Present	Diseased	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Present	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
186	anthracnose	upper-areas	Brown	same-lst-two-yrs	Agosto	firm-and-dry	Brown-w/blk-specks	Present	Diseased	80-89%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	gt-norm
187	anthracnose	upper-areas	dk-brown-blk	same-lst-two-yrs	Outubro	Absent	Brown-w/blk-specks	Present	Diseased	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Present	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	none	pot-severe	Present	Abnorm	Above-sec-nde	norm
188	anthracnose	low-areas	dk-brown-blk	same-1st-yr	Maio	firm-and-dry	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	fungicida	pot-severe	Absent	Abnorm	Above-soil	norm
189	anthracnose	upper-areas	dk-brown-blk	same-lst-two-yrs	Outubro	Absent	Brown-w/blk-specks	Present	Diseased	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	fungicida	pot-severe	Present	Abnorm	Above-sec-nde	norm
190	anthracnose	low-areas	dk-brown-blk	same-1st-yr	Setembro	firm-and-dry	Brown-w/blk-specks	Present	Diseased	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Present	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Abnorm	Present	Norm	Outros	pot-severe	Absent	Abnorm	Above-sec-nde	norm
191	anthracnose	whole-field	dk-brown-blk	same-lst-sev-yrs	Setembro	firm-and-dry	Brown-w/blk-specks	Present	Diseased	lt-80%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
192	anthracnose	whole-field	dk-brown-blk	same-lst-sev-yrs	Abril	firm-and-dry	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Present	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	fungicida	pot-severe	Absent	Abnorm	Above-soil	norm
193	anthracnose	upper-areas	Brown	same-lst-two-yrs	Outubro	firm-and-dry	Brown-w/blk-specks	Present	Diseased	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Abnorm	Normal	gt-normal	Norm	Absent	Abnorm	Present	lt-norm	none	Minor	Present	Abnorm	Above-sec-nde	norm
194	anthracnose	low-areas	dk-brown-blk	same-1st-yr	Setembro	Absent	Brown-w/blk-specks	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	none	pot-severe	Present	Abnorm	Above-sec-nde	norm
195	anthracnose	upper-areas	dk-brown-blk	same-lst-two-yrs	Setembro	Absent	Brown-w/blk-specks	Present	Diseased	lt-80%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
196	anthracnose	scattered	Brown	diff-1st-year	Outubro	firm-and-dry	Brown-w/blk-specks	Present	Diseased	80-89%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	gt-norm
197	anthracnose	low-areas	dk-brown-blk	same-1st-yr	Setembro	Absent	Brown-w/blk-specks	Present	Diseased	90-100%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Present	Absent	Norm	Normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	none	pot-severe	Present	Abnorm	Above-sec-nde	norm
198	anthracnose	whole-field	dk-brown-blk	same-lst-sev-yrs	Outubro	firm-and-dry	Brown-w/blk-specks	Present	Diseased	80-89%	No	None	Absent	Absent	absent	absent	dna	dna	Abnorm	No	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	Outros	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
199	anthracnose	whole-field	dk-brown-blk	same-lst-sev-yrs	Setembro	Absent	Brown-w/blk-specks	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	none	pot-severe	Present	Abnorm	Above-sec-nde	norm
200	anthracnose	upper-areas	dk-brown-blk	same-lst-two-yrs	Setembro	Absent	Brown-w/blk-specks	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Present	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Abnorm	Absent	lt-norm	fungicida	pot-severe	Present	Abnorm	Above-sec-nde	norm
201	phyllosticta-leaf-spot	upper-areas	dna	diff-1st-year	Julho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
202	phyllosticta-leaf-spot	upper-areas	dna	diff-1st-year	Julho	Absent	Absent	Absent	Norm	80-89%	No	None	Present	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
203	phyllosticta-leaf-spot	scattered	dna	diff-1st-year	Julho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
204	phyllosticta-leaf-spot	scattered	dna	same-lst-two-yrs	Julho	Absent	Absent	Absent	Norm	90-100%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
205	phyllosticta-leaf-spot	upper-areas	dna	same-lst-sev-yrs	Julho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Present	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
206	phyllosticta-leaf-spot	whole-field	dna	diff-1st-year	Junho	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	Outros	Minor	Absent	Norm	Absent	norm
207	phyllosticta-leaf-spot	upper-areas	dna	same-lst-sev-yrs	Maio	Absent	Absent	Absent	Norm	80-89%	No	None	Present	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
208	phyllosticta-leaf-spot	upper-areas	dna	same-lst-two-yrs	Junho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Present	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
209	phyllosticta-leaf-spot	scattered	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	90-100%	No	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Abnorm	Normal	lt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
210	phyllosticta-leaf-spot	whole-field	dna	same-lst-sev-yrs	Junho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	Outros	Minor	Absent	Norm	Absent	gt-norm
211	alternarialeaf-spot	low-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
212	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
213	alternarialeaf-spot	scattered	dna	diff-1st-year	Julho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
214	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Outubro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
215	alternarialeaf-spot	upper-areas	dna	same-lst-two-yrs	Outubro	Absent	Absent	Absent	Norm	lt-80%	No	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Abnorm	Present	Norm	Outros	Minor	Absent	Norm	Absent	norm
216	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
217	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Outubro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
218	alternarialeaf-spot	low-areas	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	gt-norm
219	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Outubro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
220	alternarialeaf-spot	upper-areas	dna	same-lst-sev-yrs	Outubro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
221	alternarialeaf-spot	whole-field	dna	same-lst-two-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	gt-norm
222	alternarialeaf-spot	scattered	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
223	alternarialeaf-spot	low-areas	dna	same-1st-yr	Outubro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
224	alternarialeaf-spot	upper-areas	dna	same-lst-two-yrs	Setembro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
225	alternarialeaf-spot	scattered	dna	diff-1st-year	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
226	alternarialeaf-spot	upper-areas	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
227	alternarialeaf-spot	low-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
228	alternarialeaf-spot	low-areas	dna	same-lst-two-yrs	Setembro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
229	alternarialeaf-spot	upper-areas	dna	same-lst-sev-yrs	Outubro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
230	alternarialeaf-spot	low-areas	dna	same-1st-yr	Outubro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
231	alternarialeaf-spot	low-areas	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
232	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	gt-norm
233	alternarialeaf-spot	low-areas	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
234	alternarialeaf-spot	upper-areas	dna	same-lst-two-yrs	Outubro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	Normal	Norm	Absent	Abnorm	Present	Norm	Outros	Minor	Absent	Norm	Absent	gt-norm
235	alternarialeaf-spot	upper-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
236	alternarialeaf-spot	low-areas	dna	same-lst-two-yrs	Outubro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
237	alternarialeaf-spot	whole-field	dna	diff-1st-year	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
238	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
239	alternarialeaf-spot	whole-field	dna	same-lst-two-yrs	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
240	alternarialeaf-spot	scattered	dna	diff-1st-year	Julho	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
241	alternarialeaf-spot	upper-areas	dna	same-1st-yr	Setembro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
242	alternarialeaf-spot	low-areas	dna	same-1st-yr	Setembro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
243	alternarialeaf-spot	low-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
244	alternarialeaf-spot	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
245	alternarialeaf-spot	low-areas	dna	same-lst-two-yrs	Outubro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
246	alternarialeaf-spot	whole-field	dna	diff-1st-year	Setembro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
247	alternarialeaf-spot	whole-field	dna	diff-1st-year	Outubro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
248	alternarialeaf-spot	low-areas	dna	same-lst-two-yrs	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	gt-norm
249	alternarialeaf-spot	scattered	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
250	alternarialeaf-spot	upper-areas	dna	same-1st-yr	Outubro	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	Present	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
251	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-lst-sev-yrs	Outubro	firm-and-dry	Brown-w/blk-specks	Present	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Abnorm	Absent	Norm	none	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
252	frog-eye-leaf-spot	low-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	gt-norm
253	frog-eye-leaf-spot	low-areas	Brown	same-lst-two-yrs	Setembro	firm-and-dry	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Abnorm	Above-sec-nde	norm
254	frog-eye-leaf-spot	upper-areas	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
255	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-lst-sev-yrs	Outubro	firm-and-dry	Colored	Absent	Diseased	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
256	frog-eye-leaf-spot	whole-field	dna	same-lst-sev-yrs	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
257	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-lst-two-yrs	Julho	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	norm
258	frog-eye-leaf-spot	upper-areas	dk-brown-blk	same-lst-two-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
259	frog-eye-leaf-spot	low-areas	dna	same-1st-yr	Setembro	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
260	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-lst-two-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
261	frog-eye-leaf-spot	low-areas	dk-brown-blk	diff-1st-year	Setembro	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	norm
262	frog-eye-leaf-spot	whole-field	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
263	frog-eye-leaf-spot	low-areas	dk-brown-blk	same-1st-yr	Agosto	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Above-sec-nde	gt-norm
264	frog-eye-leaf-spot	low-areas	Brown	same-lst-two-yrs	Agosto	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Above-sec-nde	norm
265	frog-eye-leaf-spot	upper-areas	dk-brown-blk	same-lst-sev-yrs	Julho	firm-and-dry	Colored	Absent	Diseased	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
266	frog-eye-leaf-spot	scattered	Brown	same-lst-sev-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
267	frog-eye-leaf-spot	low-areas	dk-brown-blk	same-1st-yr	Setembro	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
268	frog-eye-leaf-spot	upper-areas	dk-brown-blk	same-1st-yr	Agosto	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	gt-norm
269	frog-eye-leaf-spot	low-areas	dk-brown-blk	same-lst-two-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
270	frog-eye-leaf-spot	scattered	Brown	same-lst-sev-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
271	frog-eye-leaf-spot	upper-areas	dna	same-1st-yr	Julho	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
272	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-lst-sev-yrs	Outubro	Absent	Brown-w/blk-specks	Present	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Abnorm	Present	lt-norm	fungicida	Minor	Present	Abnorm	Above-sec-nde	gt-norm
273	frog-eye-leaf-spot	whole-field	dna	same-1st-yr	Setembro	Absent	Colored	Present	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	Normal	Norm	Absent	Norm	Absent	Norm	Outros	pot-severe	Absent	Abnorm	Above-sec-nde	norm
274	frog-eye-leaf-spot	upper-areas	Brown	same-lst-sev-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	norm
275	frog-eye-leaf-spot	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Norm	Absent	norm
276	frog-eye-leaf-spot	scattered	dna	same-lst-sev-yrs	Julho	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
277	frog-eye-leaf-spot	low-areas	dk-brown-blk	same-lst-sev-yrs	Outubro	firm-and-dry	Colored	Absent	Diseased	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
278	frog-eye-leaf-spot	upper-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
279	frog-eye-leaf-spot	scattered	dk-brown-blk	same-1st-yr	Agosto	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	Above-sec-nde	gt-norm
280	frog-eye-leaf-spot	scattered	dk-brown-blk	same-lst-sev-yrs	Outubro	firm-and-dry	Colored	Absent	Diseased	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
281	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-lst-sev-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
282	frog-eye-leaf-spot	low-areas	dna	diff-1st-year	Agosto	Absent	Absent	Absent	Norm	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Norm	Absent	norm
283	frog-eye-leaf-spot	whole-field	Brown	same-lst-two-yrs	Agosto	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Above-sec-nde	norm
284	frog-eye-leaf-spot	low-areas	dna	same-1st-yr	Agosto	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Abnorm	lt-normal	Normal	Norm	Absent	Norm	Absent	Norm	Outros	Minor	Absent	Norm	Absent	gt-norm
285	frog-eye-leaf-spot	scattered	dna	same-lst-two-yrs	Agosto	Absent	Absent	Absent	Norm	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Norm	Absent	norm
286	frog-eye-leaf-spot	upper-areas	dna	same-1st-yr	Setembro	Absent	Absent	Absent	Norm	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Norm	Absent	norm
287	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-1st-yr	Agosto	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	pot-severe	Absent	Abnorm	Above-sec-nde	gt-norm
288	frog-eye-leaf-spot	upper-areas	dk-brown-blk	same-1st-yr	Setembro	firm-and-dry	Colored	Absent	Diseased	90-100%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Abnorm	Above-sec-nde	norm
289	frog-eye-leaf-spot	scattered	dk-brown-blk	same-lst-two-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	80-89%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	Normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	Minor	Absent	Abnorm	Above-sec-nde	gt-norm
290	frog-eye-leaf-spot	whole-field	dk-brown-blk	same-lst-two-yrs	Setembro	firm-and-dry	Colored	Absent	Diseased	lt-80%	Yes	None	Absent	Absent	absent	no-yellow-halos	gt-1/8	w-s-marg	Abnorm	Yes	Absent	Absent	Norm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	fungicida	Minor	Absent	Abnorm	Above-sec-nde	norm
291	diaporthe-pod-&-stem-blight	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Brown-w/blk-specks	Present	Diseased	90-100%	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Present	Absent	Norm	Normal	gt-normal	Desconhecido	Absent	Norm	Present	lt-norm	Desconhecido	Desconhecido	Present	Abnorm	Absent	gt-norm
292	diaporthe-pod-&-stem-blight	whole-field	dna	same-lst-two-yrs	Outubro	Absent	Brown-w/blk-specks	Present	Diseased	80-89%	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Present	Absent	Norm	Normal	gt-normal	Desconhecido	Absent	Abnorm	Present	lt-norm	Desconhecido	Desconhecido	Present	Abnorm	Absent	gt-norm
293	diaporthe-pod-&-stem-blight	whole-field	dna	same-lst-sev-yrs	Setembro	Absent	Brown-w/blk-specks	Present	Diseased	90-100%	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Present	Absent	Norm	Normal	gt-normal	Desconhecido	Absent	Abnorm	Present	lt-norm	Desconhecido	Desconhecido	Present	Abnorm	Absent	gt-norm
294	diaporthe-pod-&-stem-blight	scattered	dna	same-lst-sev-yrs	Maio	Absent	Brown-w/blk-specks	Present	Diseased	lt-80%	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Present	Absent	Norm	lt-normal	Normal	Desconhecido	Absent	Norm	Present	lt-norm	Desconhecido	Desconhecido	Present	Abnorm	Absent	gt-norm
295	diaporthe-pod-&-stem-blight	whole-field	dna	same-lst-two-yrs	Setembro	Absent	Brown-w/blk-specks	Present	Diseased	Desconhecido	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Present	Absent	Norm	Desconhecido	gt-normal	Desconhecido	Absent	Abnorm	Present	lt-norm	Desconhecido	Desconhecido	Present	Abnorm	Absent	gt-norm
297	cyst-nematode	low-areas	Desconhecido	same-lst-two-yrs	Junho	Desconhecido	Desconhecido	Desconhecido	few-present	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Absent	Desconhecido	Abnorm	Desconhecido	Desconhecido	galls-cysts	Desconhecido	Abnorm	Desconhecido	lt-norm	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Desconhecido
298	cyst-nematode	upper-areas	Desconhecido	same-lst-sev-yrs	Julho	Desconhecido	Desconhecido	Desconhecido	few-present	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Absent	Desconhecido	Abnorm	Desconhecido	Desconhecido	galls-cysts	Desconhecido	Abnorm	Desconhecido	lt-norm	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Desconhecido
299	cyst-nematode	upper-areas	Desconhecido	same-lst-sev-yrs	Agosto	Desconhecido	Desconhecido	Desconhecido	few-present	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Absent	Desconhecido	Abnorm	Desconhecido	Desconhecido	galls-cysts	Desconhecido	Abnorm	Desconhecido	lt-norm	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Desconhecido
300	cyst-nematode	low-areas	Desconhecido	same-lst-two-yrs	Julho	Desconhecido	Desconhecido	Desconhecido	few-present	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Absent	Desconhecido	Abnorm	Desconhecido	Desconhecido	galls-cysts	Desconhecido	Abnorm	Desconhecido	lt-norm	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Desconhecido
301	cyst-nematode	low-areas	Desconhecido	same-lst-two-yrs	Julho	Desconhecido	Desconhecido	Desconhecido	few-present	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Absent	Desconhecido	Abnorm	Desconhecido	Desconhecido	galls-cysts	Desconhecido	Abnorm	Desconhecido	lt-norm	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Desconhecido
302	cyst-nematode	low-areas	Desconhecido	same-lst-two-yrs	Agosto	Desconhecido	Desconhecido	Desconhecido	few-present	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	Absent	Desconhecido	Abnorm	Desconhecido	Desconhecido	galls-cysts	Desconhecido	Abnorm	Desconhecido	lt-norm	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Desconhecido
303	2-4-d-injury	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Present	Desconhecido	Desconhecido	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido
304	herbicide-injury	scattered	Desconhecido	same-1st-yr	Maio	Desconhecido	Desconhecido	Desconhecido	dna	Desconhecido	Desconhecido	Desconhecido	Present	Desconhecido	absent	no-yellow-halos	gt-1/8	no-w-s-marg	Abnorm	Desconhecido	Desconhecido	Desconhecido	Abnorm	lt-normal	Desconhecido	Rotted	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	lt-norm
305	herbicide-injury	whole-field	Desconhecido	diff-1st-year	Abril	Desconhecido	Desconhecido	Desconhecido	dna	Desconhecido	Desconhecido	Desconhecido	Present	Desconhecido	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Desconhecido	Abnorm	lt-normal	Desconhecido	Rotted	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	lt-norm
306	herbicide-injury	scattered	Desconhecido	diff-1st-year	Maio	Desconhecido	Desconhecido	Desconhecido	dna	Desconhecido	Desconhecido	Desconhecido	Present	Desconhecido	absent	absent	dna	dna	Abnorm	Desconhecido	Desconhecido	Desconhecido	Abnorm	lt-normal	Desconhecido	Rotted	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	lt-norm
307	herbicide-injury	whole-field	Desconhecido	same-1st-yr	Maio	Desconhecido	Desconhecido	Desconhecido	dna	Desconhecido	Desconhecido	Desconhecido	Present	Desconhecido	absent	no-yellow-halos	gt-1/8	no-w-s-marg	Abnorm	Desconhecido	Desconhecido	Desconhecido	Abnorm	lt-normal	Desconhecido	Rotted	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Abnorm	Desconhecido	lt-norm
28	rhizoctonia-root-rot	low-areas	Brown	same-lst-two-yrs	Junho	firm-and-dry	dna	Absent	dna	80-89%	Yes	None	Absent	Absent	absent	absent	dna	dna	Norm	Yes	Absent	Absent	Abnorm	lt-normal	gt-normal	Norm	Absent	Norm	Absent	Norm	none	pot-severe	Absent	Abnorm	below-soil	lt-norm
296	diaporthe-pod-&-stem-blight	whole-field	dna	same-lst-two-yrs	Setembro	Absent	Brown-w/blk-specks	Present	Diseased	90-100%	Desconhecido	None	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Desconhecido	Norm	Desconhecido	Present	Absent	Norm	Normal	gt-normal	Desconhecido	Absent	Abnorm	Desconhecido	lt-norm	Desconhecido	Desconhecido	Present	Abnorm	Absent	gt-norm
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: rbc
--

COPY public.migrations (id, "timestamp", name) FROM stdin;
2	1728380679021	CreateDoencasTable1728380679021
\.


--
-- Name: doencas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rbc
--

SELECT pg_catalog.setval('public.doencas_id_seq', 311, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rbc
--

SELECT pg_catalog.setval('public.migrations_id_seq', 2, true);


--
-- Name: doencas PK_87c5d225da552e807b2afd255ee; Type: CONSTRAINT; Schema: public; Owner: rbc
--

ALTER TABLE ONLY public.doencas
    ADD CONSTRAINT "PK_87c5d225da552e807b2afd255ee" PRIMARY KEY (id);


--
-- Name: migrations PK_8c82d7f526340ab734260ea46be; Type: CONSTRAINT; Schema: public; Owner: rbc
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

