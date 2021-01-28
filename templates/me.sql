CREATE TABLE public.tbl_patients
(
    patient_first_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_last_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_dob character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_email character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_gender character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_password character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_phone character varying(200) COLLATE pg_catalog."default" DEFAULT ' '::character,
    patient_refcode character varying(200) COLLATE pg_catalog."default" DEFAULT ' '::character,
    age integer DEFAULT ' '::integer,
    membership_number text COLLATE pg_catalog."default" DEFAULT ' '::text,
    facility_id bigint DEFAULT 0,
    emergency_contact_name text COLLATE pg_catalog."default" DEFAULT ' '::text,
    emergency_contact_number text COLLATE pg_catalog."default" DEFAULT ' '::text,
    emergency_contact_relation text COLLATE pg_catalog."default" DEFAULT ' '::text,
    address_one text COLLATE pg_catalog."default" DEFAULT ' '::text,
    address_two text COLLATE pg_catalog."default" DEFAULT ' '::text,
    city text COLLATE pg_catalog."default" NOT NULL,
    state text COLLATE pg_catalog."default" DEFAULT ' '::text,
    pincode text COLLATE pg_catalog."default" DEFAULT ' '::text,
    country text COLLATE pg_catalog."default" DEFAULT ' '::text,
    allergies text COLLATE pg_catalog."default" DEFAULT ' '::text,
    insured boolean DEFAULT false,
    insurance_company_name text COLLATE pg_catalog."default" DEFAULT ' '::text,
    insurance_validity date DEFAULT ' '::text,
    primary_health_issue text COLLATE pg_catalog."default" DEFAULT ' '::text,
    parent_id bigint DEFAULT ' '::bigint,
    verification_token text COLLATE pg_catalog."default" DEFAULT ' '::text,
    verification_token_expiry date,
    status text COLLATE pg_catalog."default" DEFAULT 'active'::text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    verified text COLLATE pg_catalog."default" DEFAULT false,
    photo bytea,
    blood_group text COLLATE pg_catalog."default" DEFAULT ' '::text,
    patient_id bigint NOT NULL DEFAULT nextval('tbl_patients_patient_id_seq'::regclass),
    device_id text COLLATE pg_catalog."default" DEFAULT ' '::text,
    CONSTRAINT tbl_patients_pkey PRIMARY KEY (patient_id)
)


updated
DROP TABLE public.tbl_patients;
CREATE SEQUENCE tbl_patients_patient_id_seq;
CREATE TABLE public.tbl_patients
(
    patient_first_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_last_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_dob character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_email character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_gender character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_password character varying(200) COLLATE pg_catalog."default" NOT NULL,
    patient_phone character varying(200) COLLATE pg_catalog."default" DEFAULT ' '::character,
    patient_refcode character varying(200) COLLATE pg_catalog."default" DEFAULT ' '::character,
    age integer DEFAULT 0,
    membership_number text COLLATE pg_catalog."default" DEFAULT ' '::text,
    facility_id bigint DEFAULT 0,
    emergency_contact_name text COLLATE pg_catalog."default" DEFAULT ' '::text,
    emergency_contact_number text COLLATE pg_catalog."default" DEFAULT ' '::text,
    emergency_contact_relation text COLLATE pg_catalog."default" DEFAULT ' '::text,
    address_one text COLLATE pg_catalog."default" DEFAULT ' '::text,
    address_two text COLLATE pg_catalog."default" DEFAULT ' '::text,
    city text COLLATE pg_catalog."default" NOT NULL,
    state text COLLATE pg_catalog."default" DEFAULT ' '::text,
    pincode text COLLATE pg_catalog."default" DEFAULT ' '::text,
    country text COLLATE pg_catalog."default" DEFAULT ' '::text,
    allergies text COLLATE pg_catalog."default" DEFAULT ' '::text,
    insured boolean DEFAULT false,
    insurance_company_name text COLLATE pg_catalog."default" DEFAULT ' '::text,
    insurance_validity date,
    primary_health_issue text COLLATE pg_catalog."default" DEFAULT ' '::text,
    parent_id bigint,
    verification_token text COLLATE pg_catalog."default" DEFAULT ' '::text,
    verification_token_expiry date,
    status text COLLATE pg_catalog."default" DEFAULT 'active'::text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    verified text COLLATE pg_catalog."default" DEFAULT false,
    photo bytea,
    blood_group text COLLATE pg_catalog."default" DEFAULT ' '::text,
    patient_id bigint NOT NULL DEFAULT nextval('tbl_patients_patient_id_seq'::regclass),
    device_id text COLLATE pg_catalog."default" DEFAULT ' '::text,
    CONSTRAINT tbl_patients_pkey PRIMARY KEY (patient_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.tbl_patients
    OWNER to dbstageadmin;


