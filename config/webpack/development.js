const ErrorOverlayPlugin = require('error-overlay-webpack-plugin');

process.env.NODE_ENV = process.env.NODE_ENV || 'development';

const environment = require('./environment');

environment.plugins.prepend('ErrorOverlayPlugin', new ErrorOverlayPlugin());

environment.config.merge({ devtool: 'cheap-module-source-map' });

module.exports = environment.toWebpackConfig();
