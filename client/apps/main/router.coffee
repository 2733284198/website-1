Backbone = require 'Backbone'
FrontPage = require './views/FrontPage'
ProductPage = require './views/ProductPage'

class Router extends Backbone.Router

  routes:
    'home':                   'index'

    # Category pages
    'productivity':           'showProductivity'
    'utilities':              'showUtilities'
    'education':              'showEducation'
    'game':                   'showGame'
    'opensource':             'showOpenSource'

    # Product pages
    'quiver':                 'showQuiver'
    'hangman':                'showHangman'

    # Default action
    '*actions':               'index'

  initialize: -> {}

  index: ->
    p = new FrontPage()
    app.layout.selectTab(null)
    app.layout.showPage(p)


  #
  # Categories
  #

  showProductivity: ->
    p = new ProductPage()
    app.layout.selectTab('productivity')
    app.layout.showPage(p)

  showUtilities: ->
    p = new ProductPage()
    app.layout.selectTab('utilities')
    app.layout.showPage(p)

  showEducation: ->
    p = new ProductPage()
    app.layout.selectTab('education')
    app.layout.showPage(p)

  showGame: ->
    p = new ProductPage()
    app.layout.selectTab('game')
    app.layout.showPage(p)

  showOpenSource: ->
    p = new ProductPage()
    app.layout.selectTab('opensource')
    app.layout.showPage(p)


  #
  # Product pages
  #

  showQuiver: ->
    p = new ProductPage()
    app.layout.selectTab('productivity')
    app.layout.showPage(p)

  showHangman: ->
    p = new ProductPage()
    app.layout.selectTab('education')
    app.layout.showPage(p)

module.exports = Router
