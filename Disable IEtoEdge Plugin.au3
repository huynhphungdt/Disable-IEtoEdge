#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=images\internetexplorer_97505.ico
#AutoIt3Wrapper_Res_Description=Phung Huynh
#AutoIt3Wrapper_Res_ProductName=Disable IE to Edge
#AutoIt3Wrapper_Res_ProductVersion=1.0.0.1
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

; Chạy script với quyền Administrator để sửa đổi registry

; Khai báo đường dẫn của key
$regKey = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext\CLSID"

; Khai báo giá trị mới cho key
$newValue = "0"

; Ghi giá trị mới vào key
RegWrite($regKey, "{1FD49718-1D00-4B19-AF5F-070AF6D5D54C}", "REG_SZ", $newValue)

Sleep(1000)

MsgBox(64, "Succeed", ":-)")
