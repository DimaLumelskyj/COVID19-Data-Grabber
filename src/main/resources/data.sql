ALTER TABLE region
    ALTER COLUMN id SET DEFAULT nextval('region_id_seq'::regclass);
ALTER TABLE sick
    ALTER COLUMN id SET DEFAULT nextval('sick_id_seq'::regclass);