-- 取得资料 select
#  * 表示获取所有列
SELECT * FROM `student`;

# 获取指定列
SELECT `name`,`major` FROM `student`;

# 获取列（根据排序）默认是升序 asc(ascending) ，降序desc(descending) 
## 默认 升序 asc
SELECT * 
FROM `student`
ORDER BY `score`;
## 降序desc
SELECT * 
FROM `student`
ORDER BY `score` DESC;
## 根据多列排序，依据顺序，若出现相同值则对比下一个列的值大小进行排序（根据排序）
SELECT * 
FROM `student`
ORDER BY `score` ,`student_id`;
## LIMIT 限制返回记录的数量
SELECT * 
FROM `student`
ORDER BY `score`
LIMIT 3; 		-- 取得分数最低的前三
-- 取得分数最高的前三
SELECT * 
FROM `student`
ORDER BY `score` DESC
LIMIT 3; 
## 条件SELECT + WHERE （1）
SELECT * 
FROM `student`
WHERE `major`='英语' OR `score`<>70
LIMIT 2;
## 条件SELECT + WHERE （2）
SELECT * 
FROM `student`
WHERE `major` IN ('历史','英语') AND `student_id`=1;  
-- 等价于  WHERE `major` = '历史' OR `major` = '英语' OR `major' = '生物';
-- MySQL中，AND的执行优先级高于OR。也就是说，在没有小括号()的干预下，总是先执行AND语句，再执行OR语句。

-- 查询结果是id = 2且age = 20或者id=1
-- SELECT * from student WHERE id = 1 or id = 2 AND age = 20;
-- 查询结果是 id=1或id=2 且age = 20
-- SELECT * from student WHERE (id = 1 or id = 2 ) AND age = 20;

-- 创建公司资料库
#公司表
CREATE TABLE `employee`(
	`emp_id` INT PRIMARY KEY,
    `name` VARCHAR(20),
    `birth_date` DATE,
    `sex` VARCHAR(1),
    `salary` INT,
    `branch_id` INT,
    `sup_id` INT
);
#部门表
CREATE TABLE `branch`(
	`branch_id` INT PRIMARY KEY,
    `branch_name` VARCHAR(20),
    `manager_id` INT,
    FOREIGN KEY(`manager_id`) REFERENCES `employee`(`emp_id`) ON DELETE SET NULL
);
#添加外键
ALTER TABLE  `employee`
ADD FOREIGN KEY(`branch_id`)
REFERENCES `branch`(`branch_id`)
ON DELETE SET NULL; -- 之后解释这句？

ALTER TABLE  `employee`
ADD FOREIGN KEY(`sup_id`)
REFERENCES `employee`(`emp_id`)
ON DELETE SET NULL;

#客户表
CREATE TABLE `client`(
	`client_id` INT PRIMARY KEY,
    `client_name` VARCHAR(20),
    `phone` VARCHAR(20)
);

#工作关联表
CREATE TABLE `works_with`(
	`emp_id` INT,
    `client_id` INT,
    `totol_sales` INT,
    PRIMARY KEY(`emp_id`,`client_id`),
    FOREIGN KEY(`emp_id`) REFERENCES `employee`(`emp_id`) ON DELETE CASCADE,
    FOREIGN KEY(`client_id`) REFERENCES `client`(`client_id`) ON DELETE CASCADE
);
#添加数据
INSERT INTO `branch` VALUES(1,'研发',NULL);
INSERT INTO `branch` VALUES(2,'行政',NULL);
INSERT INTO `branch` VALUES(3,'资讯',NULL);



INSERT INTO `employee` VALUES(206,'小黄','1998-10-08','F',50000,1,NULL);
INSERT INTO `employee` VALUES(207,'小绿','1985-09-16','M',29000,2,206);
INSERT INTO `employee` VALUES(208,'小黑','2000-12-19','F',35000,3,206);
INSERT INTO `employee` VALUES(209,'小白','1997-01-22','F',39000,3,207);
INSERT INTO `employee` VALUES(2010,'小蓝','1925-11-10','F',84000,1,207);

UPDATE `branch` 
SET 
    `manager_id` = 206
WHERE
    `branch_id` = 1;
    
UPDATE `branch` 
SET 
    `manager_id` = 207 
WHERE
    `branch_id` = 2;
    
UPDATE `branch` 
SET 
    `manager_id` = 208
WHERE
    `branch_id` = 3;
#添加客户表数据
INSERT INTO `client`  VALUES (400, '阿狗', '254354335');
INSERT INTO `client`  VALUES (401, '阿猫', '25633899');
INSERT INTO `client` VALUES (402, '旺来', '45354345');
INSERT INTO  `client_id` VALUES (403, '露西', '54354365');
INSERT INTO `client` (`client_id`, `client_name`, `phone`)  VALUES (404, '艾瑞克', '18783783');
INSERT INTO `sql_tutorial`.`client` (`client_id`, `client_name`, `phone`) VALUES (405, '阿狗', '254354335');
#添加工作表数据 （自动生成-by可视化
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `totol_sales`) VALUES ('206', '400', '70000');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `totol_sales`) VALUES ('207', '401', '24000');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `totol_sales`) VALUES ('208', '400', '9800');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `totol_sales`) VALUES ('208', '403', '24000');
INSERT INTO `sql_tutorial`.`works_with` (`emp_id`, `client_id`, `totol_sales`) VALUES ('210', '404', '87940');

