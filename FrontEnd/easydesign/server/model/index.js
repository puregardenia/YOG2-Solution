var yog = require('yog2-kernel');

module.exports.getData = function(id,reqParam) {
  return yog.ralP('DEMO_SERVICE', {
    method: 'GET',
    // path:'/mockjs/1/index/banner'
    path:'/mockjs/6278/index/banner'
  });
};