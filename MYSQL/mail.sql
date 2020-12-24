/* 
 * В данном проекте реализована модель хранения данных, включающая в себя данные различных новостей разных тематик и 
 * технологию электронной почты, предназначенную для отправления и получения электронных сообщений.
 * Проект был реализован на основе сайта mail.ru.
 * Структура БД содержит 14 таблиц (с первичными ключами, индексами и внешними ключами).
 * Таблицы БД содержат почту и необходимую информацию о пользователях сайта, каталоги, заголовки и разделы новостей сайта,
 * сообщения пользователей и других email аккаунтов, а также поисковая строка интернет запросов.
 * В проекте представлены скрипты наполнения БД данными, скрипты характерных выборок, различные представления,
 * хранимая процедура и триггеры.
 */

DROP DATABASE IF EXISTS mail;
CREATE DATABASE mail;
USE mail;

-- названия разделов сайта
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200)
);

-- заголовки новостей разделов сайта
DROP TABLE IF EXISTS rubrics;
CREATE TABLE rubrics(
    id SERIAL,
    catalog_id BIGINT UNSIGNED NOT NULL,
    name VARCHAR(200),
    created_at datetime DEFAULT current_timestamp(),
    updated_at datetime DEFAULT NULL ON UPDATE current_timestamp(),
    
    FOREIGN KEY (catalog_id) REFERENCES catalogs(id)
);

-- описание новостей разделов сайта
DROP TABLE IF EXISTS news;
CREATE TABLE news(
    rubric_id BIGINT UNSIGNED NOT NULL UNIQUE,
	description VARCHAR(200),
    media_id BIGINT UNSIGNED NOT NULL, -- вставлю различные медиа
    
    FOREIGN KEY (rubric_id) REFERENCES rubrics(id)
);

-- создание почты пользователей
DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    birthday DATE DEFAULT NULL,
    gender CHAR(1),
    password_hash VARCHAR(100),
	phone BIGINT UNSIGNED UNIQUE, 
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP(),
    
    INDEX accounts_firstname_lastname_idx(firstname, lastname)
);

DROP TABLE IF EXISTS accounts_emails;
CREATE TABLE accounts_emails(
    account_id BIGINT UNSIGNED NOT NULL UNIQUE,
    name_mail VARCHAR(50),
    domen ENUM('@mail.ru', '@bk.ru', '@inbox.ru', '@list.ru'),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP(),
    
    INDEX name_domen_idx(name_mail, domen),
    FOREIGN KEY (account_id) REFERENCES accounts(id)
);

-- другие почтовые ящики
DROP TABLE IF EXISTS other_emails;
CREATE TABLE other_emails(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_other VARCHAR(50)
);

-- различные медиа типы
DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL,
    name VARCHAR(255), 
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL,
    media_type_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255), 	
    size INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

-- действия с сообщениями (отправление, удаление, отметить как прочитанное)
DROP TABLE IF EXISTS messages;
CREATE TABLE messages(
    id SERIAL,
    media_id BIGINT UNSIGNED NOT NULL,  -- отправить можно не только текст, но и различные медиа...
    from_mail_id BIGINT UNSIGNED NOT NULL,
    to_mail_id BIGINT UNSIGNED NOT NULL,
    is_deleted BIT DEFAULT 0, -- удаление
	is_read BIT DEFAULT 0, -- прочитанное
	is_spam BIT DEFAULT 0, -- спам
	created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (media_id) REFERENCES media(id),
    FOREIGN KEY (from_mail_id) REFERENCES accounts(id),
    FOREIGN KEY (to_mail_id) REFERENCES accounts(id)
);

-- действия с сообщениями можно совершать и с другими различными почтовыми ящиками 
DROP TABLE IF EXISTS other_send_messages;
CREATE TABLE other_send_messages(
    id SERIAL,
    media_id BIGINT UNSIGNED NOT NULL,
    from_mail_id BIGINT UNSIGNED NOT NULL,
    to_othermail_id BIGINT UNSIGNED NOT NULL,
    is_deleted BIT DEFAULT 0, 
	is_read BIT DEFAULT 0,
	is_spam BIT DEFAULT 0,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (media_id) REFERENCES media(id),
    FOREIGN KEY (from_mail_id) REFERENCES accounts(id),
    FOREIGN KEY (to_othermail_id) REFERENCES other_emails(id)
);

DROP TABLE IF EXISTS other_receiver_messages;
CREATE TABLE other_receiver_messages(
    id SERIAL,
    media_id BIGINT UNSIGNED NOT NULL,
    from_othermail_id BIGINT UNSIGNED NOT NULL,
    to_mail_id BIGINT UNSIGNED NOT NULL,
    is_deleted BIT DEFAULT 0, 
	is_read BIT DEFAULT 0,
	is_spam BIT DEFAULT 0,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (media_id) REFERENCES media(id),
    FOREIGN KEY (from_othermail_id) REFERENCES other_emails(id),
    FOREIGN KEY (to_mail_id) REFERENCES accounts(id)
);

-- добавил ключ для таблицы новостей
ALTER TABLE mail.news 
ADD CONSTRAINT news_fk_1 
FOREIGN KEY (media_id) REFERENCES media(id);

-- таблица популярности новостей (идея - новость тем популярнее, чем больше аккаунтов ее читает)
DROP TABLE IF EXISTS popular_rubrics;
CREATE TABLE popular_rubrics(
	id SERIAL,
	rubric_id BIGINT UNSIGNED NOT NULL,
    account_id BIGINT UNSIGNED NOT NULL,
    read_at DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (account_id) REFERENCES accounts(id),
    FOREIGN KEY (rubric_id) REFERENCES rubrics(id)
);

-- поисковая интернет - строка 
DROP TABLE IF EXISTS web_queries;
CREATE TABLE web_queries(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    query VARCHAR(300),
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    INDEX queries_idx(query)
);

-- таблица "ответов" поисковой строки
DROP TABLE IF EXISTS web_answers;
CREATE TABLE web_answers(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    queries_id BIGINT UNSIGNED NOT NULL,
    media_id BIGINT UNSIGNED NOT NULL,
    site_name VARCHAR(250),
    rubric_name VARCHAR(250),
    
    FOREIGN KEY (queries_id) REFERENCES  web_queries(id),
    FOREIGN KEY (media_id) REFERENCES  media(id)
);







