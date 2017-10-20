# Slotwars
A simple slot machine rails app with a 'Star Wars' theme
### Required gems:
[Devise](https://github.com/plataformatec/devise "Devise gem")
[Shrine](https://github.com/janko-m/shrine "Shrine gem")
### Additional:
Additional gems:
[rspec-rails](https://github.com/rspec/rspec-rails "rspec gem")
[dotenv](https://github.com/motdotla/dotenv "dotenv gem")
Ensure postgreSql is installed on your personal system.
Any files/commands in relation to 'Tokens' or 'tokens' is not relevant to the app.
## Getting started
-----
### ERD
[User] with scores -- makes a --> <Play> -- from the --> [Game method] which adds an award
[User] --> [Profile]
### Installing the gems
Create a new rails app with:
`rails new slotwars --database=postgressql`
Add the [Devise](https://github.com/plataformatec/devise "Devise gem") gem and follow the instructions to install.
Add the [Shrine](https://github.com/janko-m/shrine "Shrine gem") gem and follow the instructions to install.
### Creating the slot machine
*slot.rb*
Allocate images to instance variables in an array.
Create a spin method which samples and outputs three images.
Create a score method which allocates points based on the output.
*home_controller*
In index, create logic to have score increase for every spin.
### Database
Users and Profiles are the only necessary db's required. Profiles are used to track individual scores, which the leaderboard in dependant on.
