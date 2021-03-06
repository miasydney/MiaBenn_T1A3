# Project Documentation

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
Ascii art generator was used in order to create a welcome heading. This site can be accessed at: https://patorjk.com/software/taag/#p=display&h=0&v=2&f=Double&t=mini%20city

## Link to source control repository: 
[Github](https://github.com/miasydney/MiaBenn_T1A3)

## Code style guide and conventions that the application adheres to:
The style guide I have used can be found in more detail at : https://rubystyle.guide/
I have used  Rubocop which is a formatter extension that is based on this style guide. 

# Implementation plan

I used Trello in order to develop my implementation plan (https://trello.com/en  - https://trello.com/b/TwHlTknM/t1a3). This is a popular project management system. My tasks were structured according to user stories, using Kanban style boards to utilise agile development to track my progress with creating the features. Here are some screenshots of the implementation plan in action:
![trello screenshot](docs/trello1.png)
![trello screenshot](docs/trello2.png)
![trello screenshot](docs/trello3.png)
![trello screenshot](docs/trello4.png)
![trello screenshot](docs/trello5.png)
![trello screenshot](docs/trello6.png)


## Installation

In order to run the application, you can run the bash script which will automatically execute the file. 
To successfully run this script, you will need to be in the src directory. You can then run the command `./run_app.sh`. This should install the required dependencies and run the file for you.

## System/hardware requirements + dependencies

In order to run this application on your machine, you will need to have Ruby installed. You can check this by running the command 'ruby -v'. You will need to run ``bundle install`` to install all dependencies for this app.

This app is dependent on the following Ruby Gems to operate:

gem "tty-prompt", "~> 0.23.1"

gem "colorize", "~> 0.8.1"

gem "timer", "~> 0.3.0"

gem "rainbow", "~> 3.1"

For best experience, the application should be run in the terminal. It will run on most modern operating systems. The standard mac terminal settings have been used as the GUI for developing the application. It is recommended to use a font size of around 14pts for best experience. 

### Command Line Arguments

The application includes some ARGV commands (command line arguments).
These can be used by running the app file `ruby main.rb` in the terminal (NOT the bash script). Simply enter in the argument you'd like after the file name.
Eg `ruby main.rb 'argument'`

`--h` or `--help`
Will display help documentation written for the application including what the app does, how to run and use the app, navigating through prompts and exiting the app. 

`--a` or `--about`
Will display information about the purpose, scope and features of the application.

### Prompts

When using the application, users will be prompted for both text input and multiselect menus. 
Text input: Users can type in their answers to prompts in the command line and hit enter to submit the response. 
Multiselect menus: Users can use the up/down arrow keys to navigate to different options in this menu and hit enter to confirm and submit their selection.

Although it is not recommended, if for some reason the user needs to exit the app whilst a study block timer is still running, they can do so by entering 'ctrl + C', which will forcefully exit the program. 