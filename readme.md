
# Wren

A [Nim](https://nim-lang.org/) wrapper for [Wren](http://wren.io/), an embedded scripting language.

This package uses [nimgen](https://github.com/genotrance/nimgen) and [c2nim](https://github.com/nim-lang/c2nim/) to generate the wrapper code.

## Installation

This package is distributed on nimble: `nimble install wren` (in progress)

## Usage

A simple usage example looks like this:

_in hello_world.nim:_
```nim
import wren
let vm = defaultConfig().newVM()
vm.runScript("example.wren")
```

_in example.wren:_
```wren
System.print("Hello world!")
```

```bash
> nim c -r hello_world.nim`
> Hello world!
```

For more example usage refer to the `examples` folder of this repository.

## Todo:

* Tests
* API documentation


## Contributing

This package is a work in progress and any feedback or suggestions are welcome. It is hosted on [GitHub](https://github.com/geotre/wren) with an MIT license so issues, forks and PRs are most appreciated.
