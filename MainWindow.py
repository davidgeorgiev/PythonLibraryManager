import wx, wx.html
import sys
from DataBaseConnector import DataBaseConnector
import datetime


class Frame(wx.Frame):
    def __init__(self, title):
        myDataBaseConnector = DataBaseConnector(self)
        '''myDataBaseConnector.AddUser(['"David"', '"Lachezarov"', '"Georgiev"', '"0893514113"', '"david.l.georgiev@gmail.com"'])
        print(myDataBaseConnector.GetUserInfo(9))
        #myDataBaseConnector.DeleteUser(1)
        myDataBaseConnector.EditUser(2,['"David2"', '"Lachezarov2"', '"Georgiev2"', '"0893514113"', '"david.l.georgiev@gmail.com"'])

        myDataBaseConnector.AddAuthor(['"David"', '"Lachezarov"', '"Georgiev"'])
        print(myDataBaseConnector.GetAuthorInfo(1))
        #myDataBaseConnector.DeleteAuthor(1)
        myDataBaseConnector.EditAuthor(1,['"David2"', '"Lachezarov2"', '"Georgiev2"'])

        myDataBaseConnector.AddPublisher(['"Name"', '"Sofia"'])
        print(myDataBaseConnector.GetPublisherInfo(1))
        #myDataBaseConnector.DeletePublisher(1)
        myDataBaseConnector.EditPublisher(1,['"Name2"', '"Varna"'])

        myDataBaseConnector.AddBook(['"title"', '1', '"bla bla"', '"2"', '"12.5"'])
        print(myDataBaseConnector.GetBookInfo(1))
        #myDataBaseConnector.DeleteBook(1)
        myDataBaseConnector.EditBook(10,['"title2"', '2', '"bla bla"', '"2"', '"14.5"'])

        myDataBaseConnector.AddPublisher(['"Name"', '"Sofia"'])
        print(myDataBaseConnector.GetPublisherInfo(1))
        #myDataBaseConnector.DeletePublisher(1)
        myDataBaseConnector.EditPublisher(1,['"Name2"', '"Varna"'])

        myDataBaseConnector.AddLoan(['"2"', '"10"', "\""+str(datetime.date.today())+"\"", '"2018-08-01"', '"0"'])
        print(myDataBaseConnector.GetLoanInfo(1))
        #myDataBaseConnector.DeleteLoan(1)
        myDataBaseConnector.EditLoan(1,['"2"', '"10"', "\""+str(datetime.date.today())+"\"", '"2018-08-01"', '"0"', '"2018-07-12"'])

        myDataBaseConnector.AddGenre(['"Art"'])
        print(myDataBaseConnector.GetGenreInfo(2))
        #myDataBaseConnector.DeleteGenre(1)
        myDataBaseConnector.EditGenre(2,['"Music"'])

        myDataBaseConnector.AddBookAuthor(10,2);
        print(myDataBaseConnector.GetBookByAuthorId(2))
        print(myDataBaseConnector.GetAuthorByBookId(10))
        #myDataBaseConnector.DeleteBookByAuthorId(2);
        #myDataBaseConnector.DeleteAuthorByBookId(10);

        myDataBaseConnector.AddBookGenre(10,2);
        print(myDataBaseConnector.GetBookByGenreId(2))
        print(myDataBaseConnector.GetGenreByBookId(10))
        #myDataBaseConnector.DeleteBookByGenreId(2);
        #myDataBaseConnector.DeleteGenreByBookId(10);'''



        wx.Frame.__init__(self, None, title=title, pos=(150,150), size=(350,200))
        self.Bind(wx.EVT_CLOSE, self.OnClose)

        menuBar = wx.MenuBar()
        menu = wx.Menu()
        m_exit = menu.Append(wx.ID_EXIT, "E&xit\tAlt-X", "Close window and exit program.")
        self.Bind(wx.EVT_MENU, self.OnClose, m_exit)
        menuBar.Append(menu, "&File")
        menu = wx.Menu()
        m_about = menu.Append(wx.ID_ABOUT, "&About", "Information about this program")
        self.Bind(wx.EVT_MENU, self.OnAbout, m_about)
        menuBar.Append(menu, "&Help")
        self.SetMenuBar(menuBar)

        self.statusbar = self.CreateStatusBar()

        panel = wx.Panel(self)
        box = wx.BoxSizer(wx.VERTICAL)

        m_text = wx.StaticText(panel, -1, "Hello World!")
        m_text.SetFont(wx.Font(14, wx.SWISS, wx.NORMAL, wx.BOLD))
        m_text.SetSize(m_text.GetBestSize())
        box.Add(m_text, 0, wx.ALL, 10)

        m_close = wx.Button(panel, wx.ID_CLOSE, "Close")
        m_close.Bind(wx.EVT_BUTTON, self.OnClose)
        box.Add(m_close, 0, wx.ALL, 10)

        panel.SetSizer(box)
        panel.Layout()

    def OnClose(self, event):
        dlg = wx.MessageDialog(self,
            "Do you really want to close this application?",
            "Confirm Exit", wx.OK|wx.CANCEL|wx.ICON_QUESTION)
        result = dlg.ShowModal()
        dlg.Destroy()
        if result == wx.ID_OK:
            self.Destroy()

    def OnAbout(self, event):
        msg = wx.MessageDialog(self,"Created by David Georgiev","About",wx.OK | wx.ICON_INFORMATION)
        msg.ShowModal()
        msg.Destroy()

app = wx.App(redirect=False)   # Error messages go to popup window
top = Frame("Library Manager v0.1")
top.Show()
app.MainLoop()
