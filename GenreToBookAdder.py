#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods

class GenreToBookAdder(wx.Frame):
    def __init__(self,parent):
        self.myDataBaseConnector = DataBaseConnector(self)
        self.genres_list = list()
        self.inputChoices = list()
        self.PopulateGenresList()
        self.myOtherMethods = OtherMethods(self)

        self.parent = parent
        self.InitMyWindow("ДОБАВИ ЖАНР НА КНИГАТА".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ДОБАВИ ЖАНР НА КНИГАТА".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        genre_box = wx.BoxSizer(wx.HORIZONTAL)
        genre_box.Add(self.GetNewChoiceField(panel,"жанр".decode('utf8'),0,self.genres_list), 0, wx.LEFT, 10)
        manager_box.Add(genre_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Добави".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnAdd)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return self.myDataBaseConnector.GetGenreIdByName(self.genres_list[self.inputChoices[0].GetSelection()])
    def OnAdd(self,event):
        self.parent.currentBoookGenreIds.append(self.GetDataFromFields())
        self.parent.UpdateSelectedGenres()
        self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
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
    def PopulateGenresList(self):
        self.genres_list = self.myDataBaseConnector.GetAllGenreNames()
