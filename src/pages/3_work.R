work_call <- div(
  class = "card ms-depth-8 ms-sm3 ms-xl3",
  style = "max-height: 200px; width: 300px;",
  Stack(
    tokens = list(childrenGap = 15), horizontal = TRUE,
    div(style = "padding-top:2px",
      icon("video")
    ),
    Stack(
      tokens = list(childrenGap = 7),
      Text(variant = "large", "Weekly app client demo", block = TRUE),
      Text(variant = "small", "Meeting started", block = TRUE),
      Facepile(personas = list(
        list(personaName = "John Doe"),
        list(personaName = "Cecil Shark")
      )),
      div(style = "height:10px")
    )
  ),
  Stack(horizontal = TRUE,
    div(style = "width:220px"),
    DefaultButton("joinBtn", text = "Join", href = "#!/monday")
  )
)

work <- makePage(
  makeStory(5:6),
  work_call
)