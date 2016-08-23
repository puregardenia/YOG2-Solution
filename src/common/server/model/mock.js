/**
 * mockjsdata Model
 * @return {[promise]} [返回Promise对象]
 * 此对象后跟.then(callback)，callback参数为此model返回的数据
 */
module.exports.getData = function() {

  return yog.ralP('MOCKAPI', {
    method: 'GET',
    path:'/mockjsdata/6671/getUserList'
  });

};