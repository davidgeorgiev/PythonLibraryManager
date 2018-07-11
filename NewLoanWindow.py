#!/usr/bin/env python
# -*- coding: utf-8 -*-
import wx, wx.html
from datetime import datetime
from DataBaseConnector import DataBaseConnector
from OtherMethods import OtherMethods
from DatePicker import DatePicker

class NewLoanWindow(wx.Frame):
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
        self.InitMyWindow("ЗАЕМАНЕ НА КНИГА".decode('utf8'))
        panel = wx.Panel(self)
        box = self.GetManagerBoxSizer(panel)
        panel.SetSizer(box)
        panel.Layout()
    def GetManagerBoxSizer(self,panel):
        manager_box = wx.BoxSizer(wx.VERTICAL)
        m_text = wx.StaticText(panel, -1, "ЗАЕМАНЕ НА КНИГА".decode('utf8'))
        m_text.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        m_text.SetSize(m_text.GetBestSize())
        manager_box.Add(m_text, 0, wx.ALL, 10)

        manager_box.Add(self.GetNewChoiceField(panel,"потребител".decode('utf8'),0,self.user_list), 0, wx.LEFT, 10)
        manager_box.Add(self.GetNewChoiceField(panel,"книга".decode('utf8'),1,self.book_list), 0, wx.LEFT, 10)


        loan_date_box = wx.BoxSizer(wx.HORIZONTAL)
        loan_date_label = wx.StaticText(panel, -1, "дата на заемане".decode('utf8'))
        loan_date_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        loan_date_label.SetSize(loan_date_label.GetBestSize())
        loan_date_box.Add(loan_date_label, 0, wx.LEFT, 10)
        self.loan_date_picker = self.myDatePicker.GetDatePicker(panel)
        self.loan_date_picker.Bind(wx.EVT_DATE_CHANGED, self.OnLoanDateChanged)
        loan_date_box.Add(self.loan_date_picker, 0, wx.LEFT, 10)
        manager_box.Add(loan_date_box, 0, wx.ALL, 0)

        return_date_box = wx.BoxSizer(wx.HORIZONTAL)
        return_date_label = wx.StaticText(panel, -1, "дата на връщане".decode('utf8'))
        return_date_label.SetFont(wx.Font(12, wx.SWISS, wx.NORMAL, wx.NORMAL))
        return_date_label.SetSize(return_date_label.GetBestSize())
        return_date_box.Add(return_date_label, 0, wx.LEFT, 10)
        self.return_date_picker = self.myDatePicker.GetDatePicker(panel)
        self.return_date_picker.Bind(wx.EVT_DATE_CHANGED, self.OnReturnDateChanged)
        return_date_box.Add(self.return_date_picker, 0, wx.LEFT, 10)
        manager_box.Add(return_date_box, 0, wx.ALL, 0)

        show_info_button = wx.Button(panel, wx.ID_CLOSE, "Извърши заемането".decode('utf8'))
        show_info_button.Bind(wx.EVT_BUTTON, self.OnAdd)
        manager_box.Add(show_info_button, 0, wx.ALL, 10)

        return manager_box
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
        return_list.append(self.book_list[self.inputChoices[1].GetSelection()].split()[-1])
        return return_list
    def OnAdd(self,event):
        my_list = self.GetDataFromFields()
        my_list.append(self.myOtherMethods.AddQuotes(self.loan_date))
        my_list.append(self.myOtherMethods.AddQuotes(self.return_date))
        my_list.append("0")
        error_message = "Книгата не може да се заеме, защото:\n".decode('utf8')
        if_error = 0
        if (int(self.myDataBaseConnector.GetNumberOfAvailableBooksWithId(my_list[1]))<=0):
            error_message += "всички бройки от тази книга вече са заети\n".decode("utf8")
            if_error = 1
        if (self.myDataBaseConnector.GetIfUsersCardIsExpired(my_list[0])):
            error_message += "картата на потребителя е изтекла\n".decode("utf8")
            if_error = 1
        if(if_error == 1):
            msg = wx.MessageDialog(self,error_message,"Грешка".decode('utf8'),wx.OK | wx.ICON_ERROR)
            msg.ShowModal()
            msg.Destroy()
        else:
            self.myDataBaseConnector.AddLoan(my_list)
            self.parent.myFormatedInfoGetter.UpdateMainInfo()
        self.Destroy()
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
