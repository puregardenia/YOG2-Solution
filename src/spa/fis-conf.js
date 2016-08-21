fis.config.set('namespace', 'spa');


fis.media('debug').match('*', {
    useHash: false,
    useSprite: false,
    optimizer: null,
    deploy: fis.plugin('http-push', {
        receiver: 'http://127.0.0.1:8085/yog/upload',
        to: '/'
    })
});