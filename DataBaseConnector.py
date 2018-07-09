import MySQLdb
import datetime

class DataBaseConnector():
    def __init__(self,parent):
        self.lastResult = list()
        self.databaseName = "library_manager_db"
        self.db = MySQLdb.connect(user="root",passwd="",db=self.databaseName,unix_socket="/opt/lampp/var/mysql/mysql.sock")
        self.parent = parent
    def AddReadingCard(self):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `reading_card` (`issue_date`) VALUES (\""+str(datetime.date.today())+"\");")
        self.db.commit()
        last_row_id = cur.lastrowid
        cur.close()
        return "\""+str(last_row_id)+"\""
    def AddUser(self):
        card_id  = self.AddReadingCard()
        dataList = ['"David"', '"Lachezarov"', '"Georgiev"', '"0893514113"', '"david.l.georgiev@gmail.com"']
        cur = self.db.cursor()
        cur.execute("INSERT INTO `user` (`first_name`,`middle_name`,`last_name`,`phone`,`e_mail`,`reading_card_id`) VALUES ("+dataList[0]+","+dataList[1]+","+dataList[2]+","+dataList[3]+","+dataList[4]+","+card_id+");")
        self.db.commit()
        cur.close()
    def GetUserInfo(self):
        cur = self.db.cursor()
        cur.execute("SELECT * FROM user;")
        for row in cur.fetchall():
            self.lastResult = [str(row[0]),str(row[1]),str(row[2]),str(row[3]),str(row[4]),str(row[5]),str(row[6])]
        return self.lastResult
    def DeleteUser(self):
        id = "1"
        cur = self.db.cursor()
        cur.execute("DELETE FROM `user` WHERE `id` = "+id+";")
        self.db.commit()
        cur.close()
    def EditUser(self):
        id = "2"
        dataList = ['"David2"', '"Lachezarov2"', '"Georgiev2"', '"0893514113"', '"david.l.georgiev@gmail.com"']
        cur = self.db.cursor()
        cur.execute("UPDATE `user` SET `first_name` = "+dataList[0]+", `middle_name` = "+dataList[1]+", `last_name` = "+dataList[2]+", `phone` = "+dataList[3]+", `e_mail` = "+dataList[4]+" WHERE id = "+id+";")
        self.db.commit()
        cur.close()
    def AddAuthor(self):
        dataList = ['"David"', '"Lachezarov"', '"Georgiev"']
        cur = self.db.cursor()
        cur.execute("INSERT INTO `authors` (`first_name`,`middle_name`,`last_name`) VALUES ("+dataList[0]+","+dataList[1]+","+dataList[2]+");")
        self.db.commit()
        cur.close()
    def DeleteAuthor(self):
        id = "1"
        cur = self.db.cursor()
        cur.execute("DELETE FROM `authors` WHERE `id` = "+id+";")
        self.db.commit()
        cur.close()
    def EditAuthor(self):
        id = "2"
        dataList = ['"David2"', '"Lachezarov2"', '"Georgiev2"']
        cur = self.db.cursor()
        cur.execute("UPDATE `authors` SET `first_name` = "+dataList[0]+", `middle_name` = "+dataList[1]+", `last_name` = "+dataList[2]+" WHERE id = "+id+";")
        self.db.commit()
        cur.close()
    def AddBook(self):
        dataList = ['"title"', '2', '"bla bla"', '"2"', '"12.5"']
        cur = self.db.cursor()
        cur.execute("INSERT INTO `book` (`title`,`publisher_id`,`anotation`,`number_of_copies`,`price`) VALUES ("+dataList[0]+","+dataList[1]+","+dataList[2]+","+dataList[3]+","+dataList[4]+");")
        self.db.commit()
        cur.close()
    def DeleteBook(self):
        id = "9"
        cur = self.db.cursor()
        cur.execute("DELETE FROM `book` WHERE `id` = "+id+";")
        self.db.commit()
        cur.close()
    def EditBook(self):
        id = "10"
        dataList = ['"title2"', '2', '"bla bla"', '"2"', '"14.5"']
        cur = self.db.cursor()
        cur.execute("UPDATE `book` SET `title` = "+dataList[0]+", `publisher_id` = "+dataList[1]+", `anotation` = "+dataList[2]+", `number_of_copies` = "+dataList[3]+", `price` = "+dataList[4]+" WHERE id = "+id+";")
        self.db.commit()
        cur.close()
    
