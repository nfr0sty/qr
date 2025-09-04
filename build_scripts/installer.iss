!define APPNAME "QRMobile"
!define EXENAME "QRMobile.exe"
!define APPDIR "$PROGRAMFILES64\${APPNAME}"

Name "${APPNAME}"
OutFile "Output\QRMobile-Setup.exe"
InstallDir "${APPDIR}"
RequestExecutionLevel admin

Page Directory
Page InstFiles
UninstPage uninstConfirm
UninstPage instFiles

Section "Install"
  SetOutPath "${APPDIR}"
  File "..\dist\${EXENAME}"
  CreateDirectory "$SMPROGRAMS\${APPNAME}"
  CreateShortCut "$SMPROGRAMS\${APPNAME}\${APPNAME}.lnk" "${APPDIR}\${EXENAME}"
  CreateShortCut "$DESKTOP\${APPNAME}.lnk" "${APPDIR}\${EXENAME}"
SectionEnd

Section "Uninstall"
  Delete "$SMPROGRAMS\${APPNAME}\${APPNAME}.lnk"
  RMDir  "$SMPROGRAMS\${APPNAME}"
  Delete "$DESKTOP\${APPNAME}.lnk"
  Delete "${APPDIR}\${EXENAME}"
  RMDir  "${APPDIR}"
SectionEnd
