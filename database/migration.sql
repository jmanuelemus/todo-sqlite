CREATE TABLE todo_administrative_divisions
(
    "_id"                      INTEGER          NOT NULL
        CONSTRAINT todo_administrative_division
            PRIMARY KEY autoincrement,

    "_sup"            UNSIGNED INTEGER
        CONSTRAINT todo_administrative_division_geo_within
            REFERENCES todo_administrative_divisions
                ON UPDATE restrict
                ON DELETE restrict,

    "_lft"                     INTEGER,
    "_rgt"                     INTEGER,
    "_type"                    VARCHAR   ( 32) NOT NULL,
    "_alias"                   TEXT,
    "identifier"               VARCHAR   ( 16),
    "postal_code"              VARCHAR   ( 16),
    "name"                     VARCHAR   (255) NOT NULL,
    "_created_at"              TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"              TIMESTAMP,
    "_deleted_at"              TIMESTAMP
);

CREATE UNIQUE INDEX todo_administrative_divisions_identifier  ON todo_administrative_divisions ("identifier");
CREATE UNIQUE INDEX todo_administrative_divisions_name        ON todo_administrative_divisions ("_sup", "name");
CREATE UNIQUE INDEX todo_administrative_divisions_postal_code ON todo_administrative_divisions ("_sup", "postal_code");

CREATE INDEX todo_administrative_divisions_sup  ON todo_administrative_divisions ("_sup");
CREATE INDEX todo_administrative_divisions_type ON todo_administrative_divisions ("_type");

# ---

CREATE TABLE todo_api_keys
(
    "_id"          INTEGER         NOT NULL
        CONSTRAINT todo_api_key
            PRIMARY KEY autoincrement,

    "_str"         VARCHAR   (128) NOT NULL,
    "activated_at" TIMESTAMP,
    "name"         VARCHAR   ( 32) NOT NULL,
    "_created_at"  TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"  TIMESTAMP,
    "_deleted_at"  TIMESTAMP
);

CREATE UNIQUE INDEX todo_api_keys_str ON todo_api_keys ("_str");

# ---

