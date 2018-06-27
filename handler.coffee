_ = require('wegweg')({
  globals: on
})

##
module.exports = handler = {}

json = (obj) -> {
  statusCode: 200
  body: JSON.stringify(obj)
}

handler.ping = (event,context,cb) ->
  return cb null, json(pong:_.uuid())

