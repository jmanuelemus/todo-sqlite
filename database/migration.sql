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