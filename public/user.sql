-- account
CREATE TABLE `account` (
    `account_num` Int KEY AUTO_INCREMENT,
    `account_name` VARCHAR(255) NOT NULL,
    `account_password` VARCHAR(255) NOT NULL,
    `account_permission` VARCHAR(255) not null
)CHARSET UTF8;

INSERT INTO `account` (account_name,account_password,account_permission)
VALUES
('Ac01','a123456',1),
('Ac02','a567890',0);


-- user
CREATE TABLE `user1` ( 
    `user_num` Int KEY AUTO_INCREMENT,
    `user_name` VARCHAR(255) NOT NULL,
    `user_sex` VARCHAR(255) NOT NULL,
    `user_mail` VARCHAR(255) not null,
    `user_phone` VARCHAR(255) not null,
    `user_address` VARCHAR(255)
)CHARSET UTF8;

INSERT INTO `user1` (user_name,user_sex,user_mail,user_phone,user_address)
VALUES
('大漂亮',0,'aaa@gmail.com',0988686886,'台北市中正區忠孝西路一段999號1樓'),
('卡了米',1,'bbb@gmail.com',0987487987,"");


-- permission
CREATE TABLE `permission` ( 
    `permission_num` VARCHAR(20) NOT NULL,
    `permission_name` VARCHAR(255) NOT NULL
)CHARSET UTF8;

INSERT INTO `permission` (permission_num,permission_name)
VALUES
(0,'管理員'),
(1,'一級會員');


-- sex
CREATE TABLE `sex` ( 
    `sex_num` VARCHAR(20) NOT NULL,
    `sex_name` VARCHAR(255) NOT NULL
)CHARSET UTF8;

INSERT INTO `sex` (sex_num,sex_name)
VALUES
(0,'女'),
(1,'男');

-- 內連接
SELECT user1.*,A.account_num FROM user1
INNER JOIN account AS A
ON user1.user_num = A.account_num;
