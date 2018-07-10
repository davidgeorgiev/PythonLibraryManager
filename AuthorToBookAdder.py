#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods

class AuthorToBookAdder(wx.Frame):
    def __init__(self,parent):
        self.myDataBaseConnector = DataBaseConnector(self)
        self.authors_list = list()
        self.inputChoices = list()
        self.PopulateAuthorsList()
        self.myOtherMethods = OtherMethods(self)

        self.parent = parent
        self.InitMyWindow("ДОБАВИ АВТОР НА КНИГАТА".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ДОБАВИ АВТОР НА КНИГАТА".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        author_box = wx.BoxSizer(wx.HORIZONTAL)
        author_box.Add(self.GetNewChoiceField(panel,"автор".decode('utf8'),0,self.authors_list), 0, wx.LEFT, 10)
        manager_box.Add(author_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Добави".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnAdd)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return self.authors_list[self.inputChoices[0].GetSelection()].split()[0]
    def OnAdd(self,event):
        self.parent.AppendToCurrentBookAuthorIds(self.GetDataFromFields())
        self.parent.UpdateSelectedAuthors()
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
    def PopulateAuthorsList(self):
        self.authors_list = self.myDataBaseConnector.GetAllAuthorsIdsAndNames()
