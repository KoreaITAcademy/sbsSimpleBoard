CREATE TABLE t_comment(
	i_comment INT unsigned AUTO_INCREMENT,
	i_board INT UNSIGNED,
	cmt VARCHAR(300) NOT NULL,
	r_datetime DATETIME DEFAULT NOW(),
	FOREIGN KEY (i_board) REFERENCES T_BOARD(i_board),
	PRIMARY KEY(i_comment)
);

CREATE TABLE t_board(
	i_board INT unsigned PRIMARY KEY AUTO_INCREMENT,
	title varCHAR(30) NOT NULL,
	content TEXT NOT NULL,
	cnt SMALLINT UNSIGNED DEFAULT '0',
	regdatetime DATETIME DEFAULT NOW()	
);

CREATE TABLE t_user(
	uid VARCHAR(30) PRIMARY KEY,
	upw VARCHAR(50) NOT NULL,
	nm VARCHAR(10) NOT NULL,
	r_datetime DATETIME DEFAULT NOW()
);

CREATE TABLE `t_favorite` (
	`i_board` INT(10) UNSIGNED NOT NULL,
	`uid` VARCHAR(30) NOT NULL,
	`r_datetime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`i_board`, `uid`),
	INDEX `uid` (`uid`),
	CONSTRAINT `t_favorite_ibfk_1` FOREIGN KEY (`i_board`) REFERENCES `t_board` (`i_board`),
	CONSTRAINT `t_favorite_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
