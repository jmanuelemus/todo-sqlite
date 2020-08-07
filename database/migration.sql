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