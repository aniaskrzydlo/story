emailMiniature <- div(
  class = "card ms-depth-8 ms-sm2 ms-xl2",
  style = "max-height: 50px",
  Stack(
    tokens = list(childrenGap = 5),
    Text(variant = "large", "From: John Doe", block = TRUE),
    Text(variant = "small", "Hi Adam! I've got a...", block = TRUE),
    Link(href = "#!/email_open", "View")
  )
)

email_closed <- makePage(
  makeStory(c(1, 2)),
  Stack(
    tokens = list(childrenGap = 10), horizontal = TRUE,
    emailMiniature
  )
)

email_open <- makePage(
  makeStory(c(1, 2)),
  Stack(
    tokens = list(childrenGap = 10), horizontal = TRUE,
    emailMiniature,
    div(
      class = "card ms-depth-8 ms-sm6 ms-xl6",
      style = "max-height: 640px",
      Stack(
        tokens = list(childrenGap = 5),
        Text(variant = "large", "From: John Doe", block = TRUE),
        Text(variant = "large", "To: Adam Smith", block = TRUE),
        Text(variant = "small", "Date: 2021-05-07 16:59", block = TRUE),
        Text(variant = "small", " ", block = TRUE),
        Text(variant = "small", "Hi Adam!", block = TRUE),
        Text(variant = "small", "I've got a small request - could you please finish this task before the client demo on Monday?", block = TRUE),
        Link(href = "#!/task", "Link to the task"),
        Text(variant = "small", "It shouldn't take long.", block = TRUE),
        Text(variant = "small", "Thanks!", block = TRUE),
        Text(variant = "small", "Joe", block = TRUE)
      )
    )
  )
)