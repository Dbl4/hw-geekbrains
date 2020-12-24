-- 1. Почты всех аккаунтов 

SELECT 
CONCAT(ae.name_mail, '', ae.domen) as emals
FROM accounts_emails as ae
UNION
SELECT oe.name_other
FROM other_emails as oe;

-- 2. Возвращает имена и домены всех аккаунтов

SELECT 
ae.name_mail, ae.domen
FROM accounts_emails as ae
UNION
SELECT 
substring_index(oe.name_other, '@', 1) as name_mail,
substring(oe.name_other, instr(oe.name_other, '@')) as domen  
FROM other_emails as oe;

-- 3. Представление, выводящее несколько самых популярных новостей, их каталог и раздел(заголовок)

CREATE OR REPLACE VIEW popular_list_news as
SELECT pr.rubric_id as 'номер новости', cat.name as 'каталог популярных новостей', r.name as 'заголовки', n.description as 'описание'
FROM popular_rubrics as pr
JOIN rubrics as r
ON pr.rubric_id = r.id
JOIN catalogs as cat
ON r.catalog_id = cat.id
JOIN news as n
ON n.rubric_id = r.id
GROUP BY pr.rubric_id
ORDER BY count(pr.rubric_id) DESC LIMIT 3;

SELECT * FROM popular_list_news;

-- 4. Представление, выводящие сообщения и их аккаунты, отправленные пользователями в раздел спам
-- (пользователь может свои сообщения отправлять в спам)

CREATE OR REPLACE VIEW spam_list as
SELECT CONCAT(ae.name_mail, '', ae.domen) as 'отправитель', CONCAT(ae1.name_mail, '', ae1.domen) as 'получатель', m.is_spam
FROM messages as m
JOIN accounts_emails ae
ON ae.account_id = m.from_mail_id
JOIN accounts_emails ae1
ON ae1.account_id = m.to_mail_id
WHERE m.is_spam = 1
	UNION
SELECT CONCAT(ae2.name_mail, '', ae2.domen) as 'отправитель', oe.name_other as 'получатель', osm.is_spam
FROM other_send_messages as osm
JOIN accounts_emails ae2
ON ae2.account_id = osm.from_mail_id
JOIN other_emails oe
ON oe.id = osm.to_othermail_id
WHERE osm.is_spam = 1
	UNION
SELECT oe1.name_other as 'отправитель', CONCAT(ae3.name_mail, '', ae3.domen) as 'получатель', orm.is_spam
FROM other_receiver_messages as orm
JOIN other_emails oe1
ON oe1.id = orm.from_othermail_id
JOIN accounts_emails ae3
ON ae3.account_id = orm.to_mail_id
WHERE orm.is_spam = 1;

SELECT * FROM spam_list;

-- 5. Представление входящих сообщений конкретного пользователя( id = 1)

CREATE OR REPLACE VIEW incoming_messages_id_1 as
SELECT CONCAT(ae.name_mail, '', ae.domen) as 'отправитель', md.body as 'сообщение', m.is_deleted as 'корзина', m.is_read as 'прочитанное', m.is_spam as 'спам', m.created_at as 'дата' 
FROM messages as m
JOIN media md
ON md.id = m.media_id
JOIN accounts_emails ae
ON ae.account_id = m.from_mail_id
WHERE m.to_mail_id = 1
UNION
SELECT oe1.name_other as 'отправитель', md1.body, orm.is_deleted, orm.is_read, orm.is_spam, orm.created_at 
FROM other_receiver_messages as orm
JOIN media md1
ON md1.id = orm.media_id
JOIN other_emails oe1
ON oe1.id = orm.from_othermail_id
WHERE orm.to_mail_id = 1;

SELECT * FROM incoming_messages_id_1;

-- 6.Хранимая процедура "рекомендуемые новости" для конкретного пользователя, в зависимости от каталогов новостей, которые читал. 
-- Подбираются новые непрочитанные заголовки новостей, отсортированные по дате.

DELIMITER //

CREATE PROCEDURE recommend_news(for_account_id BIGINT)
BEGIN

SELECT cat.name as 'каталоги новостей', r1.name as 'заголовки', r1.created_at as 'дата создания'
FROM popular_rubrics as pr
JOIN rubrics as r
ON r.id = pr.rubric_id
JOIN rubrics as r1
ON r1.id != pr.rubric_id
JOIN catalogs as cat
ON cat.id = r.catalog_id and cat.id = r1.catalog_id
WHERE pr.account_id = for_account_id
ORDER BY r1.created_at DESC LIMIT 3
;
END //

DELIMITER ;

call recommend_news(6);

-- 7.Триггеры на вставку, обновление и удаление записей в таблице catalogs;

-- вставка
DELIMITER //

CREATE TRIGGER validate_catalogs_id_insert
before insert on catalogs
FOR EACH ROW
begin 
    IF NEW.id > 11 THEN
        SIGNAL SQLSTATE '11000' SET MESSAGE_TEXT = 'Вставка отменена. Количество записей в таблице catalogs больше 11';
    END IF;
end //

DELIMITER ;

INSERT INTO `catalogs` VALUES ('12','Новости');

-- обновление
DELIMITER //

CREATE TRIGGER validate_catalogs_id_update 
before update on catalogs
FOR EACH ROW 
begin
    IF (NEW.id BETWEEN 0 and 12) THEN
        SIGNAL SQLSTATE '12000'  SET MESSAGE_TEXT = 'Обновление текущих записей невозможно';
    END IF;
end //

DELIMITER ;

UPDATE catalogs 
SET name = 'Дом'
where id = 5;

-- удаление

DELIMITER //

CREATE TRIGGER validate_catalogs_id_delete
before delete on catalogs
FOR EACH ROW 
begin
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Запись не может быть удалена';
end //

DELIMITER ;

DELETE from catalogs where id = 1;



