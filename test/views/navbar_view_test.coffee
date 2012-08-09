mediator = require 'mediator'
Navbar = require 'models/navbar'
NavbarView = require 'views/navbar_view'

class NavbarViewTest extends NavbarView
  renderTimes: 0

  render: ->
    super
    @renderTimes += 1

describe 'NavbarView', ->
  beforeEach ->
    @model = new Navbar()
    @view = new NavbarViewTest({@model})

  afterEach ->
    @view.dispose()
    @model.dispose()

  it 'should display 2 links', ->
    expect(@view.$el.find 'a').to.have.length 2
