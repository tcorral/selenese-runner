require('./runner').runWithConfig( {
    suitelist: 'https://raw.github.com/DBC-as/selenese-runner/master/tests/data/testsuites.txt',
    target: 'old-bibdk',
    url: 'http://bibliotek.dk', 
    callback: function(arg) { console.log(arg); }
    });