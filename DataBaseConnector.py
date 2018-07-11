#!/usr/bin/env python
# -*- coding: utf-8 -*-
import MySQLdb
import datetime
import sys

class DataBaseConnector():
    def __init__(self,parent):
        self.lastResult = list()
        self.databaseName = "library_manager_db"
        try:
            self.db = MySQLdb.connect(user="root",passwd="",db=self.databaseName,unix_socket="/opt/lampp/var/mysql/mysql.sock",charset="utf8",use_unicode=True)
        except:
            print("error database\n")
            sys.exit(1)
        self.parent = parent

    def AddReadingCard(self,expire_date):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `reading_card` (`issue_date`,`expire_date`) VALUES (\""+str(datetime.date.today())+"\","+str(expire_date)+");")
        self.db.commit()
        last_row_id = cur.lastrowid
        cur.close()
        return "\""+str(last_row_id)+"\""
    def AddUser(self,dataList):
        card_id  = self.AddReadingCard(dataList[5])
        cur = self.db.cursor()
        cur.execute("INSERT INTO `user` (`first_name`,`middle_name`,`last_name`,`phone`,`e_mail`,`reading_card_id`) VALUES ("+dataList[0]+","+dataList[1]+","+dataList[2]+","+dataList[3]+","+dataList[4]+","+card_id+");")
        self.db.commit()
        cur.close()
    def GetUserInfo(self,id):
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `user` WHERE `id` = "+str(id)+";")
        for row in cur.fetchall():
            self.lastResult = [str(row[0]),str(row[1]),str(row[2]),str(row[3]),str(row[4]),str(row[5]),str(row[6])]
        return self.lastResult
    def DeleteUser(self,id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `user` WHERE `id` = "+str(id)+";")
        self.db.commit()
        cur.close()
    def EditUser(self,id,dataList):
        cur = self.db.cursor()
        cur.execute("UPDATE `user` SET `first_name` = "+dataList[0]+", `middle_name` = "+dataList[1]+", `last_name` = "+dataList[2]+", `phone` = "+dataList[3]+", `e_mail` = "+dataList[4]+" WHERE id = "+str(id)+";")
        self.db.commit()
        cur.close()

    def AddAuthor(self,dataList):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `authors` (`first_name`,`last_name`) VALUES ("+dataList[0]+","+dataList[1]+");")
        self.db.commit()
        cur.close()
    def GetAuthorInfo(self,id):
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `authors` WHERE `id` = "+str(id)+";")
        for row in cur.fetchall():
            self.lastResult = [str(row[0]),str(row[1]),str(row[2])]
        return self.lastResult
    def DeleteAuthor(self,id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `authors` WHERE `id` = "+str(id)+";")
        self.db.commit()
        cur.close()
    def EditAuthor(self,id,dataList):
        cur = self.db.cursor()
        cur.execute("UPDATE `authors` SET `first_name` = "+dataList[0]+", `last_name` = "+dataList[1]+" WHERE id = "+str(id)+";")
        self.db.commit()
        cur.close()

    def AddBook(self,dataList):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `book` (`title`,`publisher_id`,`anotation`,`number_of_copies`,`price`) VALUES ("+dataList[0]+","+dataList[1]+","+dataList[2]+","+dataList[3]+","+dataList[4]+");")
        self.db.commit()
        last_row_id = cur.lastrowid
        cur.close()
        return last_row_id
    def GetBookInfo(self,id):
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `book` WHERE `id` = "+str(id)+";")
        for row in cur.fetchall():
            self.lastResult = [str(row[0]),str(row[1]),str(row[2]),str(row[3]),str(row[4]),str(row[5])]
        return self.lastResult
    def GetFullBookInfo(self,id):
        info_list = self.GetBookInfo(id)
        genre_list = self.GetGenresByBookId(id)
        authors_list = self.GetAuthorsByBookId(id)
        info_list.append(genre_list)
        info_list.append(authors_list)
        info_list[2] = self.GetPublisherInfo(info_list[2])[1]
        return info_list
    def DeleteBook(self,id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `book` WHERE `id` = "+str(id)+";")
        self.db.commit()
        cur.close()
    def EditBook(self,id,dataList):
        cur = self.db.cursor()
        cur.execute("UPDATE `book` SET `title` = "+dataList[0]+", `publisher_id` = "+dataList[1]+", `anotation` = "+dataList[2]+", `number_of_copies` = "+dataList[3]+", `price` = "+dataList[4]+" WHERE id = "+str(id)+";")
        self.db.commit()
        cur.close()

    def AddPublisher(self,dataList):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `publisher` (`name`,`address`) VALUES ("+dataList[0]+","+dataList[1]+");")
        self.db.commit()
        cur.close()
    def GetPublisherInfo(self,id):
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `publisher` WHERE `id` = "+str(id)+";")
        for row in cur.fetchall():
            self.lastResult = [str(row[0]),str(row[1]),str(row[2])]
        return self.lastResult
    def DeletePublisher(self,id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `publisher` WHERE `id` = "+str(id)+";")
        self.db.commit()
        cur.close()
    def EditPublisher(self,id,dataList):
        cur = self.db.cursor()
        cur.execute("UPDATE `publisher` SET `name` = "+dataList[0]+", `address` = "+dataList[1]+" WHERE id = "+str(id)+";")
        self.db.commit()
        cur.close()

    def AddLoan(self,dataList):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `loan` (`user_id`,`book_id`,`loan_date`,`return_period`,`is_returned`) VALUES ("+dataList[0]+","+dataList[1]+","+dataList[2]+","+dataList[3]+","+dataList[4]+");")
        self.db.commit()
        cur.close()
    def GetLoanInfo(self,id):
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `loan` WHERE `id` = "+str(id)+";")
        for row in cur.fetchall():
            self.lastResult = [str(row[0]),str(row[1]),str(row[2])]
        return self.lastResult
    def DeleteLoan(self,id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `loan` WHERE `id` = "+str(id)+";")
        self.db.commit()
        cur.close()
    def EditLoan(self,id,dataList):
        cur = self.db.cursor()
        cur.execute("UPDATE `loan` SET `user_id` = "+dataList[0]+", `book_id` = "+dataList[1]+", `loan_date` = "+dataList[2]+", `return_period` = "+dataList[3]+", `is_returned` = "+dataList[4]+", `returned_on_date` = "+dataList[5]+" WHERE id = "+str(id)+";")
        self.db.commit()
        cur.close()

    def AddGenre(self,dataList):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `genre` (`name`) VALUES ("+dataList[0]+");")
        self.db.commit()
        cur.close()
    def GetGenreInfo(self,id):
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `genre` WHERE `id` = "+str(id)+" ORDER BY name;")
        for row in cur.fetchall():
            self.lastResult = [str(row[1]),str(row[0]).decode("utf8")]
        return self.lastResult
    def DeleteGenre(self,id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `genre` WHERE `id` = "+str(id)+";")
        self.db.commit()
        cur.close()
    def EditGenre(self,id,dataList):
        cur = self.db.cursor()
        cur.execute("UPDATE `genre` SET `name` = "+dataList[0]+" WHERE id = "+str(id)+";")
        self.db.commit()
        cur.close()

    def AddBookAuthor(self,book_id,author_id):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `book_author` (`author_id`,`book_id`) VALUES ("+str(author_id)+ "," + str(book_id)+");")
        self.db.commit()
        cur.close()
    def GetBookByAuthorId(self,author_id):
        cur = self.db.cursor()
        cur.execute("SELECT `book_id` FROM `book_author` WHERE `author_id` = "+str(author_id)+";")
        for row in cur.fetchall():
            self.lastResult = [str(row[0])]
        return self.lastResult
    def DeleteBookByAuthorId(self,author_id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `book_author` WHERE `author_id` = "+str(author_id)+";")
        self.db.commit()
        cur.close()
    def DeleteAuthorByBookId(self,book_id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `book_author` WHERE `book_id` = "+str(book_id)+";")
        self.db.commit()
        cur.close()

    def AddBookGenre(self,book_id,genre_id):
        cur = self.db.cursor()
        cur.execute("INSERT INTO `book_genre` (`genre_id`,`book_id`) VALUES ("+str(genre_id)+ "," + str(book_id)+");")
        self.db.commit()
        cur.close()
    def GetBookByGenreId(self,genre_id):
        cur = self.db.cursor()
        cur.execute("SELECT `book_id` FROM `book_genre` WHERE `genre_id` = "+str(genre_id)+";")
        for row in cur.fetchall():
            self.lastResult = [str(row[0])]
        return self.lastResult
    def DeleteBookByGenreId(self,genre_id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `book_genre` WHERE `genre_id` = "+str(genre_id)+";")
        self.db.commit()
        cur.close()
    def DeleteGenreByBookId(self,book_id):
        cur = self.db.cursor()
        cur.execute("DELETE FROM `book_genre` WHERE `book_id` = "+str(book_id)+";")
        self.db.commit()
        cur.close()

    def GetNumberOfUsers(self):
        cur = self.db.cursor()
        cur.execute("SELECT COUNT(id) FROM `user`;")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult
    def GetNumberOfTitles(self):
        cur = self.db.cursor()
        cur.execute("SELECT COUNT(id) FROM `book`;")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult
    def GetNumberOfBooks(self):
        cur = self.db.cursor()
        cur.execute("SELECT SUM(number_of_copies) FROM `book`;")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult
    def GetNumberOfGenres(self):
        cur = self.db.cursor()
        cur.execute("SELECT COUNT(id) FROM `genre`;")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult
    def GetNumberOfAuthors(self):
        cur = self.db.cursor()
        cur.execute("SELECT COUNT(id) FROM `authors`;")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult
    def GetNumberOfPublishers(self):
        cur = self.db.cursor()
        cur.execute("SELECT COUNT(id) FROM `publisher`;")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult

    def GetAllPublisherNames(self):
        name_list = list()
        cur = self.db.cursor()
        cur.execute("SELECT `name` FROM `publisher`;")
        for i, row in enumerate(cur):
            try:
                name_list.append(str(row[0]).decode("utf8"))
            except UnicodeEncodeError as e:
                print >> sys.stderr, "failed to encode row #%s - %s" % (i, e)
        self.lastResult = name_list
        return self.lastResult
    def GetAllGenreNames(self):
        name_list = list()
        cur = self.db.cursor()
        cur.execute("SELECT `name` FROM `genre` ORDER BY name;")
        for i, row in enumerate(cur):
            try:
                name_list.append(str(row[0]).decode("utf8"))
            except UnicodeEncodeError as e:
                print >> sys.stderr, "failed to encode row #%s - %s" % (i, e)
        self.lastResult = name_list
        return self.lastResult
    def GetAllAuthorsIdsAndNames(self):
        name_list = list()
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `authors`;")
        for i, row in enumerate(cur):
            try:
                name_list.append(str(row[1]).decode("utf8")+" "+str(row[2]).decode("utf8")+" "+str(row[0]).decode("utf8"))
            except UnicodeEncodeError as e:
                print >> sys.stderr, "failed to encode row #%s - %s" % (i, e)
        self.lastResult = name_list
        return self.lastResult
    def GetAuthorIdAndNameById(self,id):
        name_list = list()
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `authors` WHERE id = "+id+";")
        for i, row in enumerate(cur):
            try:
                name_list.append(str(row[0]).decode("utf8")+" "+str(row[1]).decode("utf8")+" "+str(row[2]).decode("utf8"))
            except UnicodeEncodeError as e:
                print >> sys.stderr, "failed to encode row #%s - %s" % (i, e)
        self.lastResult = name_list
        return self.lastResult

    def GetPublisherIdByName(self,publisher_name):
        cur = self.db.cursor()
        cur.execute("SELECT `id` FROM `publisher` WHERE name = \""+publisher_name+"\";")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult
    def GetGenreIdByName(self,genre_name):
        cur = self.db.cursor()
        cur.execute("SELECT `id` FROM `genre` WHERE name = \""+genre_name+"\";")
        for row in cur.fetchall():
            self.lastResult = str(row[0])
        return self.lastResult

    def AddGenresToBookWithId(self,book_id,list_of_genre_ids):
        for i in list_of_genre_ids:
            self.AddBookGenre(book_id,i)
    def AddAuthorsToBookWithId(self,book_id,list_of_author_ids):
        for i in list_of_author_ids:
            self.AddBookAuthor(book_id,i)
    def GetAllBookIdsAndNames(self):
        all_books = list()
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `book`;")
        for row in cur.fetchall():
            all_books.append(str(row[0]).decode("utf8") +" "+ str(row[1]).decode("utf8"))
        self.lastResult = all_books
        return self.lastResult
    def GetAllBookIdsAndNamesByAuthorWithId(self,author_id):
        all_books = list()
        cur = self.db.cursor()
        cur.execute("SELECT * FROM book JOIN book_author ON book.id = book_author.book_id WHERE book_author.author_id = "+str(author_id)+";")
        for row in cur.fetchall():
            all_books.append(str(row[0]).decode("utf8") +" "+ str(row[1]).decode("utf8"))
        self.lastResult = all_books
        return self.lastResult
    def GetAllUserIdsAndNames(self):
        all_books = list()
        cur = self.db.cursor()
        cur.execute("SELECT * FROM `user`;")
        for row in cur.fetchall():
            all_books.append(str(row[1]).decode("utf8") +" "+ str(row[2]).decode("utf8") +" "+ str(row[3]).decode("utf8") +" "+ str(row[0]).decode("utf8"))
        self.lastResult = all_books
        return self.lastResult
    def GetGenresByBookId(self,book_id):
        book_genre = str()
        cur = self.db.cursor()
        cur.execute("SELECT genre.name FROM genre JOIN book_genre ON genre.id = book_genre.genre_id WHERE book_genre.book_id = "+str(book_id)+";")
        delimiter = ""
        for row in cur.fetchall():
            book_genre += delimiter+row[0].decode("utf8")
            delimiter = ", "
        self.lastResult = book_genre
        return self.lastResult
    def GetAuthorsByBookId(self,book_id):
        book_authors = str()
        cur = self.db.cursor()
        cur.execute("SELECT authors.first_name,authors.last_name FROM authors JOIN book_author ON authors.id = book_author.author_id WHERE book_author.book_id = "+str(book_id)+";")
        delimiter = ""
        for row in cur.fetchall():
            book_authors += delimiter+row[0].decode("utf8")+" "+row[1].decode("utf8")
            delimiter = ", "
        self.lastResult = book_authors
        return self.lastResult
