monday_text <- div(
  class = "card ms-depth-8 ms-sm2 ms-xl2",
  style = "max-height: 150px; width: 150px;",
  a(
    href = "#!/final",
    style = "text-decoration: none",
    ActivityItem(
      activityDescription = tagList(
        tags$span(key = 1, "Andrew Black texted")
      ),
      activityIcon = Icon(iconName = "Message"),
      comments = tagList(
        tags$span(key = 1, "Sorry, I can’t join the demo today. But don't worry, the priorities have changed.")
      ),
      timeStamp = "Just now"
    )
  )
)

monday <- makePage(
  makeStory(7:8),
  monday_text
)