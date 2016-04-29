#= require numeral

too_old_day_count = 3

beer_colors =
  'Lite American Lager': '#d3d25f'
  'Standard American Lager': '#e7e679'
  'Premium American Lager': '#d3d25f'
  'Munich Helles': '#e7e679'
  'Dortmunder Export': '#d3d25f'
  'German Pilsner': '#e3ce5b'
  'Bohemian Pilsener': '#d5c35d'
  'Classic American Pilsner': '#e3ce5b'
  'Vienna Lager': '#e78842'
  'Oktoberfest': '#e78842'
  'Dark American Lager': '#4c2a11'
  'Munich Dunkel': '#47240b'
  'Schwarzbier': '#4c2a11'
  'Maibock/Helles Bock': '#352307'
  'Traditional Bock': '#2b1c03'
  'Doppelbock': '#352307'
  'Eisbock': '#2b1c03'
  'Cream Ale': '#deb779'
  'Blonde Ale': '#ecb55d'
  'Kolsch': '#ecb55d'
  'American Wheat or Rye Beer': '#deb779'
  'Northern German Altbier': '#5a3e12'
  'California Common Beer': '#715426'
  'Dusseldorf Altbier': '#5a3e12'
  'Standard/Ordinary Bitter': '#a45321'
  'Special/Best/Premium Bitter': '#c3530f'
  'Extra Special/Strong Bitter': '#a45321'
  'Scottish Light 60': '#602e0f'
  'Scottish Heavy 70': '#602e0f'
  'Scottish Export 80': '#602e0f'
  'Irish Red Ale': '#9f3218'
  'Strong Scotch Ale': '#602e0f'
  'American Pale Ale': '#aa4e11'
  'American Amber Ale': '#97582e'
  'American Brown Ale': '#50280e'
  'American Black Ale (Black IPA)': '#2a180d'
  'American Red Ale': '#7f260e'
  'Mild': '#3f1307'
  'Southern English Brown': '#3f1307'
  'Northern English Brown': '#33130a'
  'Brown Porter': '#200e0a'
  'Robust Porter': '#1c0c08'
  'Baltic Porter': '#120704'
  'Dry Stout': '#170901'
  'Sweet Stout': '#170901'
  'Oatmeal Stout': '#170901'
  'Foreign Stout': '#170901'
  'American Stout': '#170901'
  'Russian Imperial Stout': '#130801'
  'Imperial Stout': '#130801'
  'English IPA': '#a85b22'
  'American IPA': '#9d4f16'
  'Imperial IPA': '#b5550e'
  'Belgian IPA': '#b5550e'
  'Triple IPA': '#a54b08'
  'Weizen/Weissbier': '#70470b'
  'Dunkelweizen': '#4b3311'
  'Weizenbock': '#70470b'
  'Roggenbier': '#70470b'
  'Witbier': '#70470b'
  'Belgian Pale Ale': '#c08e2d'
  'Saison': '#cc9e46'
  'Biere de Garde': '#cc9e46'
  'Belgian Specialty Ale': '#be7724'
  'Berliner Weisse': '#be7724'
  'Flanders Red Ale': '#be5724'
  'Flanders Brown Ale/Oud Bruin': '#5e2d15'
  'Straight (Unblended) Lambic': '#5e2d15'
  'Gueuze': '#5e2d15'
  'Fruit Lambic': '#542111'
  'Gose': '#be5724'
  'Wild Ale': '#be5724'
  'Belgian Blond Ale': '#d3c262'
  'Belgian Dubbel': '#8e5d1c'
  'Belgian Tripel': '#714308'
  'Belgian Golden Strong Ale': '#5b3b12'
  'Belgian Dark Strong Ale': '#322412'
  'Abt/Quadrupel': '#512103'
  'Old Ale': '#874617'
  'English Barleywine': '#bd7f3d'
  'American Barleywine': '#9b580f'
  'American Strong Ale': '#653b0e'
  'Fruit Beer': '#807334'
  'Spice, Herb, or Vegetable Beer': '#452711'
  'Christmas/Winter Specialty Spiced Beer': '#2e1909'
  'Classic Rauchbier': '#3e1e07'
  'Other Smoked Beer': '#291304'
  'Wood-Aged Beer': '#492409'
  'Specialty Beer': '#53390b'
  'Dry Mead': '#7f6639'
  'Semi-Sweet Mead': '#7f5814'
  'Sweet Mead': '#a16d12'
  'Cyser': '#7f6639'
  'Pyment': '#7f5814'
  'Other Fruit Melomel': '#a16d12'
  'Metheglin': '#7f6639'
  'Braggot': '#7f5814'
  'Common Cider': '#be8523'
  'English Cider': '#a46e0fq'
  'French Cider': '#896018'
  'Common Perry': '#6c4708'
  'Traditional Perry': '#8d6e38'
  'New England Cider': '#bca227'
  'Fruit Cider': '#7f5814'
  'Applewine': '#53390b'
  'Other Specialty Cider/Perry': '#53390b'
  'Flemish-style Amber Ale': '#b44a29'
  'Märzen': '#b98a1b'
  'American Amber/Red Ale': '#a02e0f'
  'Barrel Aged Belgian Strong Pale Ale': '#cab333'
  'American Pale Wheat Ale': '#c49123'
  'Chili Beer': '#b85d0c'
  'Dry-hopped Saison': '#cab333'
  'Hoppy Wheat Ale': '#c49123'
  'Russian Imperial Stout Aged in Bourbon Barrels': '#090400'
  'English Porter': '#130801'
  'Double IPA': '#b45e19'
  'Golden Ale': '#f8dd8b'
  'American Lager': '#eabb61'
  'Weissbier': '#d6c14e'
  'Watermelon Wheat Beer': '#d6a84e'
  'Specialty Wood-Aged Beer': '#705116'
  'International Pale Lager': '#db7b26'
  'Czech Premium Pale Lager': '#d3d25f'
  'Black Kolsch': '#43322e'
  'Belgian Strong Pale Ale': '#efda77'
  'American Porter': '#160d03'
  'Wild Specialty Beer': '#d9a770'
  'Cherry Sour': '#763535'
  'White IPA': '#efee90'
  'Altbier': '#9b492d'
  'American Wheat Beer': '#d8dd87'
  'Indian-style Chocolate Stout ': '#3c2619'
  'S&apos;more Stout': '#3c2619'
  'Pumpkin Porter': '#3c2619'



