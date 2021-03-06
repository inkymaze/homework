var path = require('path');

module.exports = {
  context: __dirname,
 entry: "./app.jsx",
 output: {
   path: path.resolve(__dirname),
   filename: "bundle.js"
 },
  module: {
    loaders: [
      {
        test: [/\.jsx?$/, /\.js?$/],
        exclude: /(node_modules)/,
        loader: 'babel',
        query: {
          presets: ['es2015', 'react']
        }
      }
    ]
  },
  devtool: 'source-map',
  resolve: {
    extensions: ["", ".js", ".jsx" ]
  }
};
