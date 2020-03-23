ALTER TABLE region
    ALTER COLUMN id SET DEFAULT nextval('region_id_seq'::regclass);
ALTER TABLE sick
    ALTER COLUMN id SET DEFAULT nextval('sick_id_seq'::regclass);

INSERT INTO region(id, region_name)
VALUES (1, 'Cała Polska'),
       (2, 'dolnośląskie'),
       (3, 'kujawsko-pomorskie'),
       (4, 'lubelskie'),
       (5, 'lubuskie'),
       (6, 'łódzkie'),
       (7, 'małopolskie'),
       (8, 'mazowieckie'),
       (9, 'opolskie'),
       (10, 'podkarpackie'),
       (11, 'podlaskie'),
       (12, 'pomorskie'),
       (13, 'śląskie'),
       (14, 'świętokrzyskie'),
       (15, 'warmińsko-mazurskie'),
       (16, 'wielkopolskie'),
       (17, 'zachodniopomorskie');
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 1, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 1, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-04 12:00:00.000000', 1, 0, 0, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 1, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-05 12:00:00.000000', 2, 0, 0, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 5, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 1, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 1, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 0, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-06 12:00:00.000000', 3, 0, 2, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 6, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 1, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 2, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 0, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-07 12:00:00.000000', 4, 0, 2, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 11, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 2, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 2, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 2, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 2, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 0, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-08 12:00:00.000000', 5, 0, 2, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 17, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 3, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 1, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 2, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 5, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 2, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 1, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-09 12:00:00.000000', 6, 0, 2, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 22, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 4, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 1, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 0, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 1, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 3, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 0, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 0, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 7, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 2, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 1, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-10 12:00:00.000000', 7, 0, 2, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 31, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 4, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 2, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 1, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 1, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 4, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 1, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 1, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 8, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 4, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 2, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-11 12:00:00.000000', 8, 0, 2, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 1, 51, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 7, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 6, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 2, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 1, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 6, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 2, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 3, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 11, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 4, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 1, 5, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-12 12:00:00.000000', 9, 0, 3, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 2, 68, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 1, 8, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 7, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 5, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 1, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 11, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 2, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 6, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 0, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 12, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 0, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 4, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 1, 6, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-13 12:00:00.000000', 10, 0, 5, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 3, 104, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 1, 13, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 1, 15, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 1, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 15, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 1, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 16, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 4, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 7, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 2, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 12, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 2, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 4, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 1, 7, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-14 12:00:00.000000', 11, 0, 5, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 3, 125, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 1, 15, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 1, 17, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 2, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 19, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 1, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 22, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 4, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 8, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 2, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 14, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 3, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 5, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 1, 7, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-15 12:00:00.000000', 12, 0, 6, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 4, 177, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 1, 27, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 0, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 1, 18, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 2, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 32, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 2, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 35, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 6, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 1, 11, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 0, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 2, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 17, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 3, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 5, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 1, 11, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-16 12:00:00.000000', 13, 0, 6, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 5, 238, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 2, 38, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 8, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 1, 22, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 2, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 43, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 5, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 38, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 8, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 1, 11, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 1, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 8, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 23, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 3, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 7, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 1, 13, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-17 12:00:00.000000', 14, 0, 8, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 5, 287, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 2, 40, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 8, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 1, 22, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 3, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 42, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 6, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 66, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 9, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 1, 14, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 2, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 9, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 30, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 4, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 11, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 1, 13, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-18 12:00:00.000000', 15, 0, 8, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 5, 355, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 2, 53, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 11, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 1, 25, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 48, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 7, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 82, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 1, 17, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 1, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 9, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 42, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 5, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 12, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 1, 15, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-19 21:12:43.145068', 16, 0, 9, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 5, 367, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 2, 53, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 11, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 1, 25, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 48, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 12, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 82, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 1, 17, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 1, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 9, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 43, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 16, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 1, 16, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 09:00:38.634124', 17, 0, 9, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 6, 378, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 2, 56, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 11, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 1, 28, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 48, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 13, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 82, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 2, 18, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 2, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 9, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 43, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 16, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 1, 18, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 11:34:58.633637', 18, 0, 9, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 5, 411, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 2, 58, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 14, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 1, 28, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 48, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 13, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 107, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 1, 19, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 3, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 10, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 43, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 16, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 1, 18, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 16:40:58.629081', 19, 0, 9, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 5, 425, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 2, 58, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 14, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 1, 28, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 57, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 14, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 107, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 1, 19, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 3, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 10, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 46, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 17, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 1, 18, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-20 20:31:07.028003', 20, 0, 9, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 5, 439, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 2, 58, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 15, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 1, 29, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 57, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 14, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 107, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 1, 19, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 3, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 11, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 49, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 20, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 1, 22, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 08:46:18.626153', 21, 0, 10, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 5, 452, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 2, 61, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 16, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 1, 30, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 57, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 15, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 107, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 1, 20, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 11, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 49, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 20, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 1, 26, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:32:07.020411', 22, 0, 10, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 5, 439, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 2, 58, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 15, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 1, 29, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 57, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 14, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 107, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 1, 19, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 3, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 11, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 49, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 20, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 1, 22, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:34:58.632307', 23, 0, 10, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 5, 452, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 2, 61, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 16, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 1, 30, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 57, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 15, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 107, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 1, 20, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 11, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 49, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 20, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 1, 26, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 13:36:27.016060', 24, 0, 10, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 5, 492, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 2, 66, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 16, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 1, 30, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 76, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 16, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 107, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 1, 25, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 14, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 56, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 6, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 20, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 1, 26, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 18:42:07.016300', 25, 0, 10, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 5, 536, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 2, 66, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 18, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 1, 31, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 91, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 16, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 127, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 1, 25, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 14, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 56, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 7, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 20, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 1, 31, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-21 20:52:07.014995', 26, 0, 10, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 5, 547, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 2, 66, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 18, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 1, 31, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 91, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 16, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 127, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 1, 26, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 16, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 61, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 7, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 21, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 1, 31, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 09:02:07.015293', 27, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 6, 547, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 2, 66, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 18, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 1, 31, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 91, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 16, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 127, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 10, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 1, 26, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 16, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 61, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 7, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 21, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 2, 31, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 11:12:07.016199', 28, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 7, 563, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 2, 69, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 18, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 1, 36, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 9, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 91, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 20, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 1, 127, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 11, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 1, 28, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 61, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 7, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 21, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 2, 31, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 12:31:58.628273', 29, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 7, 627, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 2, 79, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 18, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 1, 37, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 11, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 106, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 24, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 1, 147, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 11, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 1, 28, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 5, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 66, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 7, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 22, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 2, 37, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 18:02:18.629233', 30, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 7, 634, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 2, 79, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 18, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 1, 39, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 11, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 106, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 24, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 1, 147, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 14, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 1, 29, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 6, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 66, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 7, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 22, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 2, 36, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-22 21:13:38.629677', 31, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 7, 649, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 2, 79, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 20, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 1, 40, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 11, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 106, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 27, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 1, 147, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 14, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 1, 29, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 6, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 74, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 8, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 22, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 2, 36, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 08:55:38.626495', 32, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 7, 648, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 2, 79, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 20, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 1, 40, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 11, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 106, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 27, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 1, 147, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 14, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 1, 29, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 6, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 74, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 8, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 22, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 2, 36, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 11:43:58.628083', 33, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 8, 684, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 2, 95, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 20, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 1, 43, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 16, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 109, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 31, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 1, 147, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 19, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 1, 29, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 6, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 1, 74, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 8, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 22, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 2, 36, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 13:04:27.016181', 34, 0, 12, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 8, 692, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 2, 97, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 20, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 1, 44, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 16, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 111, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 31, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 1, 147, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 19, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 1, 30, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 6, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 1, 74, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 8, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 22, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 2, 36, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 16:54:38.635230', 35, 0, 14, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 8, 749, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 2, 101, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 21, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 1, 48, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 16, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 111, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 33, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 1, 175, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 19, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 1, 30, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 7, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 21, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 1, 77, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 8, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 25, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 2, 41, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:34:47.015290', 36, 0, 16, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 8, 692, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 2, 97, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 20, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 1, 44, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 16, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 111, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 31, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 1, 147, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 19, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 1, 30, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 6, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 17, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 1, 74, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 8, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 22, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 2, 36, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:35:38.636231', 37, 0, 14, 17);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 8, 749, 1);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 2, 101, 2);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 21, 3);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 1, 48, 4);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 16, 5);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 111, 6);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 33, 7);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 1, 175, 8);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 19, 9);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 1, 30, 10);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 7, 11);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 21, 12);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 1, 77, 13);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 8, 14);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 25, 15);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 2, 41, 16);
INSERT INTO public.sick (added_at, time_step, total_deaths_in_region, total_sick_in_region, region_id)
VALUES ('2020-03-23 20:36:07.015534', 38, 0, 16, 17);
