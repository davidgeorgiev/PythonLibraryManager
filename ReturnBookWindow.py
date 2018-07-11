#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from datetime import datetime
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods
from DatePicker import DatePicker
from LoanedBookManagerWindow import LoanedBookManagerWindow

class ReturnBookWindow(wx.Frame):
    def __init__(self,parent):
        self.loan_date = "0000-00-00"
        self.return_date = "0000-00-00"
        self.myDatePicker = DatePicker(self)
        self.myDataBaseConnector = DataBaseConnector(self)
        self.user_list = list()
        self.PopulateUsersList()
        self.book_list = list()
        self.PopulateBooksList()
        self.inputChoices = list()
        self.myOtherMethods = OtherMethods(self)

        self.parent = parent
        self.InitMyWindow("ВРЪЩАНЕ НА КНИГА".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ВРЪЩАНЕ НА КНИГА".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        manager_box.Add(self.GetNewChoiceField(panel,"потребител".decode('utf8'),0,self.user_list), 0, wx.LEFT, 10)


        show_info_button = wx.Button(panel, wx.ID_CLOSE, "Покажи заетите книги".decode('utf8'))
        show_info_button.Bind(wx.EVT_BUTTON, self.OnShowLoanBooks)
        manager_box.Add(show_info_button, 0, wx.ALL, 10)

        return manager_box
    def OnShowLoanBooks(self,event):
        window = LoanedBookManagerWindow(self,self.GetDataFromFields()[0])
        window.Show()
        return 0
    def OnLoanDateChanged(self,event):
        date_str = str(event.GetDate())
        mydate = datetime.strptime(date_str,'%m/%d/%y %H:%M:%S')
        self.loan_date = mydate.strftime('%Y-%m-%d')
    def OnReturnDateChanged(self,event):
        date_str = str(event.GetDate())
        mydate = datetime.strptime(date_str,'%m/%d/%y %H:%M:%S')
        self.return_date = mydate.strftime('%Y-%m-%d')
    def GetDataFromFields(self):
        return_list = list()
        return_list.append(self.user_list[self.inputChoices[0].GetSelection()].split()[-1])
        return return_list

    def InitMyWindow(self,title):
        wx.Frame.__init__(self, None, title=title, size=(460,380))
        self.Center()
    def PopulateUsersList(self):
        self.user_list = self.myDataBaseConnector.GetAllUserIdsAndNames()
    def PopulateBooksList(self):
        self.book_list = self.myDataBaseConnector.GetAllBookIdsAndNames()
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
