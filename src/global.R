library(shiny.fluent)
library(shiny.router)
library(shiny.react)

storyText <- read.table("story.txt", sep = "\n", quote = "\"")
source("functions/make_functions.R")
for (file in list.files("pages")) {
  source(paste0("pages/", file))
}


layout <- function(mainUI){
  div(class = "grid-container",
      div(class = "main", mainUI),
      div(class = "footer", footer)
  )
}

footer <- Stack(
  tokens = list(childrenGap = 5), horizontal = TRUE,
  Text(variant = "medium", "Built with ", block = TRUE),
  Link(href = "https://appsilon.github.io/shiny.fluent/", "shiny.fluent")
)

router <- make_router(
  route("/", email_closed),
  route("email_open", email_open),
  route("task", task),
  route("work", work),
  route("monday", monday),
  route("final", final)
)