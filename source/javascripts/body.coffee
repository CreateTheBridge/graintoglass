#= require modernizr
#= require jquery
#= require_directory ./components

items = null
itemCount = 0
itemsPerPage = 3
itemPages = 0
clickCount = null
glassImages =
#  tulip: "tulip.png"
#  snifter: "snifter.png"
#  pint: "pint.png"
#  growler: "growler.png"

preloadImages = ->
  for k of glassImages
    img = new Image()
    img.src = glassImages[k]

setupList = (pageNumber) ->
  start = itemsPerPage * (pageNumber - 1)
  end = start + itemsPerPage
  end = (if ((items.length - 1) < end) then (items.length - 1) else end)
  paginatedItems = items.slice(start, end)
  $("#beer-list").empty()
  $.each paginatedItems, (i, item) ->
    $elem = $("#template").clone()
    $elem.find(".beer-name").text item.beer.name
    $elem.find(".beer-company-name").text item.brewery.name
    $elem.find(".beer-price").text item.serving_info.price
    $elem.find(".beer-style").text item.beer.style
    $elem.find(".beer-abv").text item.beer.abv
    $elem.find(".beer-ibu").text item.beer.ibu
    size = item.serving_info.size.toLowerCase()
    image = glassImages[size]
    $elem.find(".beer-glass-image").attr "src", image
    $elem.removeAttr "id"
    $("#beer-list").append $elem
    return

setupPagination = (data) ->
  itemCount = data.length
  items = data
  setupList 1, data
  itemPages = Math.ceil( itemCount / itemsPerPage )
  console.log itemPages
  $("#pagination").pagination
    items: itemCount
    itemsOnPage: itemsPerPage
    cssStyle: "light-theme"
    onPageClick: (pageNumber) ->
      setupList pageNumber
      return
timerZ = () ->
  clickCount++
  console.log 'timerz fired'
  console.log clickCount
  console.log itemPages
  $('#pagination').find('.next').click()
#  if clickCount == itemPages
#    console.log 'done'
#    clickCount = null
#  else
#    $('#pagination').find('.next').click()


$(document).ready ->
  preloadImages()
  $.get "tap-hunter.php", (data) ->
    console.log data
    setupPagination data
  setInterval timerZ, 3000