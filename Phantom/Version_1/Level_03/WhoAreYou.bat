@ECHO OFF
:Start
COLOR 0a
TITLE Welcome
CLS
SET /P _Username=Username: 
SET /P _Password=Password: 

IF /I %_Password%==Sup3rS3cr3tP455w0rd! GOTO logged_in
GOTO invalid_login

:logged_in
CLS
ECHO Welcome %_Username%!
REN broken.png broken.rar
ECHO|SET /P="Rar!">broken.rar.new
TYPE broken.rar>>broken.rar.new
MOVE /Y broken.rar.new broken.rar
ECHO I fixed the broken file for you.
ECHO.
ECHO The password is: "321drowssaP"
ECHO.
ECHO Good day!
PAUSE
EXIT


:invalid_login
COLOR 04
ECHO An incorrect password has been entered!
ECHO Please try again.
PAUSE
GOTO Start

PAUSE