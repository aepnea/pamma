$(document).on "turbolinks:load turbolinks:fetch turbolinks:change ready", (ev)->
  #componentHandler.upgradeDom()
  #console.log ev
  $(".best_in_place").best_in_place()

  $('#login-button').on "click", ()->
    $('#login-row-header').addClass "login-activo"
    $('.current-row').css('opacity', '0')
  $('#close-login').on "click", ()->
    $('#login-row-header').removeClass "login-activo"
    $('.current-row').css('opacity', '1')

  # focus_indicator = ($el)->
  #   $el.addClass("active")

  # $(".path-step").on "click",(ev)->
  #   position = $(this).data("position")+1
  #   focus_indicator($(".step#{position}"))
  #   $(".step.active").removeClass("active")
  #   $(".step#{position}").addClass("active")

  # $(".back-step").on "click",(ev)->
  #   position = $(this).data("position")
  #   focus_indicator($(".step#{position}"))
  #   $(".step.active").removeClass("active")
  #   $(".step#{position}").addClass("active")
  #   console.log position

  # datepicker
  $('.datepicker').datepicker
    dateFormat: 'yy-mm-dd',
    changeYear: true,
    yearRange: "-50:+0"

  provincia = $('#asociative_user_province_id').html()
  comuna = $('#asociative_user_commune_id').html()
  #console.log comuna
  $('#asociative_user_region_id').change ->
    region = $('#asociative_user_region_id :selected').text()
    options = $(provincia).filter("optgroup[label='#{region}']").html()
    provincia_2 = $('#asociative_user_province_id :selected').text()
    other_options = $(comuna).filter("optgroup[label='#{provincia_2}']").html()
    if options
      $('#asociative_user_province_id').html(options)
      $('#asociative_user_commune_id').html(other_options)
      console.log provincia_2
    else
      $('#asociative_user_province_id').empty()

  $('#asociative_user_province_id').change ->
    provincia_2 = $('#asociative_user_province_id :selected').text()
    other_options = $(comuna).filter("optgroup[label='#{provincia_2}']").html()
    if other_options
      $('#asociative_user_commune_id').html(other_options)
      console.log "cof"
    else
      $('#asociative_user_commune_id').empty()
      console.log "wof"


  $(document).on "ajax:beforeSend", "#login-form", (e, data, status, xhr) ->
    #console.log data
  $(document).on "ajax:success", "#login-form", (e, data, status, xhr) ->
    console.log data
  $(document).on "ajax:error", "#login-form", (e, data, status, xhr) ->
    console.log data
