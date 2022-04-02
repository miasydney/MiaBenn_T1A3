# Project Documentation
Note to self: keep all the screenshots that I include in this document in the docs folder.

## About, Scope + Features
Mini City is a terminal command line application built using Ruby. The purpose of this app is to help students or working professionals to stay motivated and focused while sitting through study periods. It aims to increase productivity by creating a gamified study timer. Mini City allows for users to select a set study block, it will then bring up a countdown timer that will display in the terminal and count down how many seconds they have left until the study block is complete. On successful completion of a study period, the user will be awarded with 'coins' that will be added to their coins balance. This is an interactive balance that will update as the user uses the application as they are allowed to complete an unlimited amount of study periods and therefore amass an unlimited amount of coins! They can then use these coins to purchase houses and hotels that will display in the terminal as 'their city' and build a collection as they complete their study/work. 

## Features (in more detail)
- Engaging welcome banner featuring colours and effects created using ruby 'Rainbow' gem.
- Personalised experience using users name. Upon opening the application, the user will be prompted for their first name. The application then uses error handling in order to ensure that they have entered a valid input that can be used later in the application to create a personalised experience. It will display their city with the heading "NAME'S CITY:". Eg "TOBY'S CITY:". Their name is also used upon exiting the application to display a personalised goodbye message that uses their name. This allows for the user to feel more welcome in the app, as it has been personalised specifically for them. If they want to screenshot their city or share it in anyway, it will show their name here, making it more fun and rewarding for them to show off. 
- Main display for the application which shows the user their city and coins balance. 
- Opening menu which allows four options: purchase a house for 500 coins, purchase a hotel for 1000 coins, start a study block to earn more coins or quit studying and exit the application. 

## Full attribution to referenced sources (where applicable)
Ascii art
https://patorjk.com/software/taag/#p=display&h=0&v=2&f=Double&t=mini%20city

## Link to source control repository: 
(github)
## Identify any code style guide or styling conventions that the application will adhere to
## Reference the chosen style guide appropriately
The style guide: https://rubystyle.guide/
I have used  Rubocop which is a formatter extension that is based on this style guide. 

# Purpose

# R6 Features 🏡
Develop a list of three features that will b included in the application, must include:
-describe at least THREE features
-describe each feature

Ensure they allow you to demonstrate your understanding of the following concepts: 
-use of variables and the concept of variable scope
-loops and conditional control structures
-error handling



# R7
I used Trello in order to develop my implementation plan. 

Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan.

Provide screenshots/images and/or a reference to an accessible project management platform used to track this implementation plan. 

(Your checklists for each feature should have at least 5 items.)

# R8
Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
- how to use any command line arguments made for the application

In order to run this application on your machine, you will need to have Ruby installed. 
You can check this by running the command 'ruby -v'.
You will need to run ``bundle install`` to install all dependencies for this app.
Dependencies (gems).
ACCURATELY describe: steps to install the application; dependencies required by the application; system/hardware requirements; features of the application.