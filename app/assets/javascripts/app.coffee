$.ajaxSetup({
  dataType: 'json'
})

$(document).on "turbolinks:load turbolinks:fetch ready", ()->
  componentHandler.upgradeDom()
  console.log('cambie')

  $('#login-button').on "click", ()->
    $('#login-row-header').addClass "login-activo"
    $('.current-row').css('opacity', '0')
  $('#close-login').on "click", ()->
    $('#login-row-header').removeClass "login-activo"
    $('.current-row').css('opacity', '1')

$(document).on "ajax:beforeSend", "#login-form", (e, data, status, xhr) ->
  #console.log(data)
  #window.location.root
$(document).on "ajax:success", "#login-form", (e, data, status, xhr) ->
  #console.log xhr
  console.log data
  #url= xhr.responseJSON.data.message
  url = data.data.message

  if url.minning_society_name
    $("#error_sociedad").html("<p class='error_form'>#{url.minning_society_name}</p>")
  else
    $("#error_sociedad").html("<p class='blank'></p>")

  if url.minning_society_rut
    $("#error_rut-sociedad").html("<p class='error_form'>#{url.minning_society_rut}</p>")
  else
    $("#error_rut-sociedad").html("<p class='blank'></p>")

  if url.first_name
    $("#error_nombre").html("<p class='error_form'>#{url.first_name}</p>")
  else
    $("#error_nombre").html("<p class='blank'></p>")

  if url.last_name
    $("#error_apellido-p").html("<p class='error_form'>#{url.last_name}</p>")
  else
    $("#error_apellido-p").html("<p class='blank'></p>")

  if url.surname
    $("#error_apellido-m").html("<p class='error_form'>#{url.surname}</p>")
  else
    $("#error_apellido-m").html("<p class='blank'></p>")

  if url.rut
    $("#error_rut").html("<p class='error_form'>#{url.rut}</p>")
  else
    $("#error_rut").html("<p class='blank'></p>")

  if url.birthdate
    $("#error_fecha-nacimiento").html("<p class='error_form'>#{url.birthdate}</p>")
  else
    $("#error_fecha-nacimiento").html("<p class='blank'></p>")

  if url.gender_id
    $("#error_genero").html("<p class='error_form'>#{url.gender_id}</p>")
  else
    $("#error_genero").html("<p class='blank'></p>")

  if url.civil_status_id
    $("#error_estado-civil").html("<p class='error_form'>#{url.civil_status_id}</p>")
  else
    $("#error_estado-civil").html("<p class='blank'></p>")

  if url.address
    $("#error_direccion").html("<p class='error_form'>#{url.address}</p>")
  else
    $("#error_direccion").html("<p class='blank'></p>")

  if url.village
    $("#error_villa").html("<p class='error_form'>#{url.village}</p>")
  else
    $("#error_villa").html("<p class='blank'></p>")

  if url.mobile
    $("#error_telefono-cel").html("<p class='error_form'>#{url.mobile}</p>")
  else
    $("#error_telefono-cel").html("<p class='blank'></p>")

  if url.landline
    $("#error_telefono-fijo").html("<p class='error_form'>#{url.landline}</p>")
  else
    $("#error_telefono-fijo").html("<p class='blank'></p>")

  if url.region_id
    $("#error_region").html("<p class='error_form'>#{url.region_id}</p>")
  else
    $("#error_region").html("<p class='blank'></p>")

  if url.province_id
    $("#error_provincia").html("<p class='error_form'>#{url.province_id}</p>")
  else
    $("#error_provincia").html("<p class='blank'></p>")

  if url.commune_id
    $("#error_comuna").html("<p class='error_form'>#{url.commune_id}</p>")
  else
    $("#error_comuna").html("<p class='blank'></p>")
  # mail y pass
  if url.email
    $("#error_email").html("<p class='error_form'>#{url.email}</p>")
  else
    $("#error_email").html("<p class='blank'></p>")
  if url.password
    $("#error_password").html("<p class='error_form'>#{url.password}</p>")
  else
    $("#error_password").html("<p class='blank'></p>")
  if url.password_confirmation
    $("#error_password-confirm").html("<p class='error_form'>#{url.password_confirmation}</p>")
  else
    $("#error_password-confirm").html("<p class='blank'></p>")

  if data.success == true
    console.log "paso"
    window.location.reload()



$(document).on "ajax:error", "#login-form", (e, data, status, xhr) ->
  #console.log e

