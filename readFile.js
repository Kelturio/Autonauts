'use strict';

const fs = require('fs')
//let source = 'sandbox'
let source = 'Werner009'

let rawdata = fs.readFileSync(__dirname + '\\Saves\\' + source + '\\World.txt')
let savegame = JSON.parse(rawdata)
global.akk = {}
global.akk.savegame = savegame

console.log('hallo werner!')
console.log(__dirname)
console.log(akk)

timeout()

function timeout() {
	setTimeout(timeout, 100)
}
