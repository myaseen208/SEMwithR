setwd("D:/MYaseen208_B0-22-7A-E9-23-9B/ConferencesWorkshopsSeminars/Workshops/COMSATS/SEMwithR/02SEMwithRAnalysis/_book/images")

library(pdftools)
library(furrr)

list.files(
    path       = getwd()
  , pattern    = "*.pdf"
  , full.names = TRUE
  ) |>
  future_map(
      .x        =
    , .f        = pdf_convert
    , format    = "png"
    , pages     = NULL
    , filenames = NULL
    , dpi       = 300
    )


future_map(
    .x = paste(getwd(), "/", list.files(getwd(), pattern = "*.pdf"), sep = "")
  , .f = function(files) {
          pdf_convert(files, format = "png", dpi = 300, pages = NULL, filenames = )
    }
  )

