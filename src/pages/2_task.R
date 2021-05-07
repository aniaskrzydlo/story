task_board <- div(
  class = "card ms-depth-8 ms-sm3 ms-xl3",
  style = "max-height: 150px; width: 200px",
  Stack(
    tokens = list(childrenGap = 5),
    Text(variant = "medium", "#152", block = TRUE),
    Text(variant = "large", "[Main report] Create summary view", block = TRUE),
    div(style = "height:20px"),
    # Stack(horizontal = TRUE,
    #   div(style = "width:50%;"),
    #   div(style = "width:50%;",
    PrimaryButton.shinyInput("showModal", text = "Open"),
    # )
    # ),
    reactOutput("modal")
  )
)

people <- tibble::tribble(
  ~key, ~imageUrl, ~imageInitials, ~text, ~secondaryText, ~tertiaryText, ~optionalText, ~isValid, ~presence, ~canExpand,
  1, "https://static2.sharepointonline.com/files/fabric/office-ui-fabric-react-assets/persona-male.png", "AS", "Adam Smith", "Software Developer", "In a meeting", "Available at 4:00pm", TRUE, 4, NA,
)



task <- makePage(
  makeStory(3:4),
  task_board
)

