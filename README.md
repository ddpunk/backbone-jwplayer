# Backbone.JWPlayer

Support to manage JW Player events in backbone view. I am creating app using backbone and I needed to manage jw player events. This is code that I used to do that (inspired by @bry4n and his Backbone.Shortcuts https://github.com/bry4n/backbone-shortcuts). I couldn't find other sollution, so I share this with you. Do with it whatever you want. If you found better way, please contact me. 

## Usage

**CoffeeScript**

```coffeescript
class MyView extends Backbone.View
	initialize: (options) ->
		_.extend(this, new Backbone.JWPlayer) 
		@delegateJWPlayer(jwplayer('jwplayer'))

	jwplayerevents:
		'jwplayer:onTime'	: 'onTime'
		'jwplayer:onPlay'	: 'onPlay'
```

## Dependencies

* [Underscore.js ~> 1.3.1](http://underscorejs.org/) 
* [Backbone.js ~> 0.9.1](http://backbonejs.org/)

## Author

Maciej Krasowski, [@ddpunk](http://twitter.com/ddpunk)

## License

Backbone.JWPlayer is licensed under MIT license.