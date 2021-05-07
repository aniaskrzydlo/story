work_call <- div(
  class = "card ms-depth-8 ms-sm3 ms-xl3",
  style = "max-height: 150px; width: 300px;",
  Stack(
    tokens = list(childrenGap = 15), horizontal = TRUE,
    icon("video"),
    Stack(
      tokens = list(childrenGap = 7),
      Text(variant = "large", "Weekly app client demo", block = TRUE),
      Text(variant = "small", "Meeting started", block = TRUE),
      Facepile(personas = list(
        list(personaName = "John Doe"),
        list(personaName = "Cecil Shark")
      ))
    ),
    # div(style = "height:300px"),
    DefaultButton("joinBtn", text = "Join", href = "#!/monday")
  )
)

work <- makePage(
  makeStory(5:6),
  work_call
)