DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS company CASCADE;



CREATE TABLE users 
(
    user_id      UUID PRIMARY KEY UNIQUE             DEFAULT uuid_generate_v4(),
    last_name    VARCHAR(32)                NOT NULL CHECK(last_name <> ''),
    first_name   VARCHAR(32)                NOT NULL CHECK(first_name <> ''),
    email        VARCHAR(64) UNIQUE         NOT NULL CHECK(email <> ''),
    state        VARCHAR(25)                NOT NULL CHECK(state <> ''),
    country      VARCHAR(30)                NOT NULL DEFAULT 'nigeria'
    role         VARCHAR(20)                NOT NULL DEFAULT 'user',
    profession   VARCHAR(30)                NOT NULL DEFAULT 'student',
    password     VARCHAR(256)               NOT NULL CHECK( octet_length(password) <> ''),
    phone_number VARCHAR(20),
    gender       VARCHAR(20)                NOT NULL DEFAULT 'female'
    created_at   TIMESTAMP WITH TIME ZONE   NOT NULL DEFAULT NOW(),
    updated_at   TIMESTAMP WITH TIME ZONE            DEFAULT CURRENT_TIMESTAMP,
    deleted_at   TIMESTAMP WITH TIME ZONE          
);  

CREATE TABLE company
(
    company_id UUID PRIMARY KEY UNIQUE DEFAULT uuid_generate_v4(),
    company_name VARCHAR(40)           NOT NULL CHECK(company_name <> ''),
    state        VARCHAR(32)           NOT NULL DEFAULT 'lagos',
    country      VARCHAR(32)           NOT NULL DEFAULT 'nigeria',
    email        VARCHAR(64) UNIQUE    NOT NULL CHECK(email<>''),
    category     VARCHAR(32)           NOT NULL CHECK(category<>''),
    description  VARCHAR(256)  UNIQUE  NOT NULL 
    likes        BIGINT                            DEFAULT 0
    created_at   TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    updated_at   TIMESTAMP WITH TIME ZONE          DEFAULT CURRENT_TIMESTAMP,
    deleted_at   TIMESTAMP WITH TIME ZONE
);

CREATE TABLE comment
(
    id UUID FOREIGN KEY UNIQUE,
    author_id UUID NOT NULL REFERENCES users(user_id),
    company_id UUID NOT NULL REFERENCES company(company_id),
    email VARCHAR(64) NOT NULL CHECK(email<> ''),
    comment VARCHAR(250) NOT NULL CHECK(comments<>'')
);


CREATE TABLE company_contact
(
    id UUID FOREIGN KEY UNIQUE  DEFAULT uuid_generate_v4(),
    name VARCHAR(64)            NOT NULL CHECK(name <> ''),
    phone_number VARCHAR(20) NOT NULL CHECK(phone_number<>''),
    email VARCHAR(64) NOT NULL CHECK(email <> ''),
);

CREATE INDEX IF NOT EXISTS category_id ON company(category)