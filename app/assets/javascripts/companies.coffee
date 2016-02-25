# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ?= require 'jquery' # For Node.js compatibility

$(document).ready ->
    # Basic Examples
 $.get '/', (data) ->
        $('body').append "Successfully got the page."