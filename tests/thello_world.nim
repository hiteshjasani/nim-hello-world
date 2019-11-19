import unittest

import hello_world

test "correct welcome":
  check getWelcomeMessage() == "Hello, World!"

