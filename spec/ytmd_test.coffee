{WorkspaceView} = require 'atom'
YTmd = require '../lib/ytmd'

describe "ytmd", ->
  promise = null
  beforeEach ->
    atom.workspaceView = new WorkspaceView()
    atom.workspace = atom.workspaceView.model
    promise = atom.packages.activatePackage('ytmd')
    waitsForPromise ->
      atom.workspace.open()

  it "converts", ->
    atom.workspaceView.trigger 'YTmd:YTmd'
    waitsForPromise ->
      promise
