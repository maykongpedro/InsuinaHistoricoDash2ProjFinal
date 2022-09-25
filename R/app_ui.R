#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd

app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic

    # import fontawesome icons
    # font: https://appsilon.com/r-shiny-fontawesome-icons/
    tags$script(src = "https://kit.fontawesome.com/59cba208a1.js"),

    bs4Dash::dashboardPage(
      title = "Basic Dashboard",
      header = bs4Dash::dashboardHeader(),
      sidebar = bs4Dash::dashboardSidebar(),
      # controlbar = bs4Dash::dashboardControlbar(),
      body = bs4Dash::dashboardBody(),
      footer = bs4Dash::dashboardFooter(
        left = tags$div(
          # import github icon
          tags$i(class = "fa-brands fa-github", style = "font-size: 1.2rem; color:#9E3FED;"),
          # text and link of github profile
          tags$a(
            href = "https://github.com/maykongpedro",
            target = "_blank", "@maykongpedro"
          ),
          # write white spaces using pure HTML
          # font: https://www.freecodecamp.org/news/html-space-how-to-add-a-non-breaking-space-with-the-nbsp-character-entity/
          HTML("&emsp; | &emsp;"),
          # linkedin icon
          tags$i(class = "fa-brands fa-linkedin", style = "font-size: 1.2rem; color:#3FA1ED;"),
          # linkedin profile
          tags$a(
            href = "https://www.linkedin.com/in/maykon-gabriel-5ab009170/o",
            target = "_blank", "@Maykon Gabriel"
          )
        ),
        right = "2022"
      ),
      dark = NULL # nao exibir toogle para trocar de dark para light mode
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "InsuinaHistoricoDash2ProjFinal"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
