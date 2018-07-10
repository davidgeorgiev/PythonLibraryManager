#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
import wx.lib.scrolledpanel
from DataBaseConnector import DataBaseConnector
from GenreToBookAdder import GenreToBookAdder
from OtherMethods import OtherMethods

class BookAdderWindow(wx.Frame):
    def __init__(self,parent):
        self.myDataBaseConnector = DataBaseConnector(self)
        self.currentBoookGenreIds = list()
        self.inputChoices = list()
        self.publishers_list = list()
        self.PopulatePublisherList()
        self.myOtherMethods = OtherMethods(self)
        self.parent = parent

        self.InitMyWindow("ДОБАВИ КНИГА".decode('utf8'))
        panel = wx.lib.scrolledpanel.ScrolledPanel(self,-1, style=wx.SIMPLE_BORDER)
        panel.SetupScrolling()
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ДОБАВИ КНИГА".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        title_box = wx.BoxSizer(wx.HORIZONTAL)
        title_label = wx.StaticText(panel, -1, "заглавие    ".decode('utf8'))
        title_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        title_label.SetSize(title_label.GetBestSize())
        title_box.Add(title_label, 0, wx.ALL, 10)
        self.title_input = wx.TextCtrl(panel, -1, size=(140,-1))
        title_box.Add(self.title_input, 0, wx.ALL, 10)
        manager_box.Add(title_box, 0, wx.LEFT, 10)
        anotation_box = wx.BoxSizer(wx.HORIZONTAL)
        anotation_label = wx.StaticText(panel, -1, "анотация   ".decode('utf8'))
        anotation_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        anotation_label.SetSize(anotation_label.GetBestSize())
        anotation_box.Add(anotation_label, 0, wx.ALL, 10)
        self.anotation_input = wx.TextCtrl(panel, id = -1, size = (300, 90), style = wx.TE_MULTILINE)
        anotation_box.Add(self.anotation_input, 0, wx.ALL, 10)
        manager_box.Add(anotation_box, 0, wx.LEFT, 10)
        number_of_copies_box = wx.BoxSizer(wx.HORIZONTAL)
        number_of_copies_label = wx.StaticText(panel, -1, "количество".decode('utf8'))
        number_of_copies_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        number_of_copies_label.SetSize(number_of_copies_label.GetBestSize())
        number_of_copies_box.Add(number_of_copies_label, 0, wx.ALL, 10)
        self.number_of_copies_input = wx.TextCtrl(panel, -1, size=(140,-1))
        number_of_copies_box.Add(self.number_of_copies_input, 0, wx.ALL, 10)
        manager_box.Add(number_of_copies_box, 0, wx.LEFT, 10)
        price_box = wx.BoxSizer(wx.HORIZONTAL)
        price_label = wx.StaticText(panel, -1, "цена            ".decode('utf8'))
        price_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        price_label.SetSize(price_label.GetBestSize())
        price_box.Add(price_label, 0, wx.ALL, 10)
        self.price_input = wx.TextCtrl(panel, -1, size=(140,-1))
        price_box.Add(self.price_input, 0, wx.ALL, 10)
        manager_box.Add(price_box, 0, wx.LEFT, 10)

        manager_box.Add(self.GetNewChoiceField(panel,"издателство".decode('utf8'),0,self.publishers_list), 0, wx.LEFT, 10)

        genre_author_box = wx.BoxSizer(wx.HORIZONTAL)

        genre_box = wx.BoxSizer(wx.VERTICAL)
        self.selected_genres = wx.TextCtrl(panel, id = -1, size = (150, 80), style = wx.TE_MULTILINE | wx.TE_READONLY)
        add_genre_to_book_button = wx.Button(panel, wx.ID_CLOSE, "Добави жанр".decode('utf8'))
        add_genre_to_book_button.Bind(wx.EVT_BUTTON, self.OnAddGenreToBook)
        genre_box.Add(self.selected_genres, 0, wx.ALL, 10)
        genre_box.Add(add_genre_to_book_button, 0, wx.ALL, 10)

        author_box = wx.BoxSizer(wx.VERTICAL)
        add_author_to_book_button = wx.Button(panel, wx.ID_CLOSE, "Добави автор".decode('utf8'))
        add_author_to_book_button.Bind(wx.EVT_BUTTON, self.OnAddAuthorToBook)
        author_box.Add(add_author_to_book_button, 0, wx.ALL, 10)

        genre_author_box.Add(genre_box, 0, wx.ALL, 0)
        genre_author_box.Add(author_box, 0, wx.ALL, 0)

        manager_box.Add(genre_author_box, 0, wx.ALL, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Добави".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnAdd)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def UpdateSelectedGenres(self):
        genre_names = list()
        label_string = "жанрове:".decode("utf8")
        for i in self.currentBoookGenreIds:
            genre_names.append(self.myDataBaseConnector.GetGenreInfo(i)[1])
        delimiter = " "
        for i in genre_names:
            label_string+=delimiter+i
            delimiter = ", "
        self.selected_genres.SetValue(label_string)
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.title_input.GetValue()))
        return_list.append(self.myDataBaseConnector.GetPublisherIdByName(self.publishers_list[self.inputChoices[0].GetSelection()]))
        return_list.append(self.myOtherMethods.AddQuotes(self.anotation_input.GetValue()))
        return_list.append(self.myOtherMethods.AddQuotes(self.number_of_copies_input.GetValue()))
        return_list.append(self.myOtherMethods.AddQuotes(self.price_input.GetValue()))
        return return_list
    def OnAdd(self,event):
        book_index = self.myDataBaseConnector.AddBook(self.GetDataFromFields())
        self.myDataBaseConnector.AddGenresToBookWithId(book_index,self.currentBoookGenreIds)
        self.parent.myFormatedInfoGetter.UpdateMainInfo()
        self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,600))
        self.Center()
    def GetNewChoiceField(self,panel,label,index,list_of_choices):
		FirstBox = wx.BoxSizer(wx.HORIZONTAL)
		m_text = wx.StaticText(panel, -1, label)
		m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
		m_text.SetSize(m_text.GetBestSize())
		FirstBox.Add(m_text, 0, wx.ALL, 10)
		myChoice = wx.Choice(panel,choices = list_of_choices)
		self.inputChoices.append(myChoice)
		FirstBox.Add(self.inputChoices[index], 0, wx.LEFT, 10)
		return FirstBox
    def PopulatePublisherList(self):
        self.publishers_list = self.myDataBaseConnector.GetAllPublisherNames()

    def OnAddGenreToBook(self,event):
        window = GenreToBookAdder(self)
        window.Show()
    def OnAddAuthorToBook(self,event):
        #window = AuthorToBookAdder(self)
        #window.Show()
        return None
