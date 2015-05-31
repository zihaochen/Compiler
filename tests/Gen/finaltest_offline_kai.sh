#!/bin/bash
#please change the $name variable to be your own bitbucket id
#please make sure the compiler could be compiled correctly and finaltermvars.sh is set
#build-answers.sh should be run in the normaldata directory

echo '========== Testing for Compiler2015 by zihaochen =========='
name="zihaochen"
echo $name
CTL=120s #the compiler time limit
PTL=120s #the program time limit

#where are the testcases
InhDir=$(pwd)/Inherited
InhInpDir=${InhDir}/Inherited-InputSet
InhAnsDir=${InhDir}/Inherited-AnswerSet
NewDir=$(pwd)/New
NewInpDir=${NewDir}/New-InputSet
NewAnsDir=${NewDir}/New-AnswerSet

#run command
CCHK="java -classpath /lib/java-cup-11a-runtime.jar:/bin/production/Compiler/compiler/  bin/production/Compiler/compiler.main.Main "

function _TEST()
{
    filec=$1
    filei=$2
    filea=$3
    result=0 #0=AC 1=WA 2=RE 3=CE
	$CCHK <$filec 1>assem.s
    if [ $? -ne 0 ]; then
      result=3
    else  
      if [ -f $filei ]; then
	    spim -stat_file spimstat -file assem.s < $filei 1>spimout 2>quiet
      else
	    spim -stat_file spimstat -file assem.s 1>spimout 2>quiet
      fi
      if [ $? -ne 0 ]; then
        result=2
      else
	    diff --strip-trailing-cr spimout $filea >quiet
        if [ $? -ne 0 ]; then
          result=1
        fi 
      fi
    fi
    report="$filename\t\t"
    if [ $result -eq 0 ]; then
	  num=$(cat spimstat | awk ' { print $1 } ')
      report="${report}Accepted\t$num"
    else
      if [ $result -eq 1 ]; then
        report="${report}Wrong Answer"
      fi
      if [ $result -eq 2 ]; then
        report="${report}Runtime Error"
      fi
      if [ $result -eq 3 ]; then
        report="${report}Compiler Error"
      fi
    fi
    echo -e $report
    echo -e $report>>$reportfile
}

#fetch testdata automatically

reportfile=$(pwd)/${name}_report.txt

echo > $reportfile

for filec in $(ls $InhDir/*.c); do
    filename=$(basename $filec)
    filei=$InhInpDir/${filename%.c}.in
    filea=$InhAnsDir/${filename%.c}.ans
    _TEST $filec $filei $filea
done
for filec in $(ls $NewDir/*.c); do
    filename=$(basename $filec)
    filei=$NewInpDir/${filename%.c}.in
    filea=$NewAnsDir/${filename%.c}.ans
    _TEST $filec $filei $filea
done

echo "========== $name test completed =========="
