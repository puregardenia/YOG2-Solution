var mock = require('../model/mock.js');
var util = require('../lib/util.js');

module.exports = function(req,res){

    // 直接渲染
    mock.getData().then(function(data) {
        res.render('common/page/test.tpl',data);
    });



}