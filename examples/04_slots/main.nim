
import "../../src/wren"

let vm = defaultConfig().newVM()

vm.ensureSlots(4)  # "open" 4 message slots
assert vm.getSlotCount() == 4

vm.setSlotBool(0, true)
vm.setSlotDouble(1, 99999999999.cdouble)
vm.setSlotNull(2)
vm.setSlotString(3, "hello world")

assert vm.getSlotBool(0) == true
assert vm.getSlotDouble(1).int64 == 99999999999
assert vm.getSlotType(2) == WrenType.WREN_TYPE_NULL
assert vm.getSlotString(3) == "hello world"
