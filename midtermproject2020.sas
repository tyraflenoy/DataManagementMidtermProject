libname midterm "/folders/myfolders/DataManagement/midterm";

proc import out=midterm.mid1 
            datafile="/folders/myfolders/DataManagement/midterm/mid1.csv" 
            dbms=csv replace; 
run;

proc import out=midterm.mid2 datafile="/folders/myfolders/DataManagement/midterm/mid2.xlsx" 
		DBMs=xlsx replace;
	datarow=2;
run;

libname mid3 xport "/folders/myfolders/DataManagement/midterm/mid3.xpt"
access=readonly;
proc copy inlib=mid3 outlib=midterm; 
run;