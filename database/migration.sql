CREATE TABLE todo_administrative_divisions
(
    "_id"                      INTEGER         NOT NULL
        CONSTRAINT todo_administrative_division
            PRIMARY KEY autoincrement,

    "_sup"            UNSIGNED INTEGER
        CONSTRAINT todo_administrative_division_geo_within
            REFERENCES todo_administrative_divisions
                ON UPDATE restrict
                ON DELETE restrict,

    "_lft"                     INTEGER,
    "_rgt"                     INTEGER,
    "_type"                    VARCHAR  ( 32) NOT NULL,
    "_alias"                   TEXT,
    "identifier"               VARCHAR  ( 16),
    "postal_code"              VARCHAR  ( 16),
    "name"                     VARCHAR  (255) NOT NULL,
    "_created_at"              DATETIME       NOT NULL,
    "_updated_at"              DATETIME,
    "_deleted_at"              DATETIME
);

CREATE UNIQUE INDEX todo_administrative_divisions_identifier  ON todo_administrative_divisions ("identifier");
CREATE UNIQUE INDEX todo_administrative_divisions_name        ON todo_administrative_divisions ("_sup", "name");
CREATE UNIQUE INDEX todo_administrative_divisions_postal_code ON todo_administrative_divisions ("_sup", "postal_code");

CREATE INDEX todo_administrative_divisions_sup             ON todo_administrative_divisions ("_sup");
CREATE INDEX todo_administrative_divisions_type            ON todo_administrative_divisions ("_type");

# ---

CREATE TABLE todo_people
(
    "_id"            INTEGER        NOT NULL
        CONSTRAINT todo_person
            PRIMARY KEY autoincrement,

    "verified_at"    DATETIME,
    "given_name"     VARCHAR  (128) NOT NULL,
    "family_name"    VARCHAR  (128) NOT NULL,
    "alternate_name" VARCHAR  ( 32),
    "_created_at"    DATETIME       NOT NULL,
    "_updated_at"    DATETIME,
    "_deleted_at"    DATETIME
);

CREATE INDEX todo_people_name ON todo_people ("family_name", "given_name");

# ---

CREATE TABLE todo_users
(
    "_id"                  INTEGER        NOT NULL
        CONSTRAINT todo_user
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR  ( 32),
    "_obj"        UNSIGNED INTEGER,
    "verified_at"          DATETIME,
    "name"                 VARCHAR  ( 64) NOT NULL,
    "password"             VARCHAR  (255) NOT NULL,
    "_created_at"          DATETIME       NOT NULL,
    "_updated_at"          DATETIME,
    "_deleted_at"          DATETIME
);

CREATE UNIQUE INDEX todo_users_name ON todo_users ("name");

CREATE INDEX todo_users_type     ON todo_users ("_type");
CREATE INDEX todo_users_obj_type ON todo_users ("_obj", "_type");

# ---

CREATE TABLE todo_addresses
(
    "_id"                       INTEGER        NOT NULL
        CONSTRAINT todo_address
            PRIMARY KEY autoincrement,

    "_eq"              UNSIGNED INTEGER
        CONSTRAINT todo_address_same_as
            REFERENCES todo_addresses
                ON UPDATE restrict
                ON DELETE restrict,

    "_sup"             UNSIGNED INTEGER        NOT NULL
        CONSTRAINT todo_address_sup
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_type"                     VARCHAR  ( 32),
    "verified_at"               DATETIME,
    "additional_type"           VARCHAR  ( 32),
    "address_country"           VARCHAR  (  2) NOT NULL
        CONSTRAINT todo_address_country
            REFERENCES todo_administrative_divisions (identifier)
                ON UPDATE restrict
                ON DELETE restrict,

    "address_region"            VARCHAR  (  8) NOT NULL
        CONSTRAINT todo_address_region
            REFERENCES todo_administrative_divisions (identifier)
                ON UPDATE restrict
                ON DELETE restrict,

    "address_locality"          VARCHAR  ( 16) NOT NULL
        CONSTRAINT todo_address_locality
            REFERENCES todo_administrative_divisions (identifier)
                ON UPDATE restrict
                ON DELETE restrict,

    "address_location"          VARCHAR  ( 16)
        CONSTRAINT todo_address_location
            REFERENCES todo_administrative_divisions (identifier)
                ON UPDATE restrict
                ON DELETE restrict,

    "street_address"            VARCHAR  (255) NOT NULL,
    "street_name"               VARCHAR  ( 48),
    "street_number"             VARCHAR  ( 24),
    "_created_at"               DATETIME       NOT NULL,
    "_updated_at"               DATETIME,
    "_deleted_at"               DATETIME
);

CREATE INDEX todo_addresses_eq               ON todo_addresses ("_eq");
CREATE INDEX todo_addresses_uid              ON todo_addresses ("_sup");
CREATE INDEX todo_addresses_type             ON todo_addresses ("_type");
CREATE INDEX todo_addresses_address_locality ON todo_addresses ("address_country", "address_region", "address_locality");
CREATE INDEX todo_addresses_address_location ON todo_addresses ("address_locality", "address_location");
CREATE INDEX todo_addresses_street_address   ON todo_addresses ("address_locality", "street_address");
CREATE INDEX todo_addresses_street_name      ON todo_addresses ("address_locality", "street_number");