glass_images =
  "tulip" : 'images/tulip.png?q=' + (new Date()).getTime(),
  "10_oz" : 'images/snifter-sized.png?q='+ (new Date()).getTime(),
  "pint" : 'images/pint-sized.png?q='+ (new Date()).getTime(),
  "64_oz_growler" : 'images/grower-sized.png?q=' + (new Date()).getTime()


parse_iso_date = (dtstr) ->
  dt = dtstr.split(/[: T-]/).map(parseFloat)
  return new Date(dt[0], dt[1] - 1, dt[2], dt[3] || 0, dt[4] || 0, dt[5] || 0, 0)


fetch_beer_list = (page = 1) ->
  $.get 'tap-hunter.php', (data) ->
    if typeof data is 'string'
      json_data = JSON.parse(data)
    else
      json_data = data
    json_data.taps.sort (a, b) ->
      tap_1 = -1
      tap_2 = -1

      tap_1 = parseInt(a.serving_info.tap_number) unless a.serving_info.tap_number is undefined
      tap_2 = parseInt(b.serving_info.tap_number) unless b.serving_info.tap_number is undefined

#      console?.log 'Sorting with [%s, %s]', tap_1, tap_2

      return tap_1 - tap_2

    start = (page - 1) * 16
    end = 16 * page
    items = json_data.taps.slice start, end


    $('ul.beer-list').children().remove()

    $.each items, (i, item) ->
      template = template_for_item item
      $('ul.beer-list').append template_for_item(item)

    if items.length < 16
      required = 16 - items.length

      console.log? 'required items: %s', required
      i = 0
      while i < required
        $('ul.beer-list').append($('<li>'))
        i++



