echo off
rem jre.exe should be in your path and -cp should be set to the location of idl2pas.jar.
rem -mxNumber is the max heap size. This can be increased if the jvm runs out of heap.
echo on
java -mx40000000 -cp "C:\Program Files (x86)\Borland\Delphi7\Bin\idl2pas.jar" com.inprise.vbroker.compiler.tools.idl2pas %1 %2 %3 %4 %5 %6 %7 %8 %9
