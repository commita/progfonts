Navbar = require 'models/navbar'

describe 'Navbar', ->
  beforeEach ->
    @model = new Navbar()

  afterEach ->
    @model.dispose()

  it 'should contain 2 items', ->
    expect(@model.get 'items').to.have.length 2

