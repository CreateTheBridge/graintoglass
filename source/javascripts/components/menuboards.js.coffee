items = null
itemCount = 0
itemsPerPage = 8
itemPages = 0
clickCount = null
glassImages =
  tulip: "images/tulip.png"
  snifter: "images/snifter.png"
  pint: "images/pint.png"
  growler: "images/growler.png"

preloadImages = ->
  for k of glassImages
    img = new Image()
    img.src = glassImages[k]

setupList = (pageNumber) ->
  start = itemsPerPage * (pageNumber - 1)
  end = start + itemsPerPage
  end = (if ((items.length - 1) < end) then (items.length - 1) else end)
  items.sort (a, b) ->
    tap_1 = -1
    tap_2 = -1

    tap_1 = parseInt(a.serving_info.tap_number) unless a.serving_info.tap_number is undefined
    tap_2 = parseInt(b.serving_info.tap_number) unless b.serving_info.tap_number is undefined

    console?.log 'Sorting with [%s, %s]', tap_1, tap_2

    return tap_1 - tap_2



  paginatedItems = items.slice(start, end)


  $("#beer-list").empty()
  $.each paginatedItems, (i, item) ->
    $elem = $("#template").clone()
    $elem.find('.tap-number').append '<span>' + item.serving_info.tap_number || '' + '</span>'
    $elem.find(".beer-name").append '<span>' + item.beer.beer_name + '</span>'
    $elem.find(".beer-company-name").append '<span>' + item.brewery.name + '</span>'

    prices = []
    for price in item.serving_info.sized_pricing
      prices.push price.price

    price = prices.join ' / '
    price = price.replace(' / ', ' ') if price.indexOf('/') == 1

    $elem.find(".beer-price").append '<span>' + price + '</span>'
    $elem.find(".beer-style").append '<span>' + item.beer.style + '</span>'
    $elem.find(".beer-abv").append '<span>' + 'ABV ' + item.beer.abv + '</span>'
    $elem.find(".beer-ibu").append '<span>' + 'IBU ' + item.beer.ibu + '</span>'
    $elem.find(".brew-location").append '<span>' + item.brewery.origin + '</span>'
    size = item.serving_info.size.toLowerCase()
    image = glassImages[size]
#   $elem.find(".beer-glass-image").attr "src", image


    for size in item.serving_info.sized_pricing
      if size.size == 'Pint'
        $elem.find(".pint-glass-image").attr "src", 'images/pint.png'
      else if size.size == '64 oz Growler'
        $elem.find(".growler-glass-image").attr "src", 'images/growler.png'

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
#  setInterval timerZ, 3000