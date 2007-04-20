.First.lib <- function(lib, pkgname, where) {
  if(.Platform$OS.type == "windows" && require(Biobase) && interactive()
        && .Platform$GUI ==  "Rgui"){
        addVigs2WinMenu("pumadata")
    }
}

