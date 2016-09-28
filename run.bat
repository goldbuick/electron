echo off

echo build libchromiumcontent
python script\bootstrap.py -v --target_arch=x64 --build_libchromiumcontent
rem python vendor\brightray\vendor\libchromiumcontent\script\build -R -t x64

rem echo create dist libchromiumcontent
rem python vendor\brightray\vendor\libchromiumcontent\script\create-dist -c static_library --no_zip -t x64

rem echo bootstrap brightray
rem python vendor\brightray\script\bootstrap ^
rem 	--commit 086d162df0962c12d2db5a9fbe488aa52ad9a327 ^
rem 	--target_arch x64 https://s3.amazonaws.com/github-janky-artifacts/libchromiumcontent ^
rem 	--libcc_source_path vendor\brightray\vendor\libchromiumcontent\dist\main\src ^
rem 	--libcc_shared_library_path vendor\brightray\vendor\libchromiumcontent\dist\main\shared_library ^
rem 	--libcc_static_library_path vendor\brightray\vendor\libchromiumcontent\dist\main\static_library

echo build electron
python script\build.py -c R

echo run test
out\R\electron ..\electron-test
