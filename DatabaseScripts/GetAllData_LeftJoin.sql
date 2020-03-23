SELECT public.sick.id,
       public.sick.added_at,
       public.sick.time_step,
       public.sick.total_deaths_in_region,
       public.sick.total_sick_in_region,
       public.region.id,
       public.region.region_name
FROM public.sick
         LEFT JOIN public.region
                   ON public.sick.region_id = public.region.id;