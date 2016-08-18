var index = require('../model/index.js');
var util = require('../lib/util.js');

module.exports = function(req,res){
    index.getData().then(function(data) {
        res.render('easydesign/page/test.tpl',data);
    });
}