CREATE TABLE roles
(
    id      BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name    VARCHAR(50) NOT NULL UNIQUE CHECK (CHAR_LENGTH(name) > 0)
);

CREATE TABLE rules
(
    id   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE CHECK (CHAR_LENGTH(name) > 0)
);

CREATE TABLE roles_rules
(
    role_id BIGINT REFERENCES roles(id),
    rule_id BIGINT REFERENCES rules(id),
    PRIMARY KEY (role_id, rule_id)
);

CREATE TABLE users
(
    id            BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    login         VARCHAR(50) NOT NULL UNIQUE CHECK (CHAR_LENGTH(login) > 0),
    mail          TEXT        NOT NULL UNIQUE CHECK (CHAR_LENGTH(mail) > 0),
    password_hash TEXT        NOT NULL CHECK (CHAR_LENGTH(password_hash) > 0),
    active        BOOLEAN     NOT NULL DEFAULT true,
    role_id BIGINT NOT NULL REFERENCES roles(id)
);

CREATE TABLE states
(
    id   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE CHECK (CHAR_LENGTH(name) > 0)
);

CREATE TABLE categories
(
    id   BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL CHECK (CHAR_LENGTH(name) > 0)
);

CREATE TABLE items
(
    id            BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title         TEXT   NOT NULL CHECK (CHAR_LENGTH(title) > 0),
    description   TEXT   NOT NULL CHECK (CHAR_LENGTH(description) > 0),
    author_id     BIGINT NOT NULL REFERENCES users (id),
    state_id      BIGINT NOT NULL REFERENCES states (id),
    categories_id BIGINT NOT NULL REFERENCES categories (id)
);

CREATE TABLE comments
(
    id        BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    text      TEXT   NOT NULL CHECK (CHAR_LENGTH(text) > 0),
    author_id BIGINT NOT NULL REFERENCES users (id),
    item_id   BIGINT NOT NULL REFERENCES items (id)
);