refetch_beer_list = (page = 1) ->
  $.get 'tap-hunter.php', (data) ->
    json_data = JSON.parse data
    taps = sort_by_tap_number json_data.taps

    start = (page - 1) * 16
    end = 16 * page
    items = taps.slice start, end

    $.each items, (i, item) ->
      $li = $($('ul.beer-list').find('li')[i])
      update_list_item $li, item


sort_by_tap_number = (data) ->
  data.sort (a, b) ->
    tap_1 = -1
    tap_2 = -1

    tap_1 = parseInt(a.serving_info.tap_number) unless a.serving_info.tap_number is undefined
    tap_2 = parseInt(b.serving_info.tap_number) unless b.serving_info.tap_number is undefined

    return tap_1 - tap_2

  data

update_list_item = (template, item) ->

  date_added = parse_iso_date(item.date_added_iso8601)

  today = new Date()
  too_old = new Date()
  too_old.setDate (today.getDate() - too_old_day_count)

  prices = []
  for price in item.serving_info.sized_pricing
    prices.push price.price

  price = prices.join ' / '
  price = price.replace(' / ', ' ') if price.indexOf('/') == 1

  images = []
  $.each item.serving_info.sized_pricing, (i, item) ->
    images.push item.size.replace(/\s/g, '_').toLowerCase()

  # Reset glass images
  template.find('.glass-image').empty()
  # Set glass image
  $.each images, (i, image) ->
#    console?.log 'Appending %s for tap %s', image, item.serving_info.tap_number
    template.find('.glass-image').append $('<img>').attr('src', glass_images[image])

  template.find('.beer-information').removeClass 'new'
  unless date_added < too_old
    template.find('.beer-information').addClass 'new'

  # Set tap number
  template.find('.tap-number').text item.serving_info.tap_number

  # Set beer name and price
  template.find('.beer-name-price').text item.beer.beer_name + ' ' + price

  # Set brewery
  template.find('.brewery').text item.brewery.name + ' - ' + item.brewery.origin

  # Set origin and abv
  template.find('.origin').text item.beer.style + ' - ' + numeral(item.beer.abv / 100).format('%0.00') + ' ABV'

  # Set background-color of <li>
  color = beer_colors[item.beer.style]
  if item.beer.style is ''
    color = beer_colors['Witbier']
  template.find('.glass-image').css('backgroundColor', color)

  template


template_for_item = (item) ->
  template = $('li.template').clone()
  template.removeClass 'template'

  date_added = parse_iso_date(item.date_added_iso8601)

  today = new Date()
  too_old = new Date()
  too_old.setDate (today.getDate() - too_old_day_count)


  prices = []
  for price in item.serving_info.sized_pricing
    prices.push price.price

  price = prices.join ' / '
  price = price.replace(' / ', ' ') if price.indexOf('/') == 1

  images = []
  $.each item.serving_info.sized_pricing, (i, item) ->
    images.push item.size.replace(/\s/g, '_').toLowerCase()

  # Set glass image
  $.each images, (i, image) ->
    $item = $('<img>')
    $item.attr 'src', glass_images[image]
    if image.indexOf('64_oz') != -1
      $item.addClass 'growler-image'

    template.find('.glass-image').append $item

  # Set tap number
  template.find('.tap-number').text item.serving_info.tap_number

  unless date_added < too_old
    template.find('.beer-information').addClass 'new'

  # Set beer name and price
  template.find('.beer-name-price').text item.beer.beer_name + ' ' + price

  # Set brewery
  template.find('.brewery').text item.brewery.name + ' - ' + item.brewery.origin

  # Set origin and abv
  template.find('.origin').text item.beer.style + ' - ' + numeral(item.beer.abv / 100).format('%0.00') + ' ABV'

  # Set background-color of <li>
  color = beer_colors[item.beer.style]
  if item.beer.style is ''
    color = beer_colors['Witbier']
  template.find('.glass-image').css('backgroundColor', color)

  template


refresh_beer_list = ->
  setInterval (->
    console?.log 'Updating beer list'
    if window.location.toString().indexOf('index2') != -1
      refetch_beer_list(2)
    else
      refetch_beer_list()
  ), 240000


$(document).ready ->
  if window.location.toString().indexOf('index2') != -1
    fetch_beer_list(2)
  else
    fetch_beer_list()

  refresh_beer_list()
