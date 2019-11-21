module.exports = {
    module: {
        loaders: [
            { test: /\.js/, loader: 'imports?define=>false'}
        ]
    }
};