#' Check if Stanford \pkg{CoreNLP} is Installed and In Root
#'
#' Checks that Stanford \pkg{CoreNLP} is installed and in root.
#'
#' @param stanford The version of Stanford's \pkg{CoreNLP}.
#' @param download The download url for Stanford's \pkg{CoreNLP}.
#' @param verbose If \code{TRUE} messages are printed even when everything is
#' installed.
#' @keywords stanford
#' @references http://nlp.stanford.edu/software/corenlp.shtml
#' @export
#' @examples
#' \dontrun{
#' check_stanford_installed()
#' }
check_stanford_installed <- function(stanford = coreNLPsetup::coreNLP_loc(),
    download = coreNLPsetup::coreNLP_url(), verbose = TRUE){

    if (isTRUE(verbose)) message("\nchecking if coreNLP is installed...\n")

    root <- strsplit(getwd(), "(/|\\\\)+")[[1]][1]
    out <- file.exists(stanford)

    if (isTRUE(out)) {
        mess <- paste0("Stanford coreNLP appears to be installed.\n\n",
        "...Let the NLP tagging begin!\n\n")
        if (isTRUE(verbose)) message(mess)
        return(invisible(NULL))
    } else {
        mess <- "Stanford coreNLP does not appear to be installed in root.\nWould you like me to try to install it there?"
        message(mess)

        ans <- utils::menu(c("Yes", "No"))
        if (ans == "2") {
            stop("Please consider installing yourself...\n\nhttp://stanfordnlp.github.io/CoreNLP")
        } else {
            message("Let me try...\nHold on.  It's large and may take some time...\n")
        }

        temp <- tempdir()
        dest <- file.path(temp, basename(download))
        utils::download.file(download, dest)
        utils::unzip(dest, exdir = temp)
        stan <- gsub("\\.zip$", "", dest)
        if (!file.exists(stan)) stop(
            "I let you down :-/\nIt appears the file was not downloaded.\n",
            "Consider installing yourself via:\n\n",
            "http://nlp.stanford.edu/software/corenlp.shtml\n\n"
        )
        file.copy(stan, file.path(root, "/"), , TRUE)
        if (file.exists(file.path(root, basename(stan)))) message(
            "I have done it...\nStanford's coreNLP appears to be installed.\n\n",
            "...Let the NLP tagging begin!\n\n"
        )
    }
}

