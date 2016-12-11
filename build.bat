
python script\bootstrap.py -v ^
--libcc_source_path=..\libchromiumcontent\dist\main\src ^
--libcc_shared_library_path=..\libchromiumcontent\dist\main\shared_library ^
--libcc_static_library_path=..\libchromiumcontent\dist\main\static_library 

python script\update.py -t x64
python script\build.py -c R
python script\create-dist.py

rem xcopy dist ..\classflow-plus\node_modules\electron\dist /s /e /y
