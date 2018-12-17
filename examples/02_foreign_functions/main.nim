
import "../../src/wren"

let vm = defaultConfig().newVM()

vm.register("Math", "add(_,_)",
proc (vm: ptr WrenVM) {.cdecl.} =
  let
    a = vm.getSlotDouble(1)
    b = vm.getSlotDouble(2)
  setSlotDouble(vm, 0, a + b)
)

vm.runScript("main.wren")

