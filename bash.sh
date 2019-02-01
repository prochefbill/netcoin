#!/bin/sh

/Users/reg/Qt/5.11.0/clang_64/bin/macdeployqt netcoin-qt.app
chmod -R +w netcoin-qt.app/Contents/Frameworks
chmod -R +w netcoin-qt.app/Contents

install_name_tool -id @executable_path/../Frameworks/libdb_cxx-6.2.dylib netcoin-qt.app/Contents/Frameworks/libdb_cxx-6.2.dylib
install_name_tool -change /opt/local/lib/db48/libdb_cxx-6.2.dylib @executable_path/../Frameworks/libdb_cxx-6.2.dylib netcoin-qt.app/Contents/MacOs/netcoin-qt

install_name_tool -id @executable_path/../Frameworks/QtWidgets.framework/Versions/5/QtWidgets netcoin-qt.app/Contents/Frameworks/QtWidgets.framework/Versions/5/QtWidgets
install_name_tool -change @rpath/QtWidgets.framework/Versions/5/QtWidgets @executable_path/../Frameworks/QtWidgets.framework/Versions/5/QtWidgets netcoin-qt.app/Contents/MacOs/netcoin-qt

install_name_tool -id @executable_path/../Frameworks/QtGui.framework/Versions/5/QtGui netcoin-qt.app/Contents/Frameworks/QtGui.framework/Versions/5/QtGui
install_name_tool -change @rpath/QtGui.framework/Versions/5/QtGui @executable_path/../Frameworks/QtGui.framework/Versions/5/QtGui netcoin-qt.app/Contents/MacOs/netcoin-qt

install_name_tool -id @executable_path/../Frameworks/QtCore.framework/Versions/5/QtCore netcoin-qt.app/Contents/Frameworks/QtCore.framework/Versions/5/QtCore
install_name_tool -change @rpath/QtCore.framework/Versions/5/QtCore @executable_path/../Frameworks/QtCore.framework/Versions/5/QtCore netcoin-qt.app/Contents/MacOs/netcoin-qt

sudo install_name_tool -add_rpath @executable_path/contents/MacOs/../Frameworks/. netcoin-qt.app/contents/MacOs/netcoin-qt

sudo mkdir netcoin-qt.app/contents/MacOs/Platforms

sudo mv netcoin-qt.app/Contents/PlugIns/platforms/libqcocoa.dylib netcoin-qt.app/contents/MacOs/Platforms/libqcocoa.dylib


sudo install_name_tool -add_rpath @executable_path/../Frameworks/. netcoin-qt.app/contents/MacOs/platforms/libqcocoa.dylib


#  bash.sh

#  
#
#  Created by david bosanquet on 12/11/2018.
#
