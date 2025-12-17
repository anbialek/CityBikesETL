-- DIMENSIONS
CREATE TABLE dwh.dim_commune (
    code_adm VARCHAR(25),
    code_insee INT PRIMARY KEY,
    nature VARCHAR(50),
    nom VARCHAR(100),
    code_mel VARCHAR(10),
    libelle_mel VARCHAR(50),
    code_ut VARCHAR(10),
    libelle_ut VARCHAR(50),
    code_territoire_gouvernance VARCHAR(10),
    libelle_territoire_gouvernance VARCHAR(50),
    code_deveco VARCHAR(10),
    libelle_deveco VARCHAR(50),
    code_enm VARCHAR(10),
    libelle_enm VARCHAR(50),
    code_m_locale VARCHAR(10),
    libelle_m_locale VARCHAR(50),
    code_gardo VARCHAR(10),
    libelle_gardo VARCHAR(50),
    code_dt VARCHAR(10),
    libelle_dt VARCHAR(50),
    surface_ha FLOAT,
    surface_km2 FLOAT,
    geom VARCHAR(1000000)
);

CREATE TABLE dwh.dim_capteur (
    id VARCHAR(10) PRIMARY KEY,
    adresse VARCHAR(100),
    ville VARCHAR(50),
    code_insee INT REFERENCES dwh.dim_commune(code_insee),
    longitude DECIMAL(9,6),
    latitude DECIMAL(9,6)
);

CREATE TABLE dwh.dim_calendrier (
    annee INT,
    semaine INT,
    annee_semaine VARCHAR(7) PRIMARY KEY
);


-- FACT TABLE
CREATE TABLE dwh.fact_velo (
    id VARCHAR(10) REFERENCES dwh.dim_capteur(id),
    code_insee INT REFERENCES dwh.dim_commune(code_insee),
    annee_semaine VARCHAR(7) REFERENCES dwh.dim_calendrier(annee_semaine),
    mjo INT,

    PRIMARY KEY (id, annee_semaine)
);

CREATE TABLE dwh.fact_population (	
    code_adm VARCHAR(25),
    code_insee INT REFERENCES dwh.dim_commune(code_insee),
    annee INT,
    population INT,

    PRIMARY KEY (code_insee, annee)
);