#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods

class UserInfoWindow(wx.Frame):
    def __init__(self,parent,user_id):
        self.user_id = user_id
        self.myOtherMethods = OtherMethods(self)
        self.myDataBaseConnector = DataBaseConnector(self)
        self.user_full_info = self.myDataBaseConnector.GetUserInfo(self.user_id)
        self.parent = parent
        self.InitMyWindow("ИНФОРМАЦИЯ ЗА ПОТРЕБИТЕЛ С ID = ".decode('utf8')+str(user_id))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ИНФОРМАЦИЯ ЗА ПОТРЕБИТЕЛ С ID = ".decode('utf8')+str(self.user_id))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        first_name_box = wx.BoxSizer(wx.HORIZONTAL)
        first_name_label = wx.StaticText(panel, -1, "първо име: ".decode('utf8')+self.user_full_info[1].decode('utf8'))
        first_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        first_name_label.SetSize(first_name_label.GetBestSize())
        first_name_box.Add(first_name_label, 0, wx.ALL, 10)
        manager_box.Add(first_name_box, 0, wx.LEFT, 10)

        middle_name_box = wx.BoxSizer(wx.HORIZONTAL)
        middle_name_label = wx.StaticText(panel, -1, "второ име: ".decode('utf8')+self.user_full_info[2].decode('utf8'))
        middle_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        middle_name_label.SetSize(middle_name_label.GetBestSize())
        middle_name_box.Add(middle_name_label, 0, wx.ALL, 10)
        manager_box.Add(middle_name_box, 0, wx.LEFT, 10)

        last_name_box = wx.BoxSizer(wx.HORIZONTAL)
        last_name_label = wx.StaticText(panel, -1, "трето име: ".decode('utf8')+self.user_full_info[3].decode('utf8'))
        last_name_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        last_name_label.SetSize(last_name_label.GetBestSize())
        last_name_box.Add(last_name_label, 0, wx.ALL, 10)
        manager_box.Add(last_name_box, 0, wx.LEFT, 10)

        phone_box = wx.BoxSizer(wx.HORIZONTAL)
        phone_label = wx.StaticText(panel, -1, "телефон за връзка: ".decode('utf8')+self.user_full_info[5].decode('utf8'))
        phone_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        phone_label.SetSize(phone_label.GetBestSize())
        phone_box.Add(phone_label, 0, wx.ALL, 10)
        manager_box.Add(phone_box, 0, wx.LEFT, 10)

        email_box = wx.BoxSizer(wx.HORIZONTAL)
        email_label = wx.StaticText(panel, -1, "електронна поща: ".decode('utf8')+self.user_full_info[6].decode('utf8'))
        email_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        email_label.SetSize(email_label.GetBestSize())
        email_box.Add(email_label, 0, wx.ALL, 10)
        manager_box.Add(email_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Изтрий потребителя".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnDelete)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.myOtherMethods.AddQuotes(self.genre_input.GetValue()))
        return return_list
    def OnDelete(self,event):
        self.myDataBaseConnector.DeleteUser(self.user_id)
        self.parent.parent.myFormatedInfoGetter.UpdateMainInfo()
        self.parent.parent.OnManageUsers(None)
        self.parent.Destroy()
        self.Destroy()
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,550))
        self.Center()
