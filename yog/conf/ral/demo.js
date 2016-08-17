/**
 * @file 后端服务配置DEMO
 * @author fis@baidu.com
 */

module.exports = {
  'DEMO_SERVICE': {
      unpack: 'json',
      pack: 'form',
      method: 'GET',
      encoding: 'utf-8',
      balance: 'random',
      protocol: 'http',
      retry: 2,
      timeout: 500,
      server: [
          { host: 'rap.taobao.org', port: 80}
      ]
  }
};
