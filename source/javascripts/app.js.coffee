#= require 'jquery/dist/jquery.min.js'
#= require 'fastclick/lib/fastclick'
#= require 'jquery-placeholder/jquery.placeholder'
#= require 'jquery.cookie/jquery.cookie'
#= require 'jquery.scrollTo/jquery.scrollTo'
#= require 'modernizr/modernizr'
#= require 'foundation/js/foundation'

#= require_self

$(document).ready ->
  $(document).foundation()

  $(".control#next-page").on 'click', (e) ->
    e.preventDefault()
    $("#main-wrapper").scrollTo( {top:'+=815px', left:'+=0'}, 800 );

  $(".control#previous-page").on 'click', (e) ->
    e.preventDefault()
    $("#main-wrapper").scrollTo( {top:'-=815px', left:'+=0'}, 800 );
