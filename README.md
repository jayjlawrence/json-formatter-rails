# json-formatter-rails

Want a quick way to present a JSON data structure in your browser? I did so
I selected [https://github.com/mohsen1/json-formatter-js]. You can see it
in action at [http://azimi.me/json-formatter-js/]. This gem makes it easier for you
to use it for your projects.

## Versions

Starting with v1.3.0, this gem's version will match the version of json-formatter-js
that is in the gem. If there is a fix to a specific version then the 4th digit will indicate this (i.e. 1.3.0.1)

## Installation

The json-formatter file will be added to the asset pipeline and available for you to use. 
If they're not already in `app/assets/javascripts/application.js` then add this line:

```js
//= require json-formatter
```

## Example use

Suppose you want to quickly display a bunch of "status" information. And furthermore you want
to use an Ajax request to get the most recent status.

In your controller make a status method like:

```ruby
class InformationController < ApplicationController

  def status
    respond_to do |format|
      format.html
      format.json { render json: MyBigJsonStatus.method }
    end
  end
  
end
```

Add a route to your routes.rb file

```ruby
  get '/information/status', to: 'information#status'
```

Create a view file status.html.erb

```html
    <div id="status">
      Status Information:
    </div>
    
    <script>
      $.getJSON( document.location.href, function( data ) {
          formatter = new JSONFormatter(data);
          $('#status').append(formatter.render());
      });
    </script>
```

In this example opening http://localhost:3000/information/status will produce your
HTML file in your browser that will then fetch the status data, as JSON, via an Ajax
request. You can then view the json data comfortably in your browser.

## Contributing to json-formatter-rails

Send me a pull request or open an issue.

## License
json-formatter-rails is released under the [MIT License](MIT-LICENSE).

