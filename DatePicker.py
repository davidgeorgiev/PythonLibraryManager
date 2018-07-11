import wx

#----------------------------------------------------------------------

class DatePicker():
    def __init__(self, parent):
        self.parent = parent
    def OnDateChanged(self, evt):
        print("OnDateChanged: %s\n" % evt.GetDate())
    def GetDatePicker(self,panel):
        dpc = wx.GenericDatePickerCtrl(panel, size=(120,-1),
                                       style = wx.TAB_TRAVERSAL
                                       | wx.DP_DROPDOWN
                                       | wx.DP_SHOWCENTURY
                                       | wx.DP_ALLOWNONE )
        return dpc
