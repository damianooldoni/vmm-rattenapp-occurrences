echo off
set arg1=%1
net use w: "https://int-web.vmm.be/ratten" %arg1% /user:INBO
w:
copy *.csv C:\Users\damiano_oldoni\Documents\GitHub\vmm-rattenapp-occurrences\data\raw
c:
cd C:\Users\damiano_oldoni\Documents\GitHub\vmm-rattenapp-occurrences\data\raw
move /y "Dieren en Planten Waarnemingen INBO Email-nl-be.csv" "Dieren en Planten Waarnemingen from 2022-01-01.csv"
move /y "Vangsten INBO Email-nl-be.csv" "Vangsten from 2022-01-01.csv"
cd..
cd..
w:
REM echo n | copy /-y Fotos\*.jpg C:\Users\damiano_oldoni\Documents\GitHub\vmm-rattenapp-occurrences\data\raw\pictures
XCOPY /D /Y /S "Fotos\*.jpg" "C:\Users\damiano_oldoni\Documents\GitHub\vmm-rattenapp-occurrences\data\raw\pictures"
c:
net use w: /delete
