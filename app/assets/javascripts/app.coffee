$(document).on "turbolinks:load turbolinks:fetch ready", ()->
  componentHandler.upgradeDom()
  console.log('cambie')