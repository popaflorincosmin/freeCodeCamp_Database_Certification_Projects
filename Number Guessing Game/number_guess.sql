--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (61, 23, 3);
INSERT INTO public.games VALUES (62, 24, 115);
INSERT INTO public.games VALUES (63, 24, 18);
INSERT INTO public.games VALUES (64, 25, 460);
INSERT INTO public.games VALUES (65, 25, 194);
INSERT INTO public.games VALUES (66, 24, 946);
INSERT INTO public.games VALUES (67, 24, 294);
INSERT INTO public.games VALUES (68, 24, 539);
INSERT INTO public.games VALUES (69, 26, 193);
INSERT INTO public.games VALUES (70, 26, 840);
INSERT INTO public.games VALUES (71, 27, 674);
INSERT INTO public.games VALUES (72, 27, 974);
INSERT INTO public.games VALUES (73, 26, 547);
INSERT INTO public.games VALUES (74, 26, 983);
INSERT INTO public.games VALUES (75, 26, 566);
INSERT INTO public.games VALUES (76, 28, 261);
INSERT INTO public.games VALUES (77, 28, 416);
INSERT INTO public.games VALUES (78, 29, 950);
INSERT INTO public.games VALUES (79, 29, 669);
INSERT INTO public.games VALUES (80, 28, 952);
INSERT INTO public.games VALUES (81, 28, 970);
INSERT INTO public.games VALUES (82, 28, 126);
INSERT INTO public.games VALUES (83, 30, 216);
INSERT INTO public.games VALUES (84, 30, 873);
INSERT INTO public.games VALUES (85, 31, 202);
INSERT INTO public.games VALUES (86, 31, 91);
INSERT INTO public.games VALUES (87, 30, 606);
INSERT INTO public.games VALUES (88, 30, 108);
INSERT INTO public.games VALUES (89, 30, 167);
INSERT INTO public.games VALUES (90, 32, 877);
INSERT INTO public.games VALUES (91, 32, 418);
INSERT INTO public.games VALUES (92, 33, 822);
INSERT INTO public.games VALUES (93, 33, 452);
INSERT INTO public.games VALUES (94, 32, 675);
INSERT INTO public.games VALUES (95, 32, 232);
INSERT INTO public.games VALUES (96, 32, 53);
INSERT INTO public.games VALUES (97, 34, 3);
INSERT INTO public.games VALUES (98, 34, 1);
INSERT INTO public.games VALUES (99, 34, 1);
INSERT INTO public.games VALUES (100, 35, 507);
INSERT INTO public.games VALUES (101, 35, 849);
INSERT INTO public.games VALUES (102, 36, 41);
INSERT INTO public.games VALUES (103, 36, 941);
INSERT INTO public.games VALUES (104, 35, 635);
INSERT INTO public.games VALUES (105, 35, 208);
INSERT INTO public.games VALUES (106, 35, 391);
INSERT INTO public.games VALUES (107, 37, 17);
INSERT INTO public.games VALUES (108, 37, 675);
INSERT INTO public.games VALUES (109, 38, 134);
INSERT INTO public.games VALUES (110, 38, 464);
INSERT INTO public.games VALUES (111, 37, 377);
INSERT INTO public.games VALUES (112, 37, 687);
INSERT INTO public.games VALUES (113, 37, 927);
INSERT INTO public.games VALUES (114, 39, 532);
INSERT INTO public.games VALUES (115, 39, 395);
INSERT INTO public.games VALUES (116, 40, 218);
INSERT INTO public.games VALUES (117, 40, 843);
INSERT INTO public.games VALUES (118, 39, 828);
INSERT INTO public.games VALUES (119, 39, 635);
INSERT INTO public.games VALUES (120, 39, 584);
INSERT INTO public.games VALUES (121, 41, 931);
INSERT INTO public.games VALUES (122, 41, 882);
INSERT INTO public.games VALUES (123, 42, 980);
INSERT INTO public.games VALUES (124, 42, 180);
INSERT INTO public.games VALUES (125, 41, 244);
INSERT INTO public.games VALUES (126, 41, 673);
INSERT INTO public.games VALUES (127, 41, 1000);
INSERT INTO public.games VALUES (128, 43, 605);
INSERT INTO public.games VALUES (129, 43, 488);
INSERT INTO public.games VALUES (130, 44, 784);
INSERT INTO public.games VALUES (131, 44, 887);
INSERT INTO public.games VALUES (132, 43, 188);
INSERT INTO public.games VALUES (133, 43, 905);
INSERT INTO public.games VALUES (134, 43, 888);
INSERT INTO public.games VALUES (135, 45, 823);
INSERT INTO public.games VALUES (136, 45, 551);
INSERT INTO public.games VALUES (137, 46, 69);
INSERT INTO public.games VALUES (138, 46, 989);
INSERT INTO public.games VALUES (139, 45, 303);
INSERT INTO public.games VALUES (140, 45, 204);
INSERT INTO public.games VALUES (141, 45, 881);
INSERT INTO public.games VALUES (142, 47, 742);
INSERT INTO public.games VALUES (143, 47, 302);
INSERT INTO public.games VALUES (144, 48, 202);
INSERT INTO public.games VALUES (145, 48, 960);
INSERT INTO public.games VALUES (146, 47, 412);
INSERT INTO public.games VALUES (147, 47, 457);
INSERT INTO public.games VALUES (148, 47, 105);
INSERT INTO public.games VALUES (149, 49, 520);
INSERT INTO public.games VALUES (150, 49, 361);
INSERT INTO public.games VALUES (151, 50, 757);
INSERT INTO public.games VALUES (152, 50, 581);
INSERT INTO public.games VALUES (153, 49, 5);
INSERT INTO public.games VALUES (154, 49, 464);
INSERT INTO public.games VALUES (155, 49, 176);
INSERT INTO public.games VALUES (156, 51, 637);
INSERT INTO public.games VALUES (157, 51, 485);
INSERT INTO public.games VALUES (158, 52, 817);
INSERT INTO public.games VALUES (159, 52, 790);
INSERT INTO public.games VALUES (160, 51, 129);
INSERT INTO public.games VALUES (161, 51, 453);
INSERT INTO public.games VALUES (162, 51, 794);
INSERT INTO public.games VALUES (163, 53, 185);
INSERT INTO public.games VALUES (164, 53, 920);
INSERT INTO public.games VALUES (165, 54, 518);
INSERT INTO public.games VALUES (166, 54, 80);
INSERT INTO public.games VALUES (167, 53, 301);
INSERT INTO public.games VALUES (168, 53, 671);
INSERT INTO public.games VALUES (169, 53, 788);
INSERT INTO public.games VALUES (170, 55, 820);
INSERT INTO public.games VALUES (171, 55, 832);
INSERT INTO public.games VALUES (172, 56, 984);
INSERT INTO public.games VALUES (173, 56, 384);
INSERT INTO public.games VALUES (174, 55, 913);
INSERT INTO public.games VALUES (175, 55, 931);
INSERT INTO public.games VALUES (176, 55, 91);
INSERT INTO public.games VALUES (177, 57, 865);
INSERT INTO public.games VALUES (178, 57, 797);
INSERT INTO public.games VALUES (179, 58, 839);
INSERT INTO public.games VALUES (180, 58, 408);
INSERT INTO public.games VALUES (181, 57, 554);
INSERT INTO public.games VALUES (182, 57, 886);
INSERT INTO public.games VALUES (183, 57, 421);
INSERT INTO public.games VALUES (184, 59, 18);
INSERT INTO public.games VALUES (185, 59, 959);
INSERT INTO public.games VALUES (186, 60, 817);
INSERT INTO public.games VALUES (187, 60, 731);
INSERT INTO public.games VALUES (188, 59, 89);
INSERT INTO public.games VALUES (189, 59, 780);
INSERT INTO public.games VALUES (190, 59, 450);
INSERT INTO public.games VALUES (191, 61, 40);
INSERT INTO public.games VALUES (192, 61, 298);
INSERT INTO public.games VALUES (193, 62, 815);
INSERT INTO public.games VALUES (194, 62, 592);
INSERT INTO public.games VALUES (195, 61, 59);
INSERT INTO public.games VALUES (196, 61, 108);
INSERT INTO public.games VALUES (197, 61, 388);
INSERT INTO public.games VALUES (198, 63, 347);
INSERT INTO public.games VALUES (199, 63, 898);
INSERT INTO public.games VALUES (200, 64, 29);
INSERT INTO public.games VALUES (201, 64, 7);
INSERT INTO public.games VALUES (202, 63, 466);
INSERT INTO public.games VALUES (203, 63, 603);
INSERT INTO public.games VALUES (204, 63, 467);
INSERT INTO public.games VALUES (205, 65, 226);
INSERT INTO public.games VALUES (206, 65, 911);
INSERT INTO public.games VALUES (207, 66, 846);
INSERT INTO public.games VALUES (208, 66, 209);
INSERT INTO public.games VALUES (209, 65, 706);
INSERT INTO public.games VALUES (210, 65, 722);
INSERT INTO public.games VALUES (211, 65, 689);
INSERT INTO public.games VALUES (212, 67, 230);
INSERT INTO public.games VALUES (213, 67, 97);
INSERT INTO public.games VALUES (214, 68, 75);
INSERT INTO public.games VALUES (215, 68, 571);
INSERT INTO public.games VALUES (216, 67, 468);
INSERT INTO public.games VALUES (217, 67, 744);
INSERT INTO public.games VALUES (218, 67, 271);
INSERT INTO public.games VALUES (219, 69, 941);
INSERT INTO public.games VALUES (220, 69, 783);
INSERT INTO public.games VALUES (221, 70, 788);
INSERT INTO public.games VALUES (222, 70, 967);
INSERT INTO public.games VALUES (223, 69, 452);
INSERT INTO public.games VALUES (224, 69, 84);
INSERT INTO public.games VALUES (225, 69, 16);
INSERT INTO public.games VALUES (226, 71, 424);
INSERT INTO public.games VALUES (227, 71, 458);
INSERT INTO public.games VALUES (228, 72, 73);
INSERT INTO public.games VALUES (229, 72, 254);
INSERT INTO public.games VALUES (230, 71, 495);
INSERT INTO public.games VALUES (231, 71, 56);
INSERT INTO public.games VALUES (232, 71, 376);
INSERT INTO public.games VALUES (233, 73, 156);
INSERT INTO public.games VALUES (234, 73, 562);
INSERT INTO public.games VALUES (235, 74, 428);
INSERT INTO public.games VALUES (236, 74, 525);
INSERT INTO public.games VALUES (237, 73, 160);
INSERT INTO public.games VALUES (238, 73, 60);
INSERT INTO public.games VALUES (239, 73, 5);
INSERT INTO public.games VALUES (240, 75, 336);
INSERT INTO public.games VALUES (241, 75, 138);
INSERT INTO public.games VALUES (242, 76, 378);
INSERT INTO public.games VALUES (243, 76, 472);
INSERT INTO public.games VALUES (244, 75, 143);
INSERT INTO public.games VALUES (245, 75, 471);
INSERT INTO public.games VALUES (246, 75, 92);
INSERT INTO public.games VALUES (247, 77, 880);
INSERT INTO public.games VALUES (248, 77, 845);
INSERT INTO public.games VALUES (249, 78, 787);
INSERT INTO public.games VALUES (250, 78, 422);
INSERT INTO public.games VALUES (251, 77, 471);
INSERT INTO public.games VALUES (252, 77, 857);
INSERT INTO public.games VALUES (253, 77, 326);
INSERT INTO public.games VALUES (254, 79, 472);
INSERT INTO public.games VALUES (255, 79, 102);
INSERT INTO public.games VALUES (256, 80, 204);
INSERT INTO public.games VALUES (257, 80, 812);
INSERT INTO public.games VALUES (258, 79, 630);
INSERT INTO public.games VALUES (259, 79, 544);
INSERT INTO public.games VALUES (260, 79, 625);
INSERT INTO public.games VALUES (261, 81, 404);
INSERT INTO public.games VALUES (262, 81, 963);
INSERT INTO public.games VALUES (263, 82, 801);
INSERT INTO public.games VALUES (264, 82, 805);
INSERT INTO public.games VALUES (265, 81, 240);
INSERT INTO public.games VALUES (266, 81, 680);
INSERT INTO public.games VALUES (267, 81, 870);
INSERT INTO public.games VALUES (268, 83, 3);
INSERT INTO public.games VALUES (269, 83, 933);
INSERT INTO public.games VALUES (270, 84, 197);
INSERT INTO public.games VALUES (271, 84, 331);
INSERT INTO public.games VALUES (272, 83, 867);
INSERT INTO public.games VALUES (273, 83, 345);
INSERT INTO public.games VALUES (274, 83, 618);
INSERT INTO public.games VALUES (275, 85, 162);
INSERT INTO public.games VALUES (276, 85, 3);
INSERT INTO public.games VALUES (277, 86, 174);
INSERT INTO public.games VALUES (278, 86, 614);
INSERT INTO public.games VALUES (279, 85, 203);
INSERT INTO public.games VALUES (280, 85, 865);
INSERT INTO public.games VALUES (281, 85, 116);
INSERT INTO public.games VALUES (282, 87, 682);
INSERT INTO public.games VALUES (283, 87, 393);
INSERT INTO public.games VALUES (284, 88, 970);
INSERT INTO public.games VALUES (285, 88, 660);
INSERT INTO public.games VALUES (286, 87, 357);
INSERT INTO public.games VALUES (287, 87, 531);
INSERT INTO public.games VALUES (288, 87, 416);
INSERT INTO public.games VALUES (289, 89, 713);
INSERT INTO public.games VALUES (290, 89, 442);
INSERT INTO public.games VALUES (291, 90, 744);
INSERT INTO public.games VALUES (292, 90, 110);
INSERT INTO public.games VALUES (293, 89, 759);
INSERT INTO public.games VALUES (294, 89, 6);
INSERT INTO public.games VALUES (295, 89, 345);
INSERT INTO public.games VALUES (296, 23, 15);
INSERT INTO public.games VALUES (297, 91, 445);
INSERT INTO public.games VALUES (298, 91, 45);
INSERT INTO public.games VALUES (299, 92, 776);
INSERT INTO public.games VALUES (300, 92, 839);
INSERT INTO public.games VALUES (301, 91, 822);
INSERT INTO public.games VALUES (302, 91, 379);
INSERT INTO public.games VALUES (303, 91, 688);
INSERT INTO public.games VALUES (304, 93, 320);
INSERT INTO public.games VALUES (305, 93, 320);
INSERT INTO public.games VALUES (306, 94, 243);
INSERT INTO public.games VALUES (307, 94, 577);
INSERT INTO public.games VALUES (308, 93, 6);
INSERT INTO public.games VALUES (309, 93, 458);
INSERT INTO public.games VALUES (310, 93, 329);
INSERT INTO public.games VALUES (311, 95, 631);
INSERT INTO public.games VALUES (312, 95, 803);
INSERT INTO public.games VALUES (313, 96, 848);
INSERT INTO public.games VALUES (314, 96, 132);
INSERT INTO public.games VALUES (315, 95, 779);
INSERT INTO public.games VALUES (316, 95, 980);
INSERT INTO public.games VALUES (317, 95, 152);
INSERT INTO public.games VALUES (318, 97, 652);
INSERT INTO public.games VALUES (319, 97, 395);
INSERT INTO public.games VALUES (320, 98, 7);
INSERT INTO public.games VALUES (321, 98, 232);
INSERT INTO public.games VALUES (322, 97, 537);
INSERT INTO public.games VALUES (323, 97, 749);
INSERT INTO public.games VALUES (324, 97, 192);
INSERT INTO public.games VALUES (325, 99, 939);
INSERT INTO public.games VALUES (326, 99, 824);
INSERT INTO public.games VALUES (327, 100, 94);
INSERT INTO public.games VALUES (328, 100, 851);
INSERT INTO public.games VALUES (329, 99, 2);
INSERT INTO public.games VALUES (330, 99, 242);
INSERT INTO public.games VALUES (331, 99, 193);
INSERT INTO public.games VALUES (332, 101, 717);
INSERT INTO public.games VALUES (333, 101, 102);
INSERT INTO public.games VALUES (334, 102, 798);
INSERT INTO public.games VALUES (335, 102, 299);
INSERT INTO public.games VALUES (336, 101, 276);
INSERT INTO public.games VALUES (337, 101, 880);
INSERT INTO public.games VALUES (338, 101, 855);
INSERT INTO public.games VALUES (339, 103, 938);
INSERT INTO public.games VALUES (340, 103, 609);
INSERT INTO public.games VALUES (341, 104, 913);
INSERT INTO public.games VALUES (342, 104, 686);
INSERT INTO public.games VALUES (343, 103, 695);
INSERT INTO public.games VALUES (344, 103, 985);
INSERT INTO public.games VALUES (345, 103, 143);
INSERT INTO public.games VALUES (346, 105, 125);
INSERT INTO public.games VALUES (347, 105, 590);
INSERT INTO public.games VALUES (348, 106, 225);
INSERT INTO public.games VALUES (349, 106, 312);
INSERT INTO public.games VALUES (350, 105, 175);
INSERT INTO public.games VALUES (351, 105, 55);
INSERT INTO public.games VALUES (352, 105, 59);
INSERT INTO public.games VALUES (353, 107, 726);
INSERT INTO public.games VALUES (354, 107, 762);
INSERT INTO public.games VALUES (355, 108, 203);
INSERT INTO public.games VALUES (356, 108, 504);
INSERT INTO public.games VALUES (357, 107, 701);
INSERT INTO public.games VALUES (358, 107, 740);
INSERT INTO public.games VALUES (359, 107, 614);
INSERT INTO public.games VALUES (360, 109, 615);
INSERT INTO public.games VALUES (361, 109, 777);
INSERT INTO public.games VALUES (362, 110, 407);
INSERT INTO public.games VALUES (363, 110, 676);
INSERT INTO public.games VALUES (364, 109, 437);
INSERT INTO public.games VALUES (365, 109, 91);
INSERT INTO public.games VALUES (366, 109, 333);
INSERT INTO public.games VALUES (367, 111, 619);
INSERT INTO public.games VALUES (368, 112, 470);
INSERT INTO public.games VALUES (369, 112, 438);
INSERT INTO public.games VALUES (370, 111, 11);
INSERT INTO public.games VALUES (371, 111, 824);
INSERT INTO public.games VALUES (372, 111, 218);
INSERT INTO public.games VALUES (373, 113, 740);
INSERT INTO public.games VALUES (374, 113, 121);
INSERT INTO public.games VALUES (375, 114, 384);
INSERT INTO public.games VALUES (376, 114, 921);
INSERT INTO public.games VALUES (377, 113, 853);
INSERT INTO public.games VALUES (378, 113, 563);
INSERT INTO public.games VALUES (379, 113, 860);
INSERT INTO public.games VALUES (380, 115, 695);
INSERT INTO public.games VALUES (381, 115, 527);
INSERT INTO public.games VALUES (382, 116, 66);
INSERT INTO public.games VALUES (383, 116, 292);
INSERT INTO public.games VALUES (384, 115, 502);
INSERT INTO public.games VALUES (385, 115, 723);
INSERT INTO public.games VALUES (386, 115, 843);
INSERT INTO public.games VALUES (387, 117, 76);
INSERT INTO public.games VALUES (388, 117, 874);
INSERT INTO public.games VALUES (389, 118, 619);
INSERT INTO public.games VALUES (390, 118, 56);
INSERT INTO public.games VALUES (391, 117, 147);
INSERT INTO public.games VALUES (392, 117, 4);
INSERT INTO public.games VALUES (393, 117, 804);
INSERT INTO public.games VALUES (394, 119, 997);
INSERT INTO public.games VALUES (395, 119, 761);
INSERT INTO public.games VALUES (396, 120, 216);
INSERT INTO public.games VALUES (397, 120, 736);
INSERT INTO public.games VALUES (398, 119, 520);
INSERT INTO public.games VALUES (399, 119, 307);
INSERT INTO public.games VALUES (400, 119, 399);
INSERT INTO public.games VALUES (401, 121, 528);
INSERT INTO public.games VALUES (402, 121, 540);
INSERT INTO public.games VALUES (403, 122, 112);
INSERT INTO public.games VALUES (404, 122, 800);
INSERT INTO public.games VALUES (405, 121, 359);
INSERT INTO public.games VALUES (406, 121, 416);
INSERT INTO public.games VALUES (407, 121, 239);
INSERT INTO public.games VALUES (408, 123, 590);
INSERT INTO public.games VALUES (409, 123, 989);
INSERT INTO public.games VALUES (410, 124, 298);
INSERT INTO public.games VALUES (411, 124, 66);
INSERT INTO public.games VALUES (412, 123, 971);
INSERT INTO public.games VALUES (413, 123, 788);
INSERT INTO public.games VALUES (414, 123, 674);
INSERT INTO public.games VALUES (415, 23, 9);
INSERT INTO public.games VALUES (416, 125, 303);
INSERT INTO public.games VALUES (417, 125, 780);
INSERT INTO public.games VALUES (418, 126, 103);
INSERT INTO public.games VALUES (419, 126, 701);
INSERT INTO public.games VALUES (420, 125, 998);
INSERT INTO public.games VALUES (421, 125, 688);
INSERT INTO public.games VALUES (422, 125, 763);
INSERT INTO public.games VALUES (423, 127, 231);
INSERT INTO public.games VALUES (424, 127, 593);
INSERT INTO public.games VALUES (425, 128, 249);
INSERT INTO public.games VALUES (426, 128, 630);
INSERT INTO public.games VALUES (427, 127, 441);
INSERT INTO public.games VALUES (428, 127, 60);
INSERT INTO public.games VALUES (429, 127, 827);
INSERT INTO public.games VALUES (430, 129, 520);
INSERT INTO public.games VALUES (431, 129, 849);
INSERT INTO public.games VALUES (432, 130, 850);
INSERT INTO public.games VALUES (433, 130, 203);
INSERT INTO public.games VALUES (434, 129, 514);
INSERT INTO public.games VALUES (435, 129, 463);
INSERT INTO public.games VALUES (436, 129, 857);
INSERT INTO public.games VALUES (437, 131, 69);
INSERT INTO public.games VALUES (438, 131, 866);
INSERT INTO public.games VALUES (439, 132, 840);
INSERT INTO public.games VALUES (440, 132, 627);
INSERT INTO public.games VALUES (441, 131, 975);
INSERT INTO public.games VALUES (442, 131, 668);
INSERT INTO public.games VALUES (443, 131, 546);
INSERT INTO public.games VALUES (444, 133, 423);
INSERT INTO public.games VALUES (445, 133, 999);
INSERT INTO public.games VALUES (446, 134, 918);
INSERT INTO public.games VALUES (447, 134, 836);
INSERT INTO public.games VALUES (448, 133, 706);
INSERT INTO public.games VALUES (449, 133, 564);
INSERT INTO public.games VALUES (450, 133, 452);
INSERT INTO public.games VALUES (451, 135, 405);
INSERT INTO public.games VALUES (452, 135, 251);
INSERT INTO public.games VALUES (453, 136, 86);
INSERT INTO public.games VALUES (454, 136, 294);
INSERT INTO public.games VALUES (455, 135, 479);
INSERT INTO public.games VALUES (456, 135, 851);
INSERT INTO public.games VALUES (457, 135, 320);
INSERT INTO public.games VALUES (458, 137, 9);
INSERT INTO public.games VALUES (459, 137, 284);
INSERT INTO public.games VALUES (460, 138, 562);
INSERT INTO public.games VALUES (461, 138, 379);
INSERT INTO public.games VALUES (462, 137, 597);
INSERT INTO public.games VALUES (463, 137, 303);
INSERT INTO public.games VALUES (464, 137, 690);
INSERT INTO public.games VALUES (465, 139, 107);
INSERT INTO public.games VALUES (466, 139, 304);
INSERT INTO public.games VALUES (467, 140, 896);
INSERT INTO public.games VALUES (468, 140, 916);
INSERT INTO public.games VALUES (469, 139, 348);
INSERT INTO public.games VALUES (470, 139, 517);
INSERT INTO public.games VALUES (471, 139, 986);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (23, 'Coco');
INSERT INTO public.users VALUES (24, 'user_1794475820918');
INSERT INTO public.users VALUES (25, 'user_1794475820917');
INSERT INTO public.users VALUES (26, 'user_1794476161248');
INSERT INTO public.users VALUES (27, 'user_1794476161247');
INSERT INTO public.users VALUES (28, 'user_1794476187355');
INSERT INTO public.users VALUES (29, 'user_1794476187354');
INSERT INTO public.users VALUES (30, 'user_1794476222254');
INSERT INTO public.users VALUES (31, 'user_1794476222253');
INSERT INTO public.users VALUES (32, 'user_1794476231829');
INSERT INTO public.users VALUES (33, 'user_1794476231828');
INSERT INTO public.users VALUES (34, 'Poco');
INSERT INTO public.users VALUES (35, 'user_1794476316388');
INSERT INTO public.users VALUES (36, 'user_1794476316387');
INSERT INTO public.users VALUES (37, 'user_1794476356283');
INSERT INTO public.users VALUES (38, 'user_1794476356282');
INSERT INTO public.users VALUES (39, 'user_1794476382408');
INSERT INTO public.users VALUES (40, 'user_1794476382407');
INSERT INTO public.users VALUES (41, 'user_1794476405320');
INSERT INTO public.users VALUES (42, 'user_1794476405319');
INSERT INTO public.users VALUES (43, 'user_1794476414959');
INSERT INTO public.users VALUES (44, 'user_1794476414958');
INSERT INTO public.users VALUES (45, 'user_1794476810529');
INSERT INTO public.users VALUES (46, 'user_1794476810528');
INSERT INTO public.users VALUES (47, 'user_1794476826698');
INSERT INTO public.users VALUES (48, 'user_1794476826697');
INSERT INTO public.users VALUES (49, 'user_1794476870886');
INSERT INTO public.users VALUES (50, 'user_1794476870885');
INSERT INTO public.users VALUES (51, 'user_1794476880965');
INSERT INTO public.users VALUES (52, 'user_1794476880964');
INSERT INTO public.users VALUES (53, 'user_1794476885660');
INSERT INTO public.users VALUES (54, 'user_1794476885659');
INSERT INTO public.users VALUES (55, 'user_1794477003036');
INSERT INTO public.users VALUES (56, 'user_1794477003035');
INSERT INTO public.users VALUES (57, 'user_1794477021493');
INSERT INTO public.users VALUES (58, 'user_1794477021492');
INSERT INTO public.users VALUES (59, 'user_1794477028219');
INSERT INTO public.users VALUES (60, 'user_1794477028218');
INSERT INTO public.users VALUES (61, 'user_1794477031823');
INSERT INTO public.users VALUES (62, 'user_1794477031822');
INSERT INTO public.users VALUES (63, 'user_1794477035429');
INSERT INTO public.users VALUES (64, 'user_1794477035428');
INSERT INTO public.users VALUES (65, 'user_1794477289238');
INSERT INTO public.users VALUES (66, 'user_1794477289237');
INSERT INTO public.users VALUES (67, 'user_1794477421263');
INSERT INTO public.users VALUES (68, 'user_1794477421262');
INSERT INTO public.users VALUES (69, 'user_1794477647505');
INSERT INTO public.users VALUES (70, 'user_1794477647504');
INSERT INTO public.users VALUES (71, 'user_1794477957598');
INSERT INTO public.users VALUES (72, 'user_1794477957597');
INSERT INTO public.users VALUES (73, 'user_1794477994278');
INSERT INTO public.users VALUES (74, 'user_1794477994277');
INSERT INTO public.users VALUES (75, 'user_1794478009051');
INSERT INTO public.users VALUES (76, 'user_1794478009050');
INSERT INTO public.users VALUES (77, 'user_1794478013391');
INSERT INTO public.users VALUES (78, 'user_1794478013390');
INSERT INTO public.users VALUES (79, 'user_1794478019143');
INSERT INTO public.users VALUES (80, 'user_1794478019142');
INSERT INTO public.users VALUES (81, 'user_1794478220490');
INSERT INTO public.users VALUES (82, 'user_1794478220489');
INSERT INTO public.users VALUES (83, 'user_1794478285920');
INSERT INTO public.users VALUES (84, 'user_1794478285919');
INSERT INTO public.users VALUES (85, 'user_1794478378393');
INSERT INTO public.users VALUES (86, 'user_1794478378392');
INSERT INTO public.users VALUES (87, 'user_1794478382397');
INSERT INTO public.users VALUES (88, 'user_1794478382396');
INSERT INTO public.users VALUES (89, 'user_1794478386089');
INSERT INTO public.users VALUES (90, 'user_1794478386088');
INSERT INTO public.users VALUES (91, 'user_1794478466391');
INSERT INTO public.users VALUES (92, 'user_1794478466390');
INSERT INTO public.users VALUES (93, 'user_1794478470682');
INSERT INTO public.users VALUES (94, 'user_1794478470681');
INSERT INTO public.users VALUES (95, 'user_1794478558682');
INSERT INTO public.users VALUES (96, 'user_1794478558681');
INSERT INTO public.users VALUES (97, 'user_1794478562847');
INSERT INTO public.users VALUES (98, 'user_1794478562846');
INSERT INTO public.users VALUES (99, 'user_1794478565563');
INSERT INTO public.users VALUES (100, 'user_1794478565562');
INSERT INTO public.users VALUES (101, 'user_1794478568630');
INSERT INTO public.users VALUES (102, 'user_1794478568629');
INSERT INTO public.users VALUES (103, 'user_1794478571717');
INSERT INTO public.users VALUES (104, 'user_1794478571716');
INSERT INTO public.users VALUES (105, 'user_1794478593743');
INSERT INTO public.users VALUES (106, 'user_1794478593742');
INSERT INTO public.users VALUES (107, 'user_1794478631402');
INSERT INTO public.users VALUES (108, 'user_1794478631401');
INSERT INTO public.users VALUES (109, 'user_1794478768084');
INSERT INTO public.users VALUES (110, 'user_1794478768083');
INSERT INTO public.users VALUES (111, 'user_1794478872523');
INSERT INTO public.users VALUES (112, 'user_1794478872522');
INSERT INTO public.users VALUES (113, 'user_1794478879254');
INSERT INTO public.users VALUES (114, 'user_1794478879253');
INSERT INTO public.users VALUES (115, 'user_1794479001407');
INSERT INTO public.users VALUES (116, 'user_1794479001406');
INSERT INTO public.users VALUES (117, 'user_1794479005788');
INSERT INTO public.users VALUES (118, 'user_1794479005787');
INSERT INTO public.users VALUES (119, 'user_1794479010638');
INSERT INTO public.users VALUES (120, 'user_1794479010637');
INSERT INTO public.users VALUES (121, 'user_1794479081893');
INSERT INTO public.users VALUES (122, 'user_1794479081892');
INSERT INTO public.users VALUES (123, 'user_1794479086350');
INSERT INTO public.users VALUES (124, 'user_1794479086349');
INSERT INTO public.users VALUES (125, 'user_1794479146406');
INSERT INTO public.users VALUES (126, 'user_1794479146405');
INSERT INTO public.users VALUES (127, 'user_1794479285926');
INSERT INTO public.users VALUES (128, 'user_1794479285925');
INSERT INTO public.users VALUES (129, 'user_1794479289211');
INSERT INTO public.users VALUES (130, 'user_1794479289210');
INSERT INTO public.users VALUES (131, 'user_1794479292691');
INSERT INTO public.users VALUES (132, 'user_1794479292690');
INSERT INTO public.users VALUES (133, 'user_1794479305934');
INSERT INTO public.users VALUES (134, 'user_1794479305933');
INSERT INTO public.users VALUES (135, 'user_1794479387931');
INSERT INTO public.users VALUES (136, 'user_1794479387930');
INSERT INTO public.users VALUES (137, 'user_1794479392757');
INSERT INTO public.users VALUES (138, 'user_1794479392756');
INSERT INTO public.users VALUES (139, 'user_1794479396663');
INSERT INTO public.users VALUES (140, 'user_1794479396662');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 471, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 140, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

