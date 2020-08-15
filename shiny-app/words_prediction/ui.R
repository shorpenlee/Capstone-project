
library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
    navbarPage("Words Prediction App",
               theme = shinytheme("spacelab"),
               tabPanel("Home",
                        fluidPage(
                            titlePanel(""),
                            sidebarLayout(
                                sidebarPanel(
                                  h4("Instructions:"),
                                  helpText("1. Enter a word or words in the text box."),
                                  helpText("2. The predicted next word prints below it in blue."),
                                  helpText("3. No need to hit enter of submit."),
                                  helpText("4. A question mark means no prediction, typically due to mis-spelling"),
                                  br(),
                                  hr(),
                                  h4("Setting:"),

                                    selectInput("numPredictions", "Number of Predictions:",
                                                c("1" = "1",
                                                  "2" = "2",
                                                  "3" = "3"))
                                ),
                                mainPanel(
                                  textInput("userInput",
                                            "Enter a word or phrase:",
                                            value =  "",
                                            placeholder = "Enter text here"),
                                  br(),
                                  br(),
                                  br(),
                                  br(),
                                  br(),
                                  hr(),
                                    h4("Input text"),
                                    verbatimTextOutput("userSentence"),
                                    br(),
                                    h4("Predicted words"),
                                    verbatimTextOutput("prediction1"),
                                    verbatimTextOutput("prediction2"),
                                    verbatimTextOutput("prediction3")
                                )
                            )
                        )
               ),
               tabPanel("About",
                        h3("About Next Word Predict"),
                        br(),
                        div("Next Word Predict is a Shiny app that uses a text
                            prediction algorithm to predict the next word(s)
                            based on text entered by a user.",
                            br(),
                            br(),
                            "The predicted next word will be shown when the app
                            detects that you have finished typing one or more
                            words. When entering text, please allow a few
                            seconds for the output to appear.",
                            br(),
                            br(),
                            "Use the selection tool to select up to three next
                            word predictions. The top prediction will be
                            shown first followed by the second and third likely
                            next words.",
                            br(),
                            br(),
                            "The source code for this application can be found
                            on GitHub:",
                            br(),
                            br(),
                            a("https://github.com/shorpenlee/Capstone-project"),
                            hr(),
                        h3("About Me"),
                        br(),
                        div("Shaopeng Li"),
                        br(),
                        div("lishaopeng2019@gmail.com")
                        
               )
    )
)
)