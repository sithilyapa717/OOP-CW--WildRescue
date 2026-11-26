@echo off
REM Compiles and runs the Urban Wildlife Rescue Coordination System (Windows).

REM 1. Make the output folder for compiled .class files if it does not exist.
if not exist out mkdir out

REM 2. Compile. -sourcepath src lets javac find every other class that Main uses.
javac -d out -sourcepath src src\wildrescue\Main.java
if errorlevel 1 (
    echo Compilation failed.
    pause
    exit /b 1
)

REM 3. Run the program.
java -cp out wildrescue.Main
pause
