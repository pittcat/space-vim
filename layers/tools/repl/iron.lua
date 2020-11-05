local iron = require('iron')

iron.core.add_repl_definitions {
  python = {
    ipy = {
      command = {"ipython"}
    }
  }
}

