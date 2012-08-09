Model = require 'models/base/model'

module.exports = class Navbar extends Model
  defaults:
    items: [
      {href: '/', title: 'Home'},
      {href: '/about', title: 'About'},
    ]
