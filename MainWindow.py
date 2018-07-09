import wx, wx.html
import sys
from DataBaseConnector import DataBaseConnector


class Frame(wx.Frame):
    def __init__(self, title):
        myDataBaseConnector = DataBaseConnector(self)
        myDataBaseConnector.AddUser()
        print(myDataBaseConnector.GetUserInfo())
        myDataBaseConnector.DeleteUser()
        myDataBaseConnector.EditUser()
        myDataBaseConnector.AddAuthor()
        myDataBaseConnector.DeleteAuthor()
        myDataBaseConnector.EditAuthor()
        myDataBaseConnector.AddBook()
        myDataBaseConnector.DeleteBook()
        myDataBaseConnector.EditBook()

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
