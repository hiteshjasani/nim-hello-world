import unittest

import hello_world

test "test welcome":
  check getWelcomeMessage() == "Hello, World!"

