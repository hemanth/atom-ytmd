#
# * mdurl
# * https://github.com/hemanth/mdurl
# * Copyright (c) 2014 hemanth
# * Licensed under the MIT license.
#

ytmd = require 'ytmd'

ytMD = (editor) ->
  selection = editor.getSelection()
  text = selection.getText()
  ytmd text, (err, data) ->
    selection.insertText(data)

module.exports =
  activate: ->
    atom.workspaceView.command 'ytMD:ytMD', '.editor', ->
      paneItem = atom.workspaceView.getActivePaneItem()
      ytMD(paneItem)

  mdURL: ytMD
