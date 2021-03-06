#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods
from BookInfoWindow import BookInfoWindow

class BookManagerWindow(wx.Frame):
    def __init__(self,parent,searching_list = None):
        self.searching_list = searching_list
        self.myDataBaseConnector = DataBaseConnector(self)
        self.book_list = list()
        self.PopulateBooksList()
        self.inputChoices = list()
        self.myOtherMethods = OtherMethods(self)

        self.parent = parent
        self.InitMyWindow("ОРГАНИЗАТОР НА КНИГИТЕ".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ОРГАНИЗАТОР НА КНИГИТЕ".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        manager_box.Add(self.GetNewChoiceField(panel,"книга".decode('utf8'),0,self.book_list), 0, wx.LEFT, 10)

        show_info_button = wx.Button(panel, wx.ID_CLOSE, "Покажи информация".decode('utf8'))
        show_info_button.Bind(wx.EVT_BUTTON, self.OnShowInfo)
        manager_box.Add(show_info_button, 0, wx.ALL, 10)

        return manager_box
    def OnShowInfo(self,event):
        window = BookInfoWindow(self,self.book_list[self.inputChoices[0].GetSelection()].split()[-1])
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
    def PopulateBooksList(self):
        if(self.searching_list == None):
            self.book_list = self.myDataBaseConnector.GetAllBookIdsAndNames()
        else:
            self.book_list = self.myDataBaseConnector.GetAllBookIdsAndNamesSearchByBookNameAndAuthorName(self.searching_list[0],self.searching_list[1])
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
