module.exports = {
  mode: 'development'
  target: 'node'

  entry: [
    './src/module.coffee'
  ]

  output: {
    path: __dirname
    filename: 'dist.js'
    libraryTarget: 'commonjs'
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
    extensions: [
      '.js'
      '.coffee'
    ]
  }
}

