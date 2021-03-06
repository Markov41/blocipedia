Blocipedia

Blocipedia is a Ruby on Rails application that allows users to create wikis and collaborate on other wikis. Users can pay to upgrade their membership, allowing them to view and create private wikis.

The source code is here on GitHub: https://github.com/Markov41/blocipedia

This app was created as part of the Bloc Full Stack Web Development course.

Features

    Users can create a standard account in order to create, edit, and collaborate on public wikis using Markdown syntax. Anyone can view public wikis.
    Users can pay to upgrade their account to Premium in order to view and create private wikis.
    Premium users can allow others to view and collaborate on the private wikis they create.
    Premium users can downgrade their account back to Standard.
    When a user downgrades his or her account, his or her private wikis will automatically become public.

Setup and Configuration

Languages and Frameworks: Ruby on Rails and Bootstrap

Ruby version: 2.3.0

Development Tools and Gems include:

    Devise for user authentication
    Pundit for authorization
    Stripe for payments 

Setup:

    Environment variables were set using Figaro and are stored in config/application.yml (ignored by git).
    he config/application.example.yml file illustrates how environment variables should be stored. 

To run Blocipedia locally:

    Clone the repository
    Run bundle install
    Create and migrate the SQLite database with rake db:create and rake db:migrate
    Start the server using rails server
    Run the app on localhost:3000 