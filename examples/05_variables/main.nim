
import "../../src/wren"

let vm = defaultConfig().newVM()

vm.runScript("main.wren")

vm.ensureSlots(1)
vm.getVariable("main", "wrenVar", 0)  # gets main.testvar and puts it into slot 3
echo vm.getSlotString(0)
