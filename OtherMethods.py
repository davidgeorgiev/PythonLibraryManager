#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
import sys
class OtherMethods():
    def __init__(self,parent):
        self.parent = parent
    def AddQuotes(self,in_string):
        in_string = in_string.replace('"','')
        in_string = in_string.replace("'","")
        in_string = in_string.replace('\\','')
        in_string = in_string.replace("/","")
        return "\""+in_string+"\""
    def CheckIfSomeOfStringsInListIsEmpty(self,my_list,panel):
        for i in my_list:
            if (not i) or (i=='""'):
                msg = wx.MessageDialog(panel,"Не трябва да има празни полета".decode('utf8'),"Грешка".decode('utf8'),wx.OK | wx.ICON_ERROR)
                msg.ShowModal()
                msg.Destroy()
                return 1
        return 0
    def CheckSizeOfString(self,in_string,in_message,byte_limit,panel):
        if sys.getsizeof(in_string)>byte_limit:
            msg = wx.MessageDialog(panel,in_message.decode('utf8'),"Грешка".decode('utf8'),wx.OK | wx.ICON_ERROR)
            msg.ShowModal()
            msg.Destroy()
            return 1
        return 0
