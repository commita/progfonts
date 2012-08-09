mediator = require 'mediator'
Controller = require 'controllers/base/controller'
Navbar = require 'models/navbar'
NavbarView = require 'views/navbar_view'

module.exports = class NavbarController extends Controller
  initialize: ->
    super
    @model = new Navbar()
    @view = new NavbarView({@model})
