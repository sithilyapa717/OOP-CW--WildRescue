#!/bin/sh
# Compiles and runs the Urban Wildlife Rescue Coordination System (Mac / Linux).

# 1. Make the output folder for compiled .class files.
mkdir -p out

# 2. Compile. -sourcepath src lets javac find every other class that Main uses.
javac -d out -sourcepath src src/wildrescue/Main.java || exit 1

# 3. Run the program.
java -cp out wildrescue.Main
