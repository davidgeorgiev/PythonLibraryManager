#!/usr/bin/env python
# -*- coding: utf-8 -*-

import wx, wx.html
import sys
from FormatedInfoGetter import FormatedInfoGetter
from UserAdderWindow import UserAdderWindow
from AuthorAdderWindow import AuthorAdderWindow
from GenreAdderWindow import GenreAdderWindow
from PublisherAdderWindow import PublisherAdderWindow
from BookAdderWindow import BookAdderWindow
import datetime


class Frame(wx.Frame):
    def __init__(self, title):
        self.myFormatedInfoGetter = FormatedInfoGetter(self)
        self.InitMyWindow(title)
        self.InitMyMenu()
        self.InitMyStatusBar()
        self.panel = wx.Panel(self)
        box = self.GetDefaultBoxSizer(self.panel)
        self.panel.SetSizer(box)
        self.panel.Layout()
        self.OnUpdateMainInfo(None)

    def InitMyStatusBar(self):
        self.statusbar = self.CreateStatusBar()
    def GetDefaultBoxSizer(self,panel):
        box = wx.BoxSizer(wx.HORIZONTAL)
        box.Add(self.GetInfoBoxSizer(panel), 0, wx.ALL, 10)
        return box
    def GetInfoBoxSizer(self,panel):
        info_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ИНФОРМАЦИЯ ЗА БИБЛИОТЕКАТА".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        info_box.Add(m_text, 0, wx.ALL, 10)

        self.number_of_users = wx.StaticText(panel, -1, "".decode('utf8'))
        self.number_of_users.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        self.number_of_users.SetSize(self.number_of_users.GetBestSize())
        info_box.Add(self.number_of_users, 0, wx.ALL, 10)

        self.number_of_titles = wx.StaticText(panel, -1, "".decode('utf8'))
        self.number_of_titles.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        self.number_of_titles.SetSize(self.number_of_titles.GetBestSize())
        info_box.Add(self.number_of_titles, 0, wx.ALL, 10)

        self.number_of_books = wx.StaticText(panel, -1, "".decode('utf8'))
        self.number_of_books.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        self.number_of_books.SetSize(self.number_of_books.GetBestSize())
        info_box.Add(self.number_of_books, 0, wx.ALL, 10)

        self.number_of_genres = wx.StaticText(panel, -1, "".decode('utf8'))
        self.number_of_genres.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        self.number_of_genres.SetSize(self.number_of_genres.GetBestSize())
        info_box.Add(self.number_of_genres, 0, wx.ALL, 10)

        self.number_of_authors = wx.StaticText(panel, -1, "".decode('utf8'))
        self.number_of_authors.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        self.number_of_authors.SetSize(self.number_of_authors.GetBestSize())
        info_box.Add(self.number_of_authors, 0, wx.ALL, 10)

        self.number_of_publishers = wx.StaticText(panel, -1, "".decode('utf8'))
        self.number_of_publishers.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        self.number_of_publishers.SetSize(self.number_of_publishers.GetBestSize())
        info_box.Add(self.number_of_publishers, 0, wx.ALL, 10)

        m_close = wx.Button(panel, wx.ID_CLOSE, "Обнови".decode('utf8'))
        m_close.Bind(wx.EVT_BUTTON, self.OnUpdateMainInfo)
        info_box.Add(m_close, 0, wx.ALL, 10)
        return info_box

    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Bind(wx.EVT_CLOSE, self.OnClose)
        self.Center()

    def InitMyMenu(self):
        menuBar = wx.MenuBar()
        menu1 = wx.Menu()
        m_exit = menu1.Append(wx.ID_EXIT, "И&зход\tAlt-X".decode('utf8'), "Затвори прозореца и излез от програмата".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnClose, m_exit)
        menuBar.Append(menu1, "&Файл".decode('utf8'))

        menu2 = wx.Menu()
        m_add_user = menu2.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави потребител".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAddUser, m_add_user)
        m_user_manager = menu2.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на потребителите".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_user_manager)
        menuBar.Append(menu2, "&Потребители".decode('utf8'))

        menu3 = wx.Menu()
        m_add_book = menu3.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави книга".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAddBook, m_add_book)
        m_book_manager = menu3.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на книгите".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_book_manager)
        menuBar.Append(menu3, "&Книги".decode('utf8'))

        menu4 = wx.Menu()
        m_add_genre = menu4.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави жанр".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAddGenre, m_add_genre)
        m_genre_manager = menu4.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на жанровете".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_genre_manager)
        menuBar.Append(menu4, "&Жанрове".decode('utf8'))

        menu5 = wx.Menu()
        m_add_author = menu5.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави автор".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAddAuthor, m_add_author)
        m_author_manager = menu5.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на авторите".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_author_manager)
        menuBar.Append(menu5, "&Автори".decode('utf8'))

        menu6 = wx.Menu()
        m_add_publisher = menu6.Append(wx.ID_ANY, "&Добави".decode('utf8'), "Добави издателство".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAddPublisher, m_add_publisher)
        m_publisher_manager = menu6.Append(wx.ID_ANY, "&Организатор".decode('utf8'), "Организатор на издателствата".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_publisher_manager)
        menuBar.Append(menu6, "&Издателства".decode('utf8'))

        menu_about = wx.Menu()
        m_about = menu_about.Append(wx.ID_ABOUT, "&За програмата".decode('utf8'), "Информация за програмата".decode('utf8'))
        self.Bind(wx.EVT_MENU, self.OnAbout, m_about)
        menuBar.Append(menu_about, "&Помощ".decode('utf8'))

        self.SetMenuBar(menuBar)

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
    def OnUpdateMainInfo(self,event):
        self.myFormatedInfoGetter.UpdateMainInfo()
    def OnAddUser(self,event):
        window = UserAdderWindow(self)
        window.Show()
    def OnAddAuthor(self,event):
        window = AuthorAdderWindow(self)
        window.Show()
    def OnAddGenre(self,event):
        window = GenreAdderWindow(self)
        window.Show()
    def OnAddPublisher(self,event):
        window = PublisherAdderWindow(self)
        window.Show()
    def OnAddBook(self,event):
        window = BookAdderWindow(self)
        window.Show()

app = wx.App(redirect=False)   # Error messages go to popup window
top = Frame("Организатор за библиотека v0.1".decode('utf8'))
top.Show()
app.MainLoop()
