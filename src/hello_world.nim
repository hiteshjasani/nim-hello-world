const msg = "Hello, World!"

proc getWelcomeMessage*(): string =
  msg

when isMainModule:
  echo getWelcomeMessage()
