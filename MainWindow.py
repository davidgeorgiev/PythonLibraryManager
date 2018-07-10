#!/usr/bin/env python
# -*- coding: utf-8 -*-

import wx, wx.html
import sys
from DataBaseConnector import DataBaseConnector
import datetime


class Frame(wx.Frame):
    def __init__(self, title):
        myDataBaseConnector = DataBaseConnector(self)
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



        wx.Frame.__init__(self, None, title=title, size=(800,500))
        self.Bind(wx.EVT_CLOSE, self.OnClose)
        self.Center()

        menuBar = wx.MenuBar()
        menu1 = wx.Menu()
        m_exit = menu1.Append(wx.ID_EXIT, "И&зход\tAlt-X".decode('utf8'), "Затвори прозореца и излез от програмата".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnClose, m_exit)
        menuBar.Append(menu1, "&Файл".decode('utf8'))

        menu2 = wx.Menu()
        m_add_user = menu2.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави потребител".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_add_user)
        m_user_manager = menu2.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на потребителите".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_user_manager)
        menuBar.Append(menu2, "&Потребители".decode('utf8'))

        menu3 = wx.Menu()
        m_add_book = menu3.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави книга".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_add_book)
        m_book_manager = menu3.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на книгите".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_book_manager)
        menuBar.Append(menu3, "&Книги".decode('utf8'))

        menu4 = wx.Menu()
        m_add_genre = menu4.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави жанр".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_add_genre)
        m_genre_manager = menu4.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на жанровете".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_genre_manager)
        menuBar.Append(menu4, "&Жанрове".decode('utf8'))

        menu5 = wx.Menu()
        m_add_author = menu5.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави автор".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_add_author)
        m_author_manager = menu5.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на авторите".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_author_manager)
        menuBar.Append(menu5, "&Автори".decode('utf8'))

        menu6 = wx.Menu()
        m_add_publisher = menu6.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави издателство".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_add_publisher)
        m_publisher_manager = menu6.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на издателствата".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_publisher_manager)
        menuBar.Append(menu6, "&Издателства".decode('utf8'))

        menu_about = wx.Menu()
        m_about = menu_about.Append(wx.ID_ABOUT, "&За програмата".decode('utf8'), "Информация за програмата".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_about)
        menuBar.Append(menu_about, "&Помощ".decode('utf8'))

        self.SetMenuBar(menuBar)
        self.statusbar = self.CreateStatusBar()

        panel = wx.Panel(self)
        box = wx.BoxSizer(wx.VERTICAL)

        m_text = wx.StaticText(panel, -1, "Организатор за библиотека".decode('utf8'))
        m_text.SetFont(wx.Font(14, wx.SWISS, wx.NORMAL, wx.BOLD))
        m_text.SetSize(m_text.GetBestSize())
        box.Add(m_text, 0, wx.ALL, 10)

        m_close = wx.Button(panel, wx.ID_CLOSE, "Затвори".decode('utf8'))
        m_close.Bind(wx.EVT_BUTTON, self.OnClose)
        box.Add(m_close, 0, wx.ALL, 10)

        panel.SetSizer(box)
        panel.Layout()

    def OnClose(self, event):
        dlg = wx.MessageDialog(self,
            "Наистина ли искате да затворите програмата?".decode('utf8'),
            "Излизане".decode('utf8'), wx.OK|wx.CANCEL|wx.ICON_QUESTION)
        result = dlg.ShowModal()
        dlg.Destroy()
        if result == wx.ID_OK:
            self.Destroy()

    def OnAbout(self, event):
        msg = wx.MessageDialog(self,"Автор: Давид Георгиев от ТУ-София ФКСТ КСИ гр.46".decode('utf8'),"За програмата".decode('utf8'),wx.OK | wx.ICON_INFORMATION)
        msg.ShowModal()
        msg.Destroy()

app = wx.App(redirect=False)   # Error messages go to popup window
top = Frame("Организатор за библиотека v0.1".decode('utf8'))
top.Show()
app.MainLoop()
