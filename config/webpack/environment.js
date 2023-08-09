const { environment } = require('@rails/webpacker')

environment.loaders.get('babel').use.find(item => item.loader === 'babel-loader').options = {
  plugins: [
    // ここに必要なBabelプラグインを追加する
    '@babel/plugin-proposal-private-methods',
    // 他のプラグインも追加できる
  ],
};

module.exports = environment
