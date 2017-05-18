# About

This is a sample application that allows users to log in using their Facebook, Github, Google, or Twitter accounts.

# Running the Application

## Installing Gems

Execute the command `bundle install` at the root of the project to install all gems.

## Setting Environment Variables

The application configuration requires a number of environment variables to be set up.

Please have a look at the `.env.example` file for the environment variables you need to set up.

If you wish to test the application in a controlled environment, you can use the `dotenv` gem.

Execute the command `bundle install --with development` to install the `dotenv` gem.

Rename the `.env.example` file to `.env` and replace the placeholder variables with the actual values.

When using the `dotenv` gem, you should run the application using the command `dotenv rails server`.

## Configuring Database

Before running the application, set the database configuration in the `config/database.yml` file.

Execute the command `rails db:create` to create the databases in your local environment.

## Running Migrations

Execute the command `rails db:migrate` to run the database migrations.

## Executing the Application

Execute the command `rails server` to run the application.

# Contributing

If you wish to add more providers to this application, simply clone the repository and have a look at the code.

It is pretty self-explanatory so you should not have much problem figuring out how to go about it.

When you are done, simply send a pull request.

# Feedback

Got anything to say? To the issues section!
