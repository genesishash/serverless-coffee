log = (x...) -> try console.log x...
log '`helo`', new Date

express = require 'express'

app = express()
app.disable 'x-powered-by'
app.use(require('compression')())

# ping
app.get '/', (req,res,next) ->
  return res.json(pong:new Date)

# call error
app.get '/err', (req,res,next) ->
  return next new Error 'Manual error'

# handle error
app.use (err,req,res,next) ->
  return res.json(error:err.toString().substr(7))

if process.env.LOCAL
  module.exports = app
else
  module.exports.handler = (require 'serverless-http')(app)

