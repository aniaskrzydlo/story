# Story of a frustrated R developer
Link to the deployed application: https://aniaskrzydlo.shinyapps.io/story/

### About
This is an application created for the [Shiny Contest 2021](https://blog.rstudio.com/2021/03/11/time-to-shiny/) organized by RStudio. The application is an interactive story. When clicking through the app, you will see the text and pieces of the UI connected with the story to interact with. Interacting with the UI according to the story will take you to the next screen.

The UI is built with [shiny.fluent](https://appsilon.github.io/shiny.fluent/).

### Idea
The idea for the application was to create a Shiny app with a content that isn’t native to Shiny. That’s how it started - let’s build a story. As I’m an R developer, not a writer, I created a short anecdote that, I think, a lot of R devs can familiarize themselves with. Having a story, I started thinking about the UI. I wanted it to imitate the software used in the corporate environment, so that the user has the feeling of actually being part of the story. That’s why I decided to use the shiny.fluent package, which made it easy to leverage Microsoft’s Fluent UI.
