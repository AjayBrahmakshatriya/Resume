import time
f = open("main/main.html").read()
f = f.replace("<H1>", "<H2>")
f = f.replace("<H2>", "<H1>", 1)
f = f.replace("</H1>", "</H2>")
f = f.replace("</H2>", "</H1>", 1)
f = f.replace("<HR>", "")
f = f.replace("<BIG CLASS=\"XXLARGE\">", "<SPAN>")
f = f.replace("</BIG>", "</SPAN>")
f = f.replace("main.css", "main.css?v="+str(int(time.time())))
open("main/main.html", "w").write(f)
