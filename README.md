# Mike's Game Portal

Statically-generated site where I host my game portfolio.

Featuring:
- Coffee
- Stylus
- Jade

## Setup

```bash
# launch a WSL Ubuntu Bash shell
npm install
```

## Compling Coffee
This is supposed to happen automatically with the `connect-coffee-script` module, but if there are errors compiling--or for whatever reason--sometimes it fails by hanging and refusing to serve the .js file indefinitely.

In that case you can just compile yourself.

```bash
cd src/public/behaviors
coffee -bc --no-header global.coffee
```

## Testing

```bash
# launch a WSL Ubuntu Bash shell
npm start
# in Chrome, browse to http://localhost:3000
# make sure the game python web server is listening
# make sure the game server is listening
```

## Publishing

```bash
# launch a WSL Ubuntu Bash shell
npm start
# open `gh-pages` branch in another folder, adjacent to this one
# from that folder:
./publish.sh
# review files, the commit and push to gh-pages
```
