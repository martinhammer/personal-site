+++
title = "Export Outlook contacts as vCard"
date = 2010-03-30T16:23:27Z

[taxonomies]
tags = ["addressbook", "outlook", "Windows"]
+++

Microsoft Outlook allows saving of contact in vCard format (vcf) only one at a time through the Save As... dialog. The Import and Export menu options do not provide the ability to export all contacts as vCard. Obviously with a large address book it would be very impractical to go through the contacts and save them one by one. Luckily it's not too difficult to script this functionality through a macro. The quick-and-dirty macro below does just that. Note that the script considers the "current" folder, i.e. you need to be in the Contacts folder you want to export when executing the macro.

```vb
Sub save_as_vcf()
  Dim i, ncount As Integer
  Dim fullname As String
  Set ofolder = Application.ActiveExplorer.CurrentFolder
  Set oitems = ofolder.Items
  ncount = oitems.Count
  MsgBox "Count is " & ncount
  For i = 1 To ncount
    Set oitem = oitems.Item(i)
    fullname = oitem.fullname
    oitem.SaveAs "D:Export" & fullname & ".vcf", olVCard
  Next
  MsgBox "Done"
End Sub
```
