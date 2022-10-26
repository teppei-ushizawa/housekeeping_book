
/*データベースの作成*/
CREATE DATABASE housekeeping_db;
USE housekeeping_db;
/*テーブルの作成*/

/*カテゴリテーブル*/
CREATE TABLE category_table(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
    );


/*家計簿テーブル*/
CREATE TABLE housekeeping_table(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    record_date DATETIME NOT NULL,
    category_id INTEGER NOT NULL REFERENCES category_table(id),
    detail VARCHAR(100) DEFAULT "特になし",
    income INTEGER,
    expence INTEGER
    );


