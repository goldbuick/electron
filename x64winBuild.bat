SET npm_config_arch=x64

python script\bootstrap.py -v ^
--target_arch=x64 ^
--libcc_source_path=..\libchromiumcontent\x64dist\main\src ^
--libcc_shared_library_path=..\libchromiumcontent\x64dist\main\shared_library ^
--libcc_static_library_path=..\libchromiumcontent\x64dist\main\static_library 

python script\build.py -c R
python script\create-dist.py
