module.exports = {
  target: 'node'
  output: {
    filename: 'dist.js'
    path: __dirname
  }
  module: {
    rules: [
      {
        test: /\.coffee$/
        use: [
          {
            loader: 'babel-loader'
            options: {
              presets: ['env']
            }
          }
          'coffee-loader'
        ]
        exclude: /node_modules/
      }
    ]
  }
  resolve: {
    extensions: [".coffee",".js"]
  }
}

