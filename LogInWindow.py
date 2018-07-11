#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from DataBaseConnector import DataBaseConnector
from MainWindow import Frame
import sys

class LogInWindow(wx.Frame):
    def __init__(self,parent):
        self.parent = parent
        self.InitMyWindow("ВХОД В ПРИЛОЖЕНИЕТО".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ВХОД В ПРИЛОЖЕНИЕТО".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        username_box = wx.BoxSizer(wx.HORIZONTAL)
        username_label = wx.StaticText(panel, -1, "име".decode('utf8'))
        username_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        username_label.SetSize(username_label.GetBestSize())
        username_box.Add(username_label, 0, wx.ALL, 10)
        self.username_input = wx.TextCtrl(panel, -1, size=(140,-1))
        self.username_input.SetValue("admin")
        username_box.Add(self.username_input, 0, wx.ALL, 10)
        manager_box.Add(username_box, 0, wx.LEFT, 10)

        password_box = wx.BoxSizer(wx.HORIZONTAL)
        password_label = wx.StaticText(panel, -1, "парола".decode('utf8'))
        password_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        password_label.SetSize(password_label.GetBestSize())
        password_box.Add(password_label, 0, wx.ALL, 10)
        self.password_input = wx.TextCtrl(panel, -1, size=(140,-1),style=wx.TE_PASSWORD)
        self.password_input.SetValue("admin123")
        password_box.Add(self.password_input, 0, wx.ALL, 10)
        manager_box.Add(password_box, 0, wx.LEFT, 10)

        add_button = wx.Button(panel, wx.ID_CLOSE, "Влез".decode('utf8'))
        add_button.Bind(wx.EVT_BUTTON, self.OnLogIn)
        manager_box.Add(add_button, 0, wx.ALL, 10)

        return manager_box
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.username_input.GetValue())
        return_list.append(self.password_input.GetValue())
        return return_list
    def OnLogIn(self,event):
        myInfo = self.GetDataFromFields()
        user_name = "admin"
        password = "admin123"
        if(myInfo[0] == user_name) and (myInfo[1] == password):
            top = Frame("Организатор за библиотека v0.1".decode('utf8'))
            top.Show()
            self.Destroy()
        else:
            md = wx.MessageDialog(self, "Грешни данни. Програмата ще бъде затворена.".decode('utf8'), caption="Грешни данни".decode('utf8'),style=wx.OK|wx.CENTRE)
            md.ShowModal()
            sys.exit(1)
    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Center()

app = wx.App(redirect=False)   # Error messages go to popup window
top = LogInWindow(None)
top.Show()
app.MainLoop()
