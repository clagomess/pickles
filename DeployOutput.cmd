@ECHO OFF

cd ..\picklesdoc.github.com
rmdir Output /s /q
echo D | xcopy ..\pickles\Output Output /e
powershell -Command "(gc index_template.md) -replace 'VERSION_PLACEHOLDER', '%1' | Out-File -encoding ASCII index.md"
cd ..\pickles
