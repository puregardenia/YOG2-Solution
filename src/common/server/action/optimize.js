var mock = require('../model/mock.js');
var util = require('../lib/util.js');


// bigpipe 优化 Demo
module.exports.bigpipe = function(req, res){

    /**
     * bigPipe Demo1
     */
    res.bigpipe.bind('bigpipe', function(cb){
        //////////////// 测试 ///////////////
        //var data;
        //mock.getData().then(function(d) {
        //    data = d;
        //});
        //setTimeout(function(){
        //    cb(null, data);
        //}, 5000);
        ////////////////////////////////////

        mock.getData().then(function(data) {
            cb(null, data);
        });
    });

    /**
     * bigPipe Demo2
     */
    //var data;
    //res.bigpipe.bind('bigpipe', function(){
    //    return mock.getData();
    //});


    // 渲染模板
    res.render('common/page/bigpipe.tpl');
};

// quickling 优化 Demo
module.exports.quickling = function(req, res){

    mock.getData().then(function(data) {
        res.render('common/page/quickling.tpl',data);
    });
};


/**
 * 常用路由设置
 */
// module.exports = function(req, res){
//     res.send('book index');
// };

// module.exports.get = function(req, res, next){
//     res.send('get book ' + req.params.id);
// };

// module.exports.post = function(req, res, next){
//     next(new Error('not implemented'));
// };

// module.exports.put = function(req, res, next){
//     res.send('put book');
// };

// module.exports.delete = function(req, res, next){
//     res.send('delete book ' + req.params.id);
// };