Controller = require 'controllers/base/controller'
HomePageView = require 'views/pages/home_view'

module.exports = class HomeController extends Controller
  historyURL: 'home'

  index: ->
    @view = new HomePageView()
