INSERT INTO todo_people(
    verified_at, given_name, family_name, alternate_name, _created_at

) VALUES (datetime('now'), 'Juan Manuel', 'Lemus Ponciano', 'Juanma', datetime('now'));

# ---

INSERT INTO todo_users (
    _type, _obj, verified_at, name, password, _created_at

) VALUES ('Person', 1, datetime('now'), 'jmanuelemus', '$2y$10$aM3M4xfwniFpmvLPI5ztmeT6.VwxU9UYfBN.WVLpjcv3HK/ci9lvq', datetime('now'));