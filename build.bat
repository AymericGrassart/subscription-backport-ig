rd input output /s/q
call build-vars.cmd
call sushi fsh -o .
copy fsh\ig-data\ig.bak ig.ini
%JAVAEXE% -Xmx2G -jar input-cache/org.hl7.fhir.publisher.jar -ig ig.ini
