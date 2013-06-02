JWPlayer = (options) ->
  @cid = _.uniqueId("backbone.jwplayer")
  @initialize.apply(@, arguments)
  @delegateJWPlayer()

_.extend JWPlayer.prototype, Backbone.Events,
  initialize: ->
    @eventslist = ['onTime','onBufferChange','onBeforePlay','onPlay','onPause','onBuffer','onIddle','onSeek','onMute','onVolume','onFullscreen','onResize','onError','onQualityLevels','onQualityChange','onCaptionsList','onCaptionsChange','onControls','onDisplayClick','onMeta']
  delegateJWPlayer: (jwplayer=null) ->
    return unless @jwplayerevents
    throw new Error("You have to give jwplayer instance as argument") unless jwplayer
    for jwplayerevent, callback of @jwplayerevents
      method = @[callback] unless _.isFunction(callback)
      throw new Error("Method #{callback} does not exist") unless method
      eventname = jwplayerevent.split(':')[1]
      throw new Error("Event #{eventname} does not exist") if !(eventname in @eventslist)
      jwplayer[eventname](method)

Backbone.JWPlayer = JWPlayer
Backbone.JWPlayer.extend = Backbone.View.extend