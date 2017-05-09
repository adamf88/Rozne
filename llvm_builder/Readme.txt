
LLVM Code Coverage

Generowanie kodu IR:
clang++ -cc1 -triple x86_64-unknown-linux -emit-obj -fprofile-instrument=clang -fcoverage-mapping -emit-llvm B.cpp
