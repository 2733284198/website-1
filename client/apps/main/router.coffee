Backbone = require 'Backbone'
FrontPage = require './views/FrontPage'
ProductPage = require './views/ProductPage'

class Router extends Backbone.Router

  routes:
    'home':                   'index'

    # Product pages
    'quiver':                 'showQuiver'
    'bussg':                  'showBusSG'
    'sgshowtime':             'showSGShowtime'
    'hangman':                'showHangman'
    'muffin':                 'showMuffin'

    # Default action
    '*actions':               'index'

  initialize: -> {}

  index: ->
    p = new FrontPage()
    app.layout.selectTab(null)
    app.layout.showPage(p)


  #
  # Product pages
  #

  showQuiver: ->
    p = new ProductPage({product: 'quiver', category: 'productivity'})
    app.layout.showPage(p)

  showBusSG: ->
    p = new ProductPage({product: 'bussg', category: 'utilities'})
    app.layout.showPage(p)

  showSGShowtime: ->
    p = new ProductPage({product: 'sgshowtime', category: 'utilities'})
    app.layout.showPage(p)

  showHangman: ->
    p = new ProductPage({product: 'hangman', category: 'education'})
    app.layout.showPage(p)

  showMuffin: ->
    p = new ProductPage({product: 'muffin', category: 'opensource'})
    app.layout.showPage(p)

module.exports = Router