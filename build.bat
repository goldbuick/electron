
python script\bootstrap.py ^
--libcc_source_path=C:\Development\libchromiumcontent\dist\main\src ^
--libcc_shared_library_path=C:\Development\libchromiumcontent\dist\main\shared_library ^
--libcc_static_library_path=C:\Development\libchromiumcontent\dist\main\static_library 

python script\build.py -c R
python script\create-dist.py

xcopy dist ..\classflow-plus\node_modules\electron\dist /s /e /y
