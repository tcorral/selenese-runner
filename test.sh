# Make sure that we have a running selenium-server
echo 'exit' | nc localhost 4444 || ./start-selenium.sh

export NODE_PATH=lib
node tests/internaltest.js || exit 1
node tests/test1.js
test $? -eq 0 || exit 1
node tests/test2.js 
test $? -eq 4 || exit 1
node tests/test3.js 
test $? -eq 4 || exit 1
echo test ok
exit 0
