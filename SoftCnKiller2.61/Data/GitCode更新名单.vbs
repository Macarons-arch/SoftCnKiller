currentfolder = CreateObject("Scripting.FileSystemObject").GetFolder(".").Path
Set fso=CreateObject("Scripting.FileSystemObject")
if fso.folderExists(currentfolder+"\data") then
	downFile "https://gitcode.net/hfhbutn/SoftCnKiller/-/raw/master/whitepath.txt","\data\whitepath.txt"
	downFile "https://gitcode.net/hfhbutn/SoftCnKiller/-/raw/master/AppdataInfo.txt","\data\AppdataInfo.txt"
	downFile "https://gitcode.net/hfhbutn/SoftCnKiller/-/raw/master/folder.txt","\data\folder.txt"
	downFile "https://gitcode.net/hfhbutn/SoftCnKiller/-/raw/master/sign.txt","\data\sign.txt"
	downFile "https://gitcode.net/hfhbutn/SoftCnKiller/-/raw/master/Descrip/%E5%85%B3%E4%BA%8Efolder%E8%AF%B4%E6%98%8E.txt","\data\˵��\����folder˵��.txt"
	downFile "https://gitcode.net/hfhbutn/SoftCnKiller/-/raw/master/Descrip/%E5%85%B3%E4%BA%8E%E6%95%B0%E7%AD%BEsign%E8%AF%B4%E6%98%8E.txt","\data\˵��\������ǩsign˵��.txt"
	if fso.GetFile(currentfolder+"\data\sign.txt").size>100 and fso.GetFile(currentfolder+"\data\folder.txt").size>1000  and fso.GetFile(currentfolder+"\data\AppdataInfo.txt").size >400 then
		msgbox "������ɣ�"
	else
		msgbox "���³������л�����Դ�����ֶ�����ַ���أ�https://free.lanzoui.com/b0cpu1guf"
	end if
else
	msgbox "DataĿ¼�����ڣ��������Ŀ¼�����У�"
end if
Sub downFile(url,path)
	Set xHttp = CreateObject("WinHttp.WinHttpRequest.5.1")
	Set bStrm = CreateObject("Adodb.Stream")
	xHttp.Open "GET", url, False
	xHttp.Send
	with bStrm
		.type = 1 '
		.open
		.write xHttp.responseBody
		.savetofile currentfolder+path, 2 '//����
	end with
End Sub