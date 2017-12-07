{.compile: "./main_.c".}
proc main_init(): void {.importc.}
proc LED1_tick(): void {.importc.}
proc HAL_Delay(ms: uint32){.header: "stm32f4xx_hal.h", importc: "HAL_Delay", varargs.}

when isMainModule:
  main_init()
  while true:
    LED1_tick()
    HAL_Delay(1000)
