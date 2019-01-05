# Package

version       = "0.2.0"
author        = "geotre"
description   = "A nim wrapper for Wren, an embedded scripting language"
license       = "MIT"
srcDir        = "src"


# Dependencies

requires "nim >= 0.19.2"
requires "nimgen >= 0.5.0"

var
  name = "wren"
  cmd = when defined(Windows): "cmd /c " else: ""

if fileExists(name & ".nimble"):
  mkDir(name)

task setup, "Checkout and generate":
  if gorgeEx(cmd & "nimgen").exitCode != 0:
    withDir(".."):
      exec "nimble install nimgen -y"
  exec cmd & "nimgen " & name & ".cfg"

before install:
  setupTask()


task ex1, "Run example 1 (hello world)":
  exec "cd examples/01_hello_world && nim c -r main.nim"

task ex2, "Run example 2 (foreign functions)":
  exec "cd examples/02_foreign_functions && nim c -r main.nim"

task ex3, "Run example 3 (module import)":
  exec "cd examples/03_module_import && nim c -r main.nim"

task ex4, "Run example 4 (slots)":
  exec "cd examples/04_slots && nim c -r main.nim"

task ex5, "Run example 5 (variables)":
  exec "cd examples/05_variables && nim c -r main.nim"
