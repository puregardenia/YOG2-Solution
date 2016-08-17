var index = require('../model/index');
var util = require('../lib/util.js');

module.exports = function(req, res){
    var temp = index.getData();
    res.send(temp);
    // res.render('easydesign/page/index.tpl');
};