makeStory <- function(lines) {
  Stack(
    tokens = list(childrenGap = 10),
    Text(variant = "xxLarge", storyText[lines[1], ], block = TRUE),
    Text(variant = "xxLarge", storyText[lines[2], ], block = TRUE),
  )
}

makePage <- function(text, contents) {
  tagList(
    text,
    Separator(),
    contents
  )
}
