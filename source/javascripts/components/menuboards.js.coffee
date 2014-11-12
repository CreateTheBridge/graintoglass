items = null
itemCount = 0
itemsPerPage = 8
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
    if item.prop || ''
    $elem = $("#template").clone()
    $elem.find(".beer-name").append '<span>' + item.beer.beer_name + '</span>'
    $elem.find(".beer-company-name").append '<span>' + item.brewery.name + '</span>'
    $elem.find(".beer-price").append '<span>' + item.serving_info.sized_pricing[0].price  + ' / ' + item.serving_info.sized_pricing[1].price + '</span>'
    $elem.find(".beer-style").append '<span>' + item.beer.style + '</span>'
    $elem.find(".beer-abv").append '<span>' + 'ABV ' + item.beer.abv + '</span>'
    $elem.find(".beer-ibu").append '<span>' + 'IBU ' + item.beer.ibu + '</span>'
    $elem.find(".brew-location").append '<span>' + item.brewery.origin + '</span>'
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
  if (clickCount == itemPages)
    console.log 'done'
    clickCount = null
    $('#pagination').pagination 'selectPage', 1
  else
    $('#pagination').find('.next').click()


$(document).ready ->
  preloadImages()
  $.get "tap-hunter.php", (data) ->
    console.log data
    setupPagination data
  setInterval timerZ, 3000