#!/bin/bash
make clean 
make xiang
VERSION=$(go run . version)
rm -rf ../xiang-spec/xiang/*
cp  dist/bin/xiang-* ../xiang-spec/xiang/
rm -f ~/Code/bin/xiang
ln -s ~/Code/yao/xiang-spec/xiang/xiang-darwin-amd64 ~/Code/bin/xiang

make clean