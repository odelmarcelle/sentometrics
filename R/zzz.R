
.onLoad <- function(libname = find.package("sentometrics"), pkgname = "sentometrics") {
  # CRAN note avoidance
  if (getRversion() >= "2.15.1")
    utils::globalVariables(
      c("value", "variable", "word_count", "w",
        "attrib", "feature", "id", "i", "wLex",
        "wFeat", "wTime", "x", "identifier",
        ".", "documents", "language", "nTokens",
        "lag", "sentence_id", "n", "pos", "neg")
    )
  invisible()
}

.onUnload <- function (libpath) {
  library.dynam.unload("sentometrics", libpath)
}

