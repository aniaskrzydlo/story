server <- function(input, output, session) {
  
  modalVisible <- reactiveVal(FALSE)
  observeEvent(input$showModal, modalVisible(TRUE))
  observeEvent(input$hideModal, modalVisible(FALSE))
  output$modal <- renderReact({
    Modal(isOpen = modalVisible(),
          Stack(tokens = list(padding = "15px", childrenGap = "10px"),
                
                Text(variant = "medium", "#152", block = TRUE),
                Text(variant = "large", "[Main report] Create summary view", block = TRUE),
                div(style = "height:20px"),
                Text(variant = "medium", "Asignee: ", block = TRUE),
                Stack(tokens = list(childrenGap = 5), horizontal = TRUE,
                      
                      div(
                        style = "width:300px; height:60px",
                        NormalPeoplePicker.shinyInput(
                          "selectedPeople",
                          options = people,
                          pickerSuggestionsProps = list(
                            suggestionsHeaderText = 'Matching people',
                            mostRecentlyUsedHeaderText = 'Developers',
                            noResultsFoundText = 'No results found',
                            showRemoveButtons = TRUE
                          )
                        )
                      )
                ),
                Stack(tokens = list(childrenGap = 5), horizontal = TRUE,
                      div(style = "width:215px"),
                      PrimaryButton.shinyInput("hideModal", text = "Ok", href = "#!/work"),
                )
                
          )
    )
  })
  
  
  router$server(input, output, session)
}