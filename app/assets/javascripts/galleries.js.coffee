# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class GalleryPlayer

	constructor: ->
	  @play_speed = 5000
	  @play = false

  start: ->
    $('#play').addClass('hidden')
    $('#pause').removeClass('hidden')
    @play = true
    setTimeout @play_loop, @play_speed

  stop: ->
    $('#pause').addClass('hidden')
    $('#play').removeClass('hidden')
    @play = false

	play_loop: =>
	  return unless @play
	  $('#next-button').click()
	  setTimeout @play_loop, @play_speed

window.GalleryPlayer = GalleryPlayer

jQuery ->
  window.gallery_player = new GalleryPlayer()

  $('#play-button').on 'click', -> 
    gallery_player.start()

  $('#pause-button').on 'click', -> 
    gallery_player.stop()