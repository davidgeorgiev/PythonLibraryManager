#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods

class PublisherAdderWindow(wx.Frame):
    def __init__(self,parent):
        self.myOtherMethods = OtherMethods(self)
        self.myDataBaseConnector = DataBaseConnector(self)
        self.parent = parent
        self.InitMyWindow("ДОБАВИ ИЗДАТЕЛСТВО".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
        self.panel = panel
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ДОБАВИ ИЗДАТЕЛСТВО".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        name_box = wx.BoxSizer(wx.HORIZONTAL)
        name_label = wx.StaticText(panel, -1, "име    ".decode('utf8'))
        name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        name_label.SetSize(name_label.GetBestSize())
        name_box.Add(name_label, 0, wx.ALL, 10)
        self.name_input = wx.TextCtrl(panel, -1, size=(140,-1))
        name_box.Add(self.name_input, 0, wx.ALL, 10)
        manager_box.Add(name_box, 0, wx.LEFT, 10)
        address_box = wx.BoxSizer(wx.HORIZONTAL)
        address_label = wx.StaticText(panel, -1, "адрес".decode('utf8'))
        address_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        address_label.SetSize(address_label.GetBestSize())
        address_box.Add(address_label, 0, wx.ALL, 10)
        self.address_input = wx.TextCtrl(panel, -1, size=(140,-1))
        address_box.Add(self.address_input, 0, wx.ALL, 10)
        manager_box.Add(address_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Добави".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnAdd)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.name_input.GetValue()))
        return_list.append(self.myOtherMethods.AddQuotes(self.address_input.GetValue()))
        return return_list
    def OnAdd(self,event):
        my_data = self.GetDataFromFields()
        if (self.myOtherMethods.CheckIfSomeOfStringsInListIsEmpty(my_data,self.panel) == 0):
            self.myDataBaseConnector.AddPublisher(my_data)
            self.parent.myFormatedInfoGetter.UpdateMainInfo()
            self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Center()