CREATE TABLE todo_attributes
(
    "_id"                  INTEGER       NOT NULL
        CONSTRAINT todo_attribute
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   (32) NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "_att"                 VARCHAR   (64) NOT NULL,
    "value"                TEXT           NOT NULL,
    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_attributes_att ON todo_attributes ("_obj", "_type", "_att");

# ---

CREATE TABLE todo_emails
(
    "_id"                  INTEGER       NOT NULL
        CONSTRAINT todo_email
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   (32) NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "_str"                 VARCHAR   (64) NOT NULL,
    "verified_at"          TIMESTAMP,
    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_emails_str ON todo_emails ("_str");

CREATE INDEX todo_emails_type ON todo_emails ("_obj", "_type");

# ---

CREATE TABLE todo_hour_specifications
(
    "_id"                    INTEGER       NOT NULL
        CONSTRAINT todo_hour_specification
            PRIMARY KEY autoincrement,

    "_type"                  VARCHAR       NOT NULL,
    "_obj"          UNSIGNED INTEGER       NOT NULL,
    "day_of_week"   UNSIGNED TINYINT   (1) NOT NULL,
    "opens"                  TIME          NOT NULL,
    "closes"                 TIME          NOT NULL,
    "valid_from"             DATE,
    "valid_through"          DATE,
    "_created_at"            TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"            TIMESTAMP,
    "_deleted_at"            TIMESTAMP
);

CREATE INDEX todo_hour_specifications_valid_through ON todo_hour_specifications ("_obj", "_type", "day_of_week", "valid_through");

# ---

CREATE TABLE todo_organizations
(
    "_id"                   INTEGER         NOT NULL
        CONSTRAINT todo_organization
            PRIMARY KEY autoincrement,

    "_sup"         UNSIGNED INTEGER
        CONSTRAINT todo_organization_sup
            REFERENCES todo_organizations
                ON UPDATE restrict
                ON DELETE restrict,

    "_cctld"                VARCHAR   (  2)
        CONSTRAINT todo_organization_cctld
            REFERENCES todo_administrative_divisions (identifier)
                ON UPDATE restrict
                ON DELETE restrict,

    "verified_at"           TIMESTAMP,
    "name"                  VARCHAR   (255) NOT NULL,
    "_created_at"           TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"           TIMESTAMP,
    "_deleted_at"           TIMESTAMP
);

CREATE UNIQUE INDEX todo_organizations_name ON todo_organizations ("_cctld", "name");

CREATE INDEX todo_organizations_cctld ON todo_organizations ("_cctld");

# ---

CREATE TABLE todo_people
(
    "_id"            INTEGER         NOT NULL
        CONSTRAINT todo_person
            PRIMARY KEY autoincrement,

    "verified_at"    TIMESTAMP,
    "given_name"     VARCHAR   (128) NOT NULL,
    "family_name"    VARCHAR   (128) NOT NULL,
    "alternate_name" VARCHAR   ( 32),
    "_created_at"    TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"    TIMESTAMP,
    "_deleted_at"    TIMESTAMP
);

CREATE INDEX todo_people_name ON todo_people ("family_name", "given_name");

# ---

CREATE TABLE todo_permissions
(
    "_id"         INTEGER        NOT NULL
        CONSTRAINT todo_permission
            PRIMARY KEY autoincrement,
    
    "name"        VARCHAR   (32) NOT NULL,
    "_created_at" TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at" TIMESTAMP,
    "_deleted_at" TIMESTAMP
);

CREATE UNIQUE INDEX todo_permissions_name ON todo_permissions ("name");

# ---

CREATE TABLE todo_phones
(
    "_id"                  INTEGER        NOT NULL
        CONSTRAINT todo_phone
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   (32) NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "verified_at"          TIMESTAMP,
    "number"               VARCHAR   (32) NOT NULL,
    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_phones_number ON todo_phones ("_obj", "_type", "number");

# ---

CREATE TABLE todo_roles
(
    "_id"                  INTEGER        NOT NULL
        CONSTRAINT todo_role
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   (32) NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "name"                 VARCHAR   (64) NOT NULL,
    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_roles_name ON todo_roles ("_obj", "_type", "name");

# ---

CREATE TABLE todo_role_permissions
(
    "_id"                  INTEGER   NOT NULL
        CONSTRAINT todo_role_permission
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER   NOT NULL
        CONSTRAINT todo_role_permission_sup
            REFERENCES todo_permissions
                ON UPDATE restrict
                ON DELETE restrict,

    "_sub"        UNSIGNED INTEGER   NOT NULL
        CONSTRAINT todo_role_permission_sub
            REFERENCES todo_roles
                ON UPDATE restrict
                ON DELETE restrict,

    "_created_at"          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_role_permissions_sub ON todo_role_permissions ("_sup", "_sub");

# ---

CREATE TABLE todo_settings
(
    "_id"                  INTEGER        NOT NULL
        CONSTRAINT todo_setting
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   (32) NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "_att"                 VARCHAR   (64) NOT NULL,
    "value"                TEXT           NOT NULL,
    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_settings_att ON todo_settings ("_obj", "_type", "_att");

# ---

CREATE TABLE todo_teams
(
    "_id"                  INTEGER        NOT NULL
        CONSTRAINT todo_team
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   (32) NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "_name"                VARCHAR   (64) NOT NULL,
    "name"                 VARCHAR   (64) NOT NULL,
    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_teams_name ON todo_teams ("_type", "_obj", "name");

# ---

CREATE TABLE todo_urls
(
    "_id"                      INTEGER        NOT NULL
        CONSTRAINT todo_url
            PRIMARY KEY autoincrement,

    "_type"                    VARCHAR   ( 32) NOT NULL,
    "_obj"            UNSIGNED INTEGER         NOT NULL,
    "_str"                     VARCHAR   (255) NOT NULL,
    "additional_type"          VARCHAR   ( 32),
    "_created_at"              TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"              TIMESTAMP,
    "_deleted_at"              TIMESTAMP
);

CREATE UNIQUE INDEX todo_url_str ON todo_urls ("_obj", "_type", "_str");

CREATE INDEX todo_url_additional_type ON todo_urls ("additional_type");

# ---

CREATE TABLE todo_users
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_user
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   ( 32),
    "_obj"        UNSIGNED INTEGER,
    "verified_at"          TIMESTAMP,
    "name"                 VARCHAR   ( 64) NOT NULL,
    "password"             VARCHAR   (255) NOT NULL,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_users_name ON todo_users ("name");

CREATE INDEX todo_users_type     ON todo_users ("_type");
CREATE INDEX todo_users_obj_type ON todo_users ("_obj", "_type");

# ---

CREATE TABLE todo_addresses
(
    "_id"                       INTEGER            NOT NULL
        CONSTRAINT todo_address
            PRIMARY KEY autoincrement,

    "_eq"              UNSIGNED INTEGER
        CONSTRAINT todo_address_same_as
            REFERENCES todo_addresses
                ON UPDATE restrict
                ON DELETE restrict,

    "_sup"             UNSIGNED INTEGER            NOT NULL
        CONSTRAINT todo_address_sup
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_type"                     VARCHAR   (    32),
    "_obj"                      INTEGER,
    "_cctld"                    VARCHAR   (     2) NOT NULL
        CONSTRAINT todo_address_country
            REFERENCES todo_administrative_divisions (identifier)
                ON UPDATE restrict
                ON DELETE restrict,

    "_geo"                      VARCHAR   (    16)
        CONSTRAINT todo_address_locality
            REFERENCES todo_administrative_divisions (identifier)
                ON UPDATE restrict
                ON DELETE restrict,

    "_lat"                      DECIMAL   (8,   6),
    "_lon"                      DECIMAL   (9,   6),
    "verified_at"               TIMESTAMP,
    "additional_type"           VARCHAR   (    32),
    "address_1"                 VARCHAR   (   255) NOT NULL,
    "address_2"                 VARCHAR   (   255) NOT NULL,
    "_created_at"               TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"               TIMESTAMP,
    "_deleted_at"               TIMESTAMP
);

CREATE INDEX todo_addresses_eq               ON todo_addresses ("_eq");
CREATE INDEX todo_addresses_type             ON todo_addresses ("_obj", "_type");
CREATE INDEX todo_addresses_address_cctld    ON todo_addresses ("_cctld");
CREATE INDEX todo_addresses_address_geo      ON todo_addresses ("_geo");
CREATE INDEX todo_addresses_additional_type  ON todo_addresses ("additional_type");
CREATE INDEX todo_addresses_address_1        ON todo_addresses ("_geo", "address_1");

# ---

CREATE TABLE todo_api_clients
(
    "_id"                    INTEGER        NOT NULL
        CONSTRAINT todo_api_client
            PRIMARY KEY autoincrement,

    "_sup"          UNSIGNED INTEGER
        CONSTRAINT todo_api_client_vendor
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "published_at"           TIMESTAMP,
    "client_id"              VARCHAR   (32) NOT NULL,
    "client_secret"          VARCHAR   (64) NOT NULL,
    "name"                   VARCHAR   (64) NOT NULL,
    "_created_at"            TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"            TIMESTAMP,
    "_deleted_at"            TIMESTAMP
);

CREATE UNIQUE INDEX todo_api_clients_id   ON todo_api_clients ("client_id");
CREATE UNIQUE INDEX todo_api_clients_name ON todo_api_clients ("_sup", "name");

# ---

CREATE TABLE todo_api_tokens
(
    "_id"                      INTEGER         NOT NULL
        CONSTRAINT todo_api_token
            PRIMARY KEY autoincrement,

    "_sup"            UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_api_token_sup
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_app"            UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_api_token_app
            REFERENCES todo_api_clients
                ON UPDATE restrict
                ON DELETE restrict,

    "_str"                     VARCHAR   (128) NOT NULL,
    "code"                     INTEGER         NOT NULL,
    "expiration_date"          TIMESTAMP       NOT NULL,
    "_created_at"              TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"              TIMESTAMP,
    "_deleted_at"              TIMESTAMP
);

CREATE UNIQUE INDEX todo_api_tokens_str ON todo_api_tokens ("_str");

CREATE INDEX todo_api_tokens_expiration_date ON todo_api_tokens ("expiration_date" DESC);

# ---

CREATE TABLE todo_comments
(
    "_id"                  INTEGER   NOT NULL
        CONSTRAINT todo_comment
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER   NOT NULL
        CONSTRAINT todo_comment_author
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_type"                VARCHAR   NOT NULL,
    "_obj"        UNSIGNED INTEGER   NOT NULL,
    "text"                 TEXT      NOT NULL,
    "_created_at"          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE INDEX todo_comments_sup  ON todo_comments ("_sup");
CREATE INDEX todo_comments_type ON todo_comments ("_obj", "_type");

# ---

CREATE TABLE todo_media
(
    "_id"                      INTEGER         NOT NULL
        CONSTRAINT todo_media
            PRIMARY KEY autoincrement,

    "_sup"            UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_media_publisher
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,


    "_type"                    VARCHAR   ( 32),
    "_obj"            UNSIGNED INTEGER,
    "_pos"            UNSIGNED INTEGER,
    "_url"                     VARCHAR   (255) NOT NULL,
    "additional_type"          VARCHAR   ( 32) NOT NULL,
    "mime_type"                VARCHAR   ( 32) NOT NULL,
    "name"                     VARCHAR   (255) NOT NULL,
    "alternate_name"           VARCHAR   (255),
    "description"              TEXT,
    "_created_at"              TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"              TIMESTAMP,
    "_deleted_at"              TIMESTAMP
);

CREATE UNIQUE INDEX todo_media_url ON todo_media ("_url");

CREATE INDEX todo_media_sup             ON todo_media ("_sup");
CREATE INDEX todo_media_pos             ON todo_media ("_obj", "_type", "_pos");
CREATE INDEX todo_media_additional_type ON todo_media ("_obj", "_type", "additional_type");
CREATE INDEX todo_media_name            ON todo_media ("name");

# ---

CREATE TABLE todo_places
(
    "_id"                                INTEGER            NOT NULL
        CONSTRAINT todo_place
            PRIMARY KEY autoincrement,

    "_eq"                       UNSIGNED INTEGER
        CONSTRAINT todo_place_same_as
            REFERENCES todo_places
                ON UPDATE restrict
                ON DELETE restrict,

    "_sup"                      UNSIGNED INTEGER
        CONSTRAINT todo_place_contained_in_place
            REFERENCES todo_places
                ON UPDATE restrict
                ON DELETE restrict,

    "_lft"                               INTEGER,
    "_rgt"                               INTEGER,
    "_type"                              VARCHAR   (    32),
    "_obj"                      UNSIGNED INTEGER,
    "_lat"                               DECIMAL   (8,   6),
    "_lon"                               DECIMAL   (9,   6),
    "_adr"                      UNSIGNED INTEGER
        CONSTRAINT todo_place_address
            REFERENCES todo_addresses
                ON UPDATE restrict
                ON DELETE restrict,

    "_uid"                      UNSIGNED INTEGER
        CONSTRAINT todo_place_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "additional_type"                    VARCHAR,
    "identifier"                         VARCHAR   (    16),
    "name"                               VARCHAR   (   255) NOT NULL,
    "alternate_name"                     VARCHAR   (   128),
    "floor_number"                       INTEGER,
    "maximum_attendee_capacity" UNSIGNED INTEGER,
    "is_accessible_for_free"             BOOLEAN,
    "public_access"                      BOOLEAN,
    "_created_at"                        TIMESTAMP          NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"                        TIMESTAMP,
    "_deleted_at"                        TIMESTAMP
);

CREATE UNIQUE INDEX todo_places_identifier ON todo_places ("_uid", "_type", "identifier");

CREATE INDEX todo_places_eq              ON todo_places ("_eq");
CREATE INDEX todo_places_sup             ON todo_places ("_sup");
CREATE INDEX todo_places_type            ON todo_places ("_type");
CREATE INDEX todo_places_adr             ON todo_places ("_adr");
CREATE INDEX todo_places_lat_lon         ON todo_places ("_lat", "_lon");
CREATE INDEX todo_places_uid             ON todo_places ("_uid");
CREATE INDEX todo_places_additional_type ON todo_places ("additional_type");
CREATE INDEX todo_places_name            ON todo_places ("name");
CREATE INDEX todo_places_alternate_name  ON todo_places ("alternate_name");

# ---

CREATE TABLE todo_activities
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_activity
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   ( 32) NOT NULL,
    "_obj"        UNSIGNED INTEGER         NOT NULL,
    "_pos"        UNSIGNED INTEGER,
    "_geo"        UNSIGNED INTEGER
        CONSTRAINT todo_activity_geo
            REFERENCES todo_places
                ON UPDATE restrict
                ON DELETE restrict,

    "_uid"        UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_activity_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "start_date"           DATETIME,
    "end_date"             DATETIME,
    "name"                 VARCHAR   (128) NOT NULL,
    "description"          TEXT,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_activities_name ON todo_activities ("_obj", "_type", "name");

CREATE INDEX todo_activities_pos        ON todo_activities ("_obj", "_type", "_pos");
CREATE INDEX todo_activities_geo        ON todo_activities ("_geo");
CREATE INDEX todo_activities_uid        ON todo_activities ("_uid");
CREATE INDEX todo_activities_start_date ON todo_activities ("start_date");
CREATE INDEX todo_activities_end_date   ON todo_activities ("end_date" DESC);

# ---

CREATE TABLE todo_logs
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_log
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   ( 32) NOT NULL,
    "_obj"        UNSIGNED INTEGER         NOT NULL,
    "_uid"        UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_log_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_verb"                VARCHAR   (  4) NOT NULL,
    "_att"                 VARCHAR   ( 32) NOT NULL,
    "value"                TEXT            NOT NULL,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE INDEX todo_logs_uid ON todo_logs ("_uid");
CREATE INDEX todo_logs_att ON todo_logs ("_obj", "_type", "_att");

# ---

CREATE TABLE todo_notifications
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_notification
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_notification_sup
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_type"                VARCHAR   ( 32) NOT NULL,
    "_obj"        UNSIGNED INTEGER         NOT NULL,
    "_geo"        UNSIGNED INTEGER
        CONSTRAINT todo_notification_geo
            REFERENCES todo_places
                ON UPDATE restrict
                ON DELETE restrict,

    "code"        UNSIGNED INTEGER,
    "text"                 VARCHAR   (255) NOT NULL,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE INDEX todo_notifications_sup        ON todo_notifications ("_sup");
CREATE INDEX todo_notifications_type       ON todo_notifications ("_obj", "_type");
CREATE INDEX todo_notifications_created_at ON todo_notifications ("_sup", "_created_at");

# ---

CREATE TABLE todo_passwords
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_password
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_password_sup
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_str"                 VARCHAR   (255) NOT NULL,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE INDEX todo_passwords_sup ON todo_passwords ("_sup");

# ---

CREATE TABLE todo_password_resets
(
    "_id"                      INTEGER         NOT NULL
        CONSTRAINT todo_password_reset
            PRIMARY KEY autoincrement,

    "_sup"            UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_password_reset_sup
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "code"            UNSIGNED INTEGER         NOT NULL,
    "token"                    VARCHAR   (128) NOT NULL,
    "expiration_date"          TIMESTAMP       NOT NULL,
    "_created_at"              TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"              TIMESTAMP,
    "_deleted_at"              TIMESTAMP
);

CREATE UNIQUE INDEX todo_password_resets_token ON todo_password_resets ("token");

CREATE INDEX todo_password_resets_sup ON todo_password_resets ("_sup");

# ---

CREATE TABLE todo_projects
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_project
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   ( 32) NOT NULL,
    "_obj"        UNSIGNED INTEGER         NOT NULL,
    "_geo"        UNSIGNED INTEGER
        CONSTRAINT todo_project_geo
            REFERENCES todo_places
                ON UPDATE restrict
                ON DELETE restrict,

    "_uid"        UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_project_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "start_date"           DATETIME,
    "end_date"             DATETIME,
    "name"                 VARCHAR   (128) NOT NULL,
    "description"          TEXT,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_projects_name ON todo_projects ("_obj", "_type", "name");

CREATE INDEX todo_projects_geo        ON todo_projects ("_geo");
CREATE INDEX todo_projects_uid        ON todo_projects ("_uid");
CREATE INDEX todo_projects_start_date ON todo_projects ("start_date");
CREATE INDEX todo_projects_end_date   ON todo_projects ("end_date" DESC);

# ---

CREATE TABLE todo_reminders
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_reminder
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_task_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_type"                VARCHAR   ( 32) NOT NULL,
    "_obj"        UNSIGNED INTEGER         NOT NULL,
    "_geo"        UNSIGNED INTEGER
        CONSTRAINT todo_task_geo
            REFERENCES todo_places
                ON UPDATE restrict
                ON DELETE restrict,
    
    "due_date"             DATETIME        NOT NULL,
    "name"                 VARCHAR   (255) NOT NULL,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE INDEX todo_reminders_sup      ON todo_reminders ("_sup");
CREATE INDEX todo_reminders_obj      ON todo_reminders ("_obj", "_type");
CREATE INDEX todo_reminders_geo      ON todo_reminders ("_geo");
CREATE INDEX todo_reminders_due_date ON todo_reminders ("_sup", "due_date");

# ---

CREATE TABLE todo_tasks
(
    "_id"                  INTEGER         NOT NULL
        CONSTRAINT todo_task
            PRIMARY KEY autoincrement,

    "_type"                VARCHAR   ( 32) NOT NULL,
    "_obj"        UNSIGNED INTEGER         NOT NULL,
    "_pos"        UNSIGNED INTEGER,
    "_geo"        UNSIGNED INTEGER
        CONSTRAINT todo_task_geo
            REFERENCES todo_places
                ON UPDATE restrict
                ON DELETE restrict,
    
    "_uid"        UNSIGNED INTEGER         NOT NULL
        CONSTRAINT todo_task_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "start_date"           DATETIME,
    "end_date"             DATETIME,
    "name"                 VARCHAR   (128) NOT NULL,
    "description"          TEXT,
    "_created_at"          TIMESTAMP       NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_tasks_name ON todo_tasks ("_obj", "_type", "name");

CREATE INDEX todo_tasks_pos        ON todo_tasks ("_obj", "_type", "_pos");
CREATE INDEX todo_tasks_geo        ON todo_tasks ("_geo");
CREATE INDEX todo_tasks_uid        ON todo_tasks ("_uid");
CREATE INDEX todo_tasks_start_date ON todo_tasks ("start_date");
CREATE INDEX todo_tasks_end_date   ON todo_tasks ("end_date" DESC);

# ---

CREATE TABLE todo_team_members
(
    "_id"                  INTEGER   NOT NULL
        CONSTRAINT todo_team_member
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER   NOT NULL
        CONSTRAINT todo_team_member_sup
            REFERENCES todo_teams
                ON UPDATE restrict
                ON DELETE restrict,

    "_uid"        UNSIGNED INTEGER   NOT NULL
        CONSTRAINT todo_team_member_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_created_at"          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE INDEX todo_team_members_sup ON todo_team_members ("_sup");
CREATE INDEX todo_team_members_uid ON todo_team_members ("_uid");

# ---

CREATE TABLE todo_user_permissions
(
    "_id"                  INTEGER        NOT NULL
        CONSTRAINT todo_user_permission
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER        NOT NULL
        CONSTRAINT todo_user_permission_sup
            REFERENCES todo_permissions
                ON UPDATE restrict
                ON DELETE restrict,

    "_type"                VARCHAR   (32)  NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "_uid"        UNSIGNED INTEGER        NOT NULL
        CONSTRAINT todo_user_permissions_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_user_permissions_sup On todo_user_permissions ("_uid", "_obj", "_type", "_sup");

# ---

CREATE TABLE todo_user_roles
(
    "_id"                  INTEGER        NOT NULL
        CONSTRAINT todo_user_role
            PRIMARY KEY autoincrement,

    "_sup"        UNSIGNED INTEGER        NOT NULL
        CONSTRAINT todo_user_role_sup
            REFERENCES todo_roles
                ON UPDATE restrict
                ON DELETE restrict,

    "_type"                VARCHAR   (32) NOT NULL,
    "_obj"        UNSIGNED INTEGER        NOT NULL,
    "_uid"        UNSIGNED INTEGER        NOT NULL
        CONSTRAINT todo_user_role_uid
            REFERENCES todo_users
                ON UPDATE restrict
                ON DELETE restrict,

    "_created_at"          TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "_updated_at"          TIMESTAMP,
    "_deleted_at"          TIMESTAMP
);

CREATE UNIQUE INDEX todo_user_roles_sup On todo_user_roles ("_uid", "_obj", "_type", "_sup");