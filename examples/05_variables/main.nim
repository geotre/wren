
import "../../src/wren"

let vm = defaultConfig().newVM()

vm.runScript("main.wren")

vm.ensureSlots(1)
vm.getVariable("main", "wrenVar", 0)  # gets main.wrenVar
echo vm.getSlotString(0)
