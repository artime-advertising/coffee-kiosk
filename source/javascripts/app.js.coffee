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

  $(".page").first().attr("data-current","true")

  $(".control#next-page").on 'click', (e) ->
    e.preventDefault()

    unless $("#main-wrapper .page[data-current]").first().is(":last-child")
      $("#main-wrapper .page[data-current]")
        .nextAll(".page").first().attr("data-current","true")
        .parents("#main-wrapper").scrollTo($(".page[data-current]").last(),800)
      $("#main-wrapper .page[data-current]").first().removeAttr("data-current")

  $(".control#previous-page").on 'click', (e) ->
    e.preventDefault()

    unless $("#main-wrapper .page[data-current]").last().is(":first-child")
      $("#main-wrapper .page[data-current]")
        .prevAll(".page").first().attr("data-current","true")
        .parents("#main-wrapper").scrollTo($(".page[data-current]").first(),800)
      $("#main-wrapper .page[data-current]").last().removeAttr("data-current")
