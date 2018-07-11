#!/usr/bin/env python
# -*- coding: utf-8 -*-
from DataBaseConnector import DataBaseConnector

class FormatedInfoGetter():
    def __init__(self,parent):
        self.parent = parent
        '''myDataBaseConnector.AddUser(['"David"', '"Lachezarov"', '"Georgiev"', '"0893514113"', '"david.l.georgiev@gmail.com"'])
        print(myDataBaseConnector.GetUserInfo(9))
        #myDataBaseConnector.DeleteUser(1)
        myDataBaseConnector.EditUser(2,['"David2"', '"Lachezarov2"', '"Georgiev2"', '"0893514113"', '"david.l.georgiev@gmail.com"'])

        myDataBaseConnector.AddAuthor(['"David"', '"Lachezarov"', '"Georgiev"'])
        print(myDataBaseConnector.GetAuthorInfo(1))
        #myDataBaseConnector.DeleteAuthor(1)
        myDataBaseConnector.EditAuthor(1,['"David2"', '"Lachezarov2"', '"Georgiev2"'])

        myDataBaseConnector.AddPublisher(['"Name"', '"Sofia"'])
        print(myDataBaseConnector.GetPublisherInfo(1))
        #myDataBaseConnector.DeletePublisher(1)
        myDataBaseConnector.EditPublisher(1,['"Name2"', '"Varna"'])

        myDataBaseConnector.AddBook(['"title"', '1', '"bla bla"', '"2"', '"12.5"'])
        print(myDataBaseConnector.GetBookInfo(1))
        #myDataBaseConnector.DeleteBook(1)
        myDataBaseConnector.EditBook(10,['"title2"', '2', '"bla bla"', '"2"', '"14.5"'])

        myDataBaseConnector.AddLoan(['"2"', '"10"', "\""+str(datetime.date.today())+"\"", '"2018-08-01"', '"0"'])
        print(myDataBaseConnector.GetLoanInfo(1))
        #myDataBaseConnector.DeleteLoan(1)
        myDataBaseConnector.EditLoan(1,['"2"', '"10"', "\""+str(datetime.date.today())+"\"", '"2018-08-01"', '"0"', '"2018-07-12"'])

        myDataBaseConnector.AddGenre(['"Art"'])
        print(myDataBaseConnector.GetGenreInfo(2))
        #myDataBaseConnector.DeleteGenre(1)
        myDataBaseConnector.EditGenre(2,['"Music"'])

        myDataBaseConnector.AddBookAuthor(10,2);
        print(myDataBaseConnector.GetBookByAuthorId(2))
        print(myDataBaseConnector.GetAuthorByBookId(10))
        #myDataBaseConnector.DeleteBookByAuthorId(2);
        #myDataBaseConnector.DeleteAuthorByBookId(10);

        myDataBaseConnector.AddBookGenre(10,2);
        print(myDataBaseConnector.GetBookByGenreId(2))
        print(myDataBaseConnector.GetGenreByBookId(10))
        #myDataBaseConnector.DeleteBookByGenreId(2);
        #myDataBaseConnector.DeleteGenreByBookId(10);'''

    def UpdateMainInfo(self):
        self.myDataBaseConnector = DataBaseConnector(self)
        number_of_users = self.myDataBaseConnector.GetNumberOfUsers()
        self.parent.number_of_users.SetLabel("потребители:  ".decode('utf8') + str(number_of_users))
        number_of_titles = self.myDataBaseConnector.GetNumberOfTitles()
        self.parent.number_of_titles.SetLabel("заглавия:        ".decode('utf8') + str(number_of_titles))
        number_of_books = self.myDataBaseConnector.GetNumberOfBooks()
        number_of_books_available_in_library = self.myDataBaseConnector.GetNumberOfBooksAvailableInLibrary()
        self.parent.number_of_books.SetLabel("книги общо:     ".decode('utf8') + str(number_of_books_available_in_library) + "/" + str(number_of_books))
        number_of_genres = self.myDataBaseConnector.GetNumberOfGenres()
        self.parent.number_of_genres.SetLabel("жанрове:         ".decode('utf8') + str(number_of_genres))
        number_of_authors = self.myDataBaseConnector.GetNumberOfAuthors()
        self.parent.number_of_authors.SetLabel("автори:            ".decode('utf8') + str(number_of_authors))
        number_of_publishers = self.myDataBaseConnector.GetNumberOfPublishers()
        self.parent.number_of_publishers.SetLabel("издателства:  ".decode('utf8') + str(number_of_publishers))
        self.parent.panel.Layout()
