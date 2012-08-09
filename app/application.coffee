mediator = require 'mediator'
routes = require 'routes'
Chaplin = require 'chaplin'
NavbarController = require 'controllers/navbar_controller'
Layout = require 'views/layout'

module.exports = class Application extends Chaplin.Application
  title: 'Programming Fonts'

  initialize: ->
    super
    # Initialize core components
    @initDispatcher()
    @initLayout()
    @initMediator()
    # Application-specific scaffold
    @initControllers()
    # Register all routes and start routing
    @initRouter routes
    # Freeze the application instance to prevent further changes
    Object.freeze? this

  # Override standard layout initializer
  # ------------------------------------
  initLayout: ->
    # Use an application-specific Layout class. Currently this adds
    # no features to the standard Chaplin Layout, it’s an empty placeholder.
    @layout = new Layout {@title}

  # Instantiate common controllers
  # ------------------------------
  initControllers: ->
    new NavbarController()

  # Create additional mediator properties
  # -------------------------------------
  initMediator: ->
    # Seal the mediator
    Chaplin.mediator.seal()
