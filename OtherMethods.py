#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
class OtherMethods():
    def __init__(self,parent):
        self.parent = parent
    def AddQuotes(self,in_sting):
        return "\""+in_sting+"\""
    def CheckIfSomeOfStringsInListIsEmpty(self,my_list,panel):
        for i in my_list:
            if (not i) or (i=='""'):
                msg = wx.MessageDialog(panel,"Не трябва да има празни полета".decode('utf8'),"Грешка".decode('utf8'),wx.OK | wx.ICON_ERROR)
                msg.ShowModal()
                msg.Destroy()
                return 1
        return 0
