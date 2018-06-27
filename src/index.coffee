log = (x...) -> try console.log x...
log '`helo`', new Date

express = require 'express'
serverless = require 'serverless-http'

app = express()

app.get '/', (req,res,next) ->
  return res.json(pong:new Date)

app.get '/err', (req,res,next) ->
  return next new Error 'Manual error'

app.use (err,req,res) ->
  return res.json(error:err)

##
module.exports.handler = (require 'serverless-http')(app)

