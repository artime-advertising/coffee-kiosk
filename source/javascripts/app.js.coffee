#= require 'jquery/dist/jquery.min.js'
#= require 'fastclick/lib/fastclick'
#= require 'jquery-placeholder/jquery.placeholder'
#= require 'jquery.cookie/jquery.cookie'
#= require 'jquery.scrollTo/jquery.scrollTo'
#= require 'modernizr/modernizr'
#= require 'foundation/js/foundation'
#= require 'jquery-textfill/source/jquery.textfill.js'

#= require_self

$(document).ready ->
  $(document).foundation()


  # This handles pages

  $(".page").first().attr("data-current","true")

  $("#previous-page").hide()
  $("#next-page").hide()
  handlePageControls()

  $(".control#next-page").on 'click', (e) ->
    e.preventDefault()

    unless $("#main-wrapper .page[data-current]").first().is(":last-child")
      $("#main-wrapper .page[data-current]")
        .nextAll(".page").first().attr("data-current","true")
        .parents("#main-wrapper").scrollTo($(".page[data-current]").last(),800)
      $("#main-wrapper .page[data-current]").first().removeAttr("data-current")

    handlePageControls()


  $(".control#previous-page").on 'click', (e) ->
    e.preventDefault()

    unless $("#main-wrapper .page[data-current]").last().is(":first-child")
      $("#main-wrapper .page[data-current]")
        .prevAll(".page").first().attr("data-current","true")
        .parents("#main-wrapper").scrollTo($(".page[data-current]").first(),800)
      $("#main-wrapper .page[data-current]").last().removeAttr("data-current")

    handlePageControls()

  # This handles dynamic title font-size

  $(".articles .dynamic-container").textfill
    innerTag: 'h1'

handlePageControls = ->
  has_next = !$("#main-wrapper .page[data-current]").first().is(":last-child")
  has_previous = !$("#main-wrapper .page[data-current]").last().is(":first-child")

  if has_next
    $("#next-page").fadeIn()
  else
    $("#next-page").fadeOut()

  if has_previous
    $("#previous-page").fadeIn()
  else
    $("#previous-page").fadeOut()
