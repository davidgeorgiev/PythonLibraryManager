#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods

class UserAdderWindow(wx.Frame):
    def __init__(self,parent):
        self.myOtherMethods = OtherMethods(self)
        self.myDataBaseConnector = DataBaseConnector(self)
        self.parent = parent
        self.InitMyWindow("ДОБАВИ ПОТРЕБИТЕЛ".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ДОБАВИ ПОТРЕБИТЕЛ".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        first_name_box = wx.BoxSizer(wx.HORIZONTAL)
        first_name_label = wx.StaticText(panel, -1, "първо име".decode('utf8'))
        first_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        first_name_label.SetSize(first_name_label.GetBestSize())
        first_name_box.Add(first_name_label, 0, wx.ALL, 10)
        self.first_name_input = wx.TextCtrl(panel, -1, size=(140,-1))
        first_name_box.Add(self.first_name_input, 0, wx.ALL, 10)
        manager_box.Add(first_name_box, 0, wx.LEFT, 10)

        middle_name_box = wx.BoxSizer(wx.HORIZONTAL)
        middle_name_label = wx.StaticText(panel, -1, "второ име".decode('utf8'))
        middle_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        first_name_label.SetSize(middle_name_label.GetBestSize())
        middle_name_box.Add(middle_name_label, 0, wx.ALL, 10)
        self.middle_name_input = wx.TextCtrl(panel, -1, size=(140,-1))
        middle_name_box.Add(self.middle_name_input, 0, wx.ALL, 10)
        manager_box.Add(middle_name_box, 0, wx.LEFT, 10)

        last_name_box = wx.BoxSizer(wx.HORIZONTAL)
        last_name_label = wx.StaticText(panel, -1, "трето име ".decode('utf8'))
        last_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        first_name_label.SetSize(last_name_label.GetBestSize())
        last_name_box.Add(last_name_label, 0, wx.ALL, 10)
        self.last_name_input = wx.TextCtrl(panel, -1, size=(140,-1))
        last_name_box.Add(self.last_name_input, 0, wx.ALL, 10)
        manager_box.Add(last_name_box, 0, wx.LEFT, 10)

        phone_box = wx.BoxSizer(wx.HORIZONTAL)
        phone_label = wx.StaticText(panel, -1, "телефон   ".decode('utf8'))
        phone_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        first_name_label.SetSize(phone_label.GetBestSize())
        phone_box.Add(phone_label, 0, wx.ALL, 10)
        self.phone_input = wx.TextCtrl(panel, -1, size=(140,-1))
        phone_box.Add(self.phone_input, 0, wx.ALL, 10)
        manager_box.Add(phone_box, 0, wx.LEFT, 10)

        email_box = wx.BoxSizer(wx.HORIZONTAL)
        email_label = wx.StaticText(panel, -1, "е-поща      ".decode('utf8'))
        email_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        first_name_label.SetSize(email_label.GetBestSize())
        email_box.Add(email_label, 0, wx.ALL, 10)
        self.email_input = wx.TextCtrl(panel, -1, size=(140,-1))
        email_box.Add(self.email_input, 0, wx.ALL, 10)
        manager_box.Add(email_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Добави".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnAdd)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.first_name_input.GetValue()))
        return_list.append(self.myOtherMethods.AddQuotes(self.middle_name_input.GetValue()))
        return_list.append(self.myOtherMethods.AddQuotes(self.last_name_input.GetValue()))
        return_list.append(self.myOtherMethods.AddQuotes(self.phone_input.GetValue()))
        return_list.append(self.myOtherMethods.AddQuotes(self.email_input.GetValue()))
        return return_list
    def OnAdd(self,event):
        self.myDataBaseConnector.AddUser(self.GetDataFromFields())
        self.parent.myFormatedInfoGetter.UpdateMainInfo()
        self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Center()
