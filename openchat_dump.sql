--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    sms text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    name character varying(20),
    room character varying,
    CONSTRAINT messages_sms_check CHECK ((array_length(string_to_array(sms, ' '::text), 1) <= 100))
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.messages_id_seq OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, sms, created_at, name, room) FROM stdin;
174	hello from firefox	2025-08-05 12:08:33	walico	\N
175	agya tu jawan ho ky	2025-08-05 12:15:00	walico	\N
176	check	2025-08-05 12:19:18	walico	\N
177	check2	2025-08-05 12:41:10	walico	\N
178	check 3	2025-08-05 12:45:07	walico	\N
179	check 4	2025-08-05 12:46:52	walico	\N
180	check 5	2025-08-05 12:46:57	walico	\N
181	check 7	2025-08-05 12:47:15	walico	\N
182	check 8	2025-08-05 12:49:56	walico	\N
183	check 9	2025-08-05 12:51:43	walico	\N
184	check 9	2025-08-05 12:51:49	walico	\N
185	check10	2025-08-05 12:52:10	walico	\N
186	check 11	2025-08-05 12:52:52	walico	\N
187	check 12	2025-08-05 12:57:14	walico	\N
188	check 13	2025-08-05 13:54:04	edgee	\N
189	check 13	2025-08-05 13:56:21	edgee	\N
190	check 14	2025-08-05 13:56:54	edgee	\N
191	check 15	2025-08-05 14:05:25	edgee	\N
192	check 16	2025-08-05 14:05:44	walico	\N
193	check 17	2025-08-05 14:06:40	walico	\N
194	check 18	2025-08-05 14:10:56	walico	\N
195	check 19	2025-08-05 14:36:53	edgee	\N
196	check 20	2025-08-05 14:49:53	edgee	\N
197	check 21	2025-08-05 14:50:44	edgee	\N
198	hor suna saleemo tu kito kito gi a	2025-08-06 09:44:52	walico	\N
199	oy	2025-08-06 10:48:03	edgee	\N
200	hohohoo	2025-08-06 10:48:52	edgee	\N
201	acah	2025-08-06 10:50:23	edgee	\N
202	acha ab timer fix kr diya hi is par	2025-08-06 10:57:33	edgee	\N
203	alaaa check ma aaa gya	2025-08-06 11:02:06	edgee	\N
204	hor suna	2025-08-06 11:02:44	edgee	\N
205	hahhahahahah	2025-08-06 11:03:56	walico	\N
206	dasqwe	2025-08-06 14:19:42	walico	\N
207	ooo	2025-08-06 14:26:20	walicoo	\N
208	ab tu zada free ho rha tjy pata	2025-08-06 14:26:42	walicoo	\N
209	aaala check ma aagya	2025-08-11 15:43:30	sampling	\N
210	aaaalaaa check ma aaa gya	2025-08-12 09:49:16	sampling	\N
211	achaaa	2025-08-12 11:34:13	walicoo	\N
212	achaa	2025-08-12 11:34:30	walicoo	\N
213	idr kia chal rha hi	2025-08-12 12:08:41	walicoo	\N
214	ma phr check krlo	2025-08-12 12:09:47	walicoo	\N
215	hello	2025-08-12 12:41:12	walicoo	common
216	ab ma idr se sms kr rha hun	2025-08-12 12:45:58	sampling	common
217	cricket wly room se sms kr ria hun	2025-08-12 12:46:30	sampling	Cricket
218	check	2025-08-12 12:51:29	sampling	common
219	hehheheheh	2025-08-12 12:51:52	walicoo	Cricket
220	here is gaming world,would u like to dive in	2025-08-12 12:53:08	walicoo	Game
221	hhehehhe	2025-08-12 15:11:40	walicoo	common
222	cehc	2025-08-12 15:54:01	walicoo	common
223	allaaa check ma gay	2025-08-13 10:14:09	sampling	common
224	acha ab cricket wly room ma baaat krty han	2025-08-13 10:17:26	walicoo	Cricket
225	acha chlta hu dua ma yaad rakhna 	2025-08-13 11:08:15	sampling	Game
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 225, true);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

