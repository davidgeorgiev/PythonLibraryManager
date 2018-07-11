#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods

class GenreAdderWindow(wx.Frame):
    def __init__(self,parent):
        self.myOtherMethods = OtherMethods(self)
        self.myDataBaseConnector = DataBaseConnector(self)
        self.parent = parent
        self.InitMyWindow("ДОБАВИ ЖАНР".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
        self.panel = panel
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ДОБАВИ ЖАНР".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        genre_box = wx.BoxSizer(wx.HORIZONTAL)
        genre_label = wx.StaticText(panel, -1, "жанр".decode('utf8'))
        genre_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        genre_label.SetSize(genre_label.GetBestSize())
        genre_box.Add(genre_label, 0, wx.ALL, 10)
        self.genre_input = wx.TextCtrl(panel, -1, size=(140,-1))
        genre_box.Add(self.genre_input, 0, wx.ALL, 10)
        manager_box.Add(genre_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Добави".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnAdd)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.genre_input.GetValue()))
        return return_list
    def OnAdd(self,event):
        my_data = self.GetDataFromFields()
        if (self.myOtherMethods.CheckIfSomeOfStringsInListIsEmpty(my_data,self.panel) == 0):
            self.myDataBaseConnector.AddGenre(my_data)
            self.parent.myFormatedInfoGetter.UpdateMainInfo()
            self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Center()
