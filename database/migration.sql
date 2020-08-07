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