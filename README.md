# Project Documentation
Note to self: keep all the screenshots that I include in this document in the docs folder.

## About, Scope + Features
Mini City is a terminal command line application built using Ruby. The purpose of this app is to help students or working professionals to stay motivated and focused while sitting through study periods. It aims to increase productivity by creating a gamified study timer. Mini City allows for users to select a set study block, it will then bring up a countdown timer that will display in the terminal and count down how many seconds they have left until the study block is complete. On successful completion of a study period, the user will be awarded with 'coins' that will be added to their coins balance. This is an interactive balance that will update as the user uses the application as they are allowed to complete an unlimited amount of study periods and therefore amass an unlimited amount of coins! They can then use these coins to purchase houses and hotels that will display in the terminal as 'their city' and build a collection as they complete their study/work. 

## Features (in more detail)
- Engaging welcome banner featuring colours and effects created using ruby 'Rainbow' gem.
- Personalised experience using users name. Upon opening the application, the user will be prompted for their first name. The application then uses error handling in order to ensure that they have entered a valid input that can be used later in the application to create a personalised experience. It will display their city with the heading "NAME'S CITY:". Eg "TOBY'S CITY:". Their name is also used upon exiting the application to display a personalised goodbye message that uses their name. This allows for the user to feel more welcome in the app, as it has been personalised specifically for them. If they want to screenshot their city or share it in anyway, it will show their name here, making it more fun and rewarding for them to show off. 
- Main display for the application which shows the user their city and coins balance. These are both interactive and will be updated as the user takes steps within the application. Eg, if a user completes a study period, the appropriate amount of coins will be added to their coins balance, which will update for them to see. If a user opts to purchase a hotel or house, then their city will be updated with the new house/hotel so that they are able to instantly see it. Their coins balance will have subtracted the appropriate amout (however much the house or hotel cost) and update also. The coins balance cannot go below zero and will notify the user if they have attempted to purchase an item that they do not have a sufficient balance for. 
- Application main menu which allows four options: 
Option to purchase a house to add to their collection if they have enough money to do so.
Option to purchase a hotel to add to their collection if they have enough money to do so
Option to make more coins by completing a study period - 'start a study block to earn more coins'
Option to exit the program - 'finish studying and exit the application'. 
The options to purchase a house or hotel will both interact with the users city and coins balance, to either subtract the appropriate amount of coins and add a house or hotel to the city and then reload the menu so the user will be able to see their city updated OR reprompt the user for which option they would like to select if their coins balance is not sufficient to purchase their chosen selection. 
Finish studying and exit the application will always be an option for the user if they do not want to utilise the application anymore. It will cleanly exit and display a goodbye message to confirm to the user that the option has worked and the program has  finished running.
- A timer menu that is nested within the main menu options that allows a user to complete study periods. It brings up four options: 15m, 30m, 45m, 1h. Depending which of these options the user selects, a countdown timer will come up in the terminal that will count down for the specified amount of time. The user will make more coins the longer the study block is, and this amount will update to their balance when the period is completed. 

## Utilised sources:
Ascii art generator was used in order to 
https://patorjk.com/software/taag/#p=display&h=0&v=2&f=Double&t=mini%20city

## Link to source control repository: 
[Github](https://github.com/miasydney/MiaBenn_T1A3)

## Code style guide and conventions that the application adheres to:
The style guide I have used can be found in more detail at : https://rubystyle.guide/
I have used  Rubocop which is a formatter extension that is based on this style guide. 

# Implementation plan
I used Trello in order to develop my implementation plan (https://trello.com/en). This is a popular project management system. My tasks were structured according to user stories, using Kanban style boards to utilise agile development to track my progress with creating the features. Here are some screenshots of the implementation plan in action:
![trello screenshot](../MiaBenn_T1A3/docs/trello1.png)
![trello screenshot](../MiaBenn_T1A3/docs/trello2.png)
![trello screenshot](../MiaBenn_T1A3/docs/trello3.png)
![trello screenshot](../MiaBenn_T1A3/docs/trello4.png)
![trello screenshot](../MiaBenn_T1A3/docs/trello5.png)
![trello screenshot](../MiaBenn_T1A3/docs/trello6.png)

# R8 How to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
- how to use any command line arguments made for the application

In order to run this application on your machine, you will need to have Ruby installed. You can check this by running the command 'ruby -v'.
You will need to run ``bundle install`` to install all dependencies for this app.
Dependencies (gems).
ACCURATELY describe: steps to install the application; dependencies required by the application; system/hardware requirements; features of the application.

When using the application, users will be prompted for both text input and multiselect menus. 
Text input: Users can type in their answers to prompts in the command line and hit enter to submit the response. 
Multiselect menus: Users can use the up/down arrow keys to navigate to different options in this menu and hit enter to confirm and submit their selection.