#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods

class BookInfoWindow(wx.Frame):
    def __init__(self,parent,book_id):
        self.book_id = book_id
        self.myOtherMethods = OtherMethods(self)
        self.myDataBaseConnector = DataBaseConnector(self)
        self.book_full_info = self.myDataBaseConnector.GetFullBookInfo(self.book_id)
        self.parent = parent
        self.InitMyWindow("ИНФОРМАЦИЯ ЗА КНИГА С ID = ".decode('utf8')+str(book_id))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ИНФОРМАЦИЯ ЗА КНИГА С ID = ".decode('utf8')+str(self.book_id))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        title_box = wx.BoxSizer(wx.HORIZONTAL)
        title_label = wx.StaticText(panel, -1, "заглавие: ".decode('utf8')+self.book_full_info[0].decode('utf8'))
        title_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        title_label.SetSize(title_label.GetBestSize())
        title_box.Add(title_label, 0, wx.ALL, 10)
        manager_box.Add(title_box, 0, wx.LEFT, 10)
        anotation_box = wx.BoxSizer(wx.HORIZONTAL)
        anotation_label = wx.StaticText(panel, -1, "анотация".decode('utf8'))
        anotation_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        anotation_label.SetSize(anotation_label.GetBestSize())
        anotation_box.Add(anotation_label, 0, wx.ALL, 10)
        self.anotation_input = wx.TextCtrl(panel, id = -1, size = (300, 90), style = wx.TE_MULTILINE | wx.TE_READONLY)
        self.anotation_input.SetValue(self.book_full_info[3].decode('utf8'))
        anotation_box.Add(self.anotation_input, 0, wx.ALL, 10)
        manager_box.Add(anotation_box, 0, wx.LEFT, 10)
        number_of_copies_box = wx.BoxSizer(wx.HORIZONTAL)
        number_of_copies_label = wx.StaticText(panel, -1, "количество: ".decode('utf8')+str(self.myDataBaseConnector.GetNumberOfBooksAvailableInLibraryWithBookId(self.book_id))+"/"+self.book_full_info[4].decode('utf8'))
        number_of_copies_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        number_of_copies_label.SetSize(number_of_copies_label.GetBestSize())
        number_of_copies_box.Add(number_of_copies_label, 0, wx.ALL, 10)
        manager_box.Add(number_of_copies_box, 0, wx.LEFT, 10)
        price_box = wx.BoxSizer(wx.HORIZONTAL)
        price_label = wx.StaticText(panel, -1, "цена: ".decode('utf8')+self.book_full_info[5].decode('utf8'))
        price_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        price_label.SetSize(price_label.GetBestSize())
        price_box.Add(price_label, 0, wx.ALL, 10)
        manager_box.Add(price_box, 0, wx.LEFT, 10)

        publisher_box = wx.BoxSizer(wx.HORIZONTAL)
        publisher_label = wx.StaticText(panel, -1, "издателство: ".decode('utf8')+self.book_full_info[2].decode('utf8'))
        publisher_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        publisher_label.SetSize(publisher_label.GetBestSize())
        price_box.Add(publisher_label, 0, wx.ALL, 10)
        manager_box.Add(publisher_box, 0, wx.LEFT, 10)

        genre_author_box = wx.BoxSizer(wx.HORIZONTAL)

        genre_box = wx.BoxSizer(wx.VERTICAL)
        self.selected_genres = wx.TextCtrl(panel, id = -1, size = (150, 80), style = wx.TE_MULTILINE | wx.TE_READONLY)
        self.selected_genres.SetValue("жанрове: ".decode("utf8")+self.book_full_info[6])
        genre_box.Add(self.selected_genres, 0, wx.ALL, 10)


        author_box = wx.BoxSizer(wx.VERTICAL)
        self.selected_authors = wx.TextCtrl(panel, id = -1, size = (150, 80), style = wx.TE_MULTILINE | wx.TE_READONLY)
        self.selected_authors.SetValue("автори: ".decode("utf8")+self.book_full_info[7])
        author_box.Add(self.selected_authors, 0, wx.ALL, 10)

        genre_author_box.Add(genre_box, 0, wx.ALL, 0)
        genre_author_box.Add(author_box, 0, wx.ALL, 0)

        manager_box.Add(genre_author_box, 0, wx.ALL, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Изтрий книгата".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnDelete)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.genre_input.GetValue()))
        return return_list
    def OnDelete(self,event):
        self.myDataBaseConnector.DeleteBook(self.book_id)
        try:
            self.parent.parent.myFormatedInfoGetter.UpdateMainInfo()
            self.parent.parent.OnManageBooks(None)
        except:
            self.parent.parent.parent.myFormatedInfoGetter.UpdateMainInfo()
            self.parent.parent.parent.OnManageAuthors(None)
            self.parent.parent.Destroy()

        self.parent.Destroy()
        self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,550))
        self.Center()
