#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods
from AuthorInfoWindow import AuthorInfoWindow

class AuthorManagerWindow(wx.Frame):
    def __init__(self,parent):
        self.myDataBaseConnector = DataBaseConnector(self)
        self.author_list = list()
        self.PopulateAuthorsList()
        self.inputChoices = list()
        self.myOtherMethods = OtherMethods(self)

        self.parent = parent
        self.InitMyWindow("ОРГАНИЗАТОР НА АВТОРИТЕ".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ОРГАНИЗАТОР НА АВТОРИТЕ".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        manager_box.Add(self.GetNewChoiceField(panel,"автор".decode('utf8'),0,self.author_list), 0, wx.LEFT, 10)

        show_info_button = wx.Button(panel, wx.ID_CLOSE, "Покажи информация".decode('utf8'))
        show_info_button.Bind(wx.EVT_BUTTON, self.OnShowInfo)
        manager_box.Add(show_info_button, 0, wx.ALL, 10)

        return manager_box
    def OnShowInfo(self,event):
        window = AuthorInfoWindow(self,self.author_list[self.inputChoices[0].GetSelection()].split()[-1])
        window.Show()
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.genre_input.GetValue()))
        return return_list
    def OnAdd(self,event):
        self.myDataBaseConnector.AddGenre(self.GetDataFromFields())
        self.parent.myFormatedInfoGetter.UpdateMainInfo()
        self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Center()
    def PopulateAuthorsList(self):
        self.author_list = self.myDataBaseConnector.GetAllAuthorsIdsAndNames()
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
