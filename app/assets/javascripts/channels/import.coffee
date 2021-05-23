# This is to call this function in a nother coffee file
window.ImportChannel ?= {}

window.ImportChannel.Subscribe = (import_id, callback) ->
  App.export = App.cable.subscriptions.create({
    channel: 'ImportChannel'
    import_id: import_id
  },
    disconnected: ->
    received: (data) ->
      location.reload();
      $(".csv-btn").html("Import")
      $(".csv-btn").removeClass("disabled");

      App.export.unsubscribe()
      App.cable.disconnect()
      delete App.export
      return
  )
  return
