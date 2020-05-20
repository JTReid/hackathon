const ErrorOverlayPlugin = require('error-overlay-webpack-plugin');
const ReactRefreshWebpackPlugin = require('@pmmmwh/react-refresh-webpack-plugin');

process.env.NODE_ENV = process.env.NODE_ENV || 'development';

const isDevelopment = process.env.NODE_ENV !== 'production';

const environment = require('./environment');

environment.plugins.prepend('ErrorOverlayPlugin', new ErrorOverlayPlugin());
environment.plugins.prepend(
  'ReactRefreshWebpackPlugin',
  new ReactRefreshWebpackPlugin()
);

environment.config.merge({ devtool: 'cheap-module-source-map' });

environment.module = {
  rules: [
    {
      test: /\.jsx?$/,
      exclude: /node_modules/,
      use: [
        {
          loader: require.resolve('babel-loader'),
          options: {
            plugins: [
              isDevelopment && require.resolve('react-refresh/babel'),
            ].filter(Boolean),
          },
        },
      ],
    },
  ],
};

module.exports = environment.toWebpackConfig();
