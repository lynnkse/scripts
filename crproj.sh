#!/bit/bash

echo "Creating CMake project $1"

mkdir $2/$1
mkdir $2/$1/dlls
mkdir $2/$1/src
mkdir $2/$1/inc
mkdir $2/$1/libssrc
mkdir $2/$1/bin

echo "cmake_minimum_required(VERSION 3.5.1)" > $2/$1/CMakeLists.txt
echo "" >> $2/$1/CMakeLists.txt
echo "project($1)" >> $2/$1/CMakeLists.txt 
echo "" >> $2/$1/CMakeLists.txt
echo "include_directories(${PROJECT_SOURCE_DIR}/inc)" >> $2/$1/CMakeLists.txt
echo "" >> $2/$1/CMakeLists.txt
echo "add_subdirectory(src)" >> $2/$1/CMakeLists.txt
echo "add_subdirectory(libssrc)" >> $2/$1/CMakeLists.txt

git init $2/$1
git config --global user.name Lynnkse
git config --global user.email lynnkse@gmail.com

echo "CMakeCache.txt" > $2/$1/.gitignore
echo "*~" >> $2/$1/.gitignore
echo "CMakeFiles*" >> $2/$1/.gitignore
echo "*.cmake"  >> $2/$1/.gitignore
echo "*Makefile" >> $2/$1/.gitignore
echo "src/main/main"  >> $2/$1/.gitignore
echo "*#*" >> $2/$1/.gitignore

