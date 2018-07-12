#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods
from BookManagerWindow import BookManagerWindow

class BookSearcherWindow(wx.Frame):
    def __init__(self,parent):
        self.myOtherMethods = OtherMethods(self)
        self.myDataBaseConnector = DataBaseConnector(self)
        self.parent = parent
        self.InitMyWindow("ТЪРСЕНЕ НА КНИГА".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
        self.panel = panel
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ТЪРСЕНЕ НА КНИГА".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        book_name_box = wx.BoxSizer(wx.HORIZONTAL)
        book_name_label = wx.StaticText(panel, -1, "заглавие:".decode('utf8'))
        book_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        book_name_label.SetSize(book_name_label.GetBestSize())
        book_name_box.Add(book_name_label, 0, wx.ALL, 10)
        self.book_name_input = wx.TextCtrl(panel, -1, size=(140,-1))
        book_name_box.Add(self.book_name_input, 0, wx.ALL, 10)
        manager_box.Add(book_name_box, 0, wx.LEFT, 10)

        author_name_box = wx.BoxSizer(wx.HORIZONTAL)
        author_name_label = wx.StaticText(panel, -1, "автор:".decode('utf8'))
        author_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        author_name_label.SetSize(author_name_label.GetBestSize())
        author_name_box.Add(author_name_label, 0, wx.ALL, 10)
        self.author_name_input = wx.TextCtrl(panel, -1, size=(140,-1))
        author_name_box.Add(self.author_name_input, 0, wx.ALL, 10)
        manager_box.Add(author_name_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Търси".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnSearch)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.book_name_input.GetValue()).replace('"',''))
        return_list.append(self.myOtherMethods.AddQuotes(self.author_name_input.GetValue()).replace('"',''))
        return return_list
    def OnSearch(self,event):
        my_data = self.GetDataFromFields()
        window = BookManagerWindow(self,my_data)
        window.Show()
        self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Center()
