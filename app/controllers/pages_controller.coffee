Controller = require 'controllers/base/controller'

views =
  about: require 'views/pages/about_view'

module.exports = class PagesController extends Controller
  about: ->
    @view = new views.about
