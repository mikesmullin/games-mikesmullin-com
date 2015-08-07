require 'sugar'
express = require 'express'
jade    = require 'jade'
stylus  = require 'stylus'
nib     = require 'nib'
path    = require 'path'

app = express()
app.use require('morgan')('combined')
app.use require('body-parser').urlencoded extended: false
app.disable 'x-powered-by'

app.config = require path.join __dirname, '..', 'config.json'
app.PORT   = app.config.port
app.APP    = path.join __dirname, path.sep
app.VIEWS  = path.join app.APP, 'views', path.sep
app.PUBLIC = path.join app.APP, 'public', path.sep
app.DBDATA = path.join app.APP, '..', 'db', 'data', path.sep

die = (reason) -> process.stderr.write "#{reason}\n"; process.exit 1
log = (msg) -> console.log msg

# Views

app.set 'views', app.VIEWS
app.set 'view engine', 'jade'
app.locals.pretty = true
app.use stylus.middleware src: path.join(app.PUBLIC), compile: (str, path) ->
  stylus(str).set('filename', path).use nib()

app.use require('connect-coffee-script')
  src: path.join app.PUBLIC
  dest: path.join app.PUBLIC
  bare: true
  force: true

app.use express.static app.PUBLIC # static file server

# Controller

app.get '/', (req, res) ->
  res.render 'home'

app.get '/login.html', (req, res) ->
  res.render 'login'
  
app.get '/register.html', (req, res) ->
  res.render 'register'
  
app.get '/hidenseek.html', (req, res) ->
  res.render 'games/hidenseek'
  
app.get '/market.html', (req, res) ->
  res.render 'games/market'

app.get '/prophunt.html', (req, res) ->
  res.render 'games/prophunt'
  
app.get '/golf-cartte.html', (req, res) ->
  res.render 'games/golf-cartte'
  
app.get '/mazehunt.html', (req, res) ->
  res.render 'games/mazehunt'
  
app.get '/pupu-panic.html', (req, res) ->
  res.render 'games/pupu-panic'
      
# Server
http = app.listen app.PORT, '0.0.0.0', ->
  log 'Listening on '+ JSON.stringify http.address()
