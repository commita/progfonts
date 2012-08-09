mediator = require 'mediator'
template = require 'views/templates/navbar'
View = require 'views/base/view'

module.exports = class NavbarView extends View
  template: template
  id: 'navbar'
  container: '#navbar-container'
  autoRender: true
