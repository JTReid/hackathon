const ReactRefreshWebpackPlugin = require('@pmmmwh/react-refresh-webpack-plugin');
const environment = require('./environment');

process.env.NODE_ENV = process.env.NODE_ENV || 'development';

const isDevelopment = process.env.NODE_ENV !== 'production';

environment.plugins.prepend(
  'ReactRefreshWebpackPlugin',
  new ReactRefreshWebpackPlugin()
);

environment.config.merge({ devtool: 'source-map' });

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
