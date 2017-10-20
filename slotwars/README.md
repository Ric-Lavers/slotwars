# Slotwars
A simple slot machine rails app with a 'Star Wars' theme

### Required gems:
[Devise](https://github.com/plataformatec/devise "Devise gem")
[Shrine](https://github.com/janko-m/shrine "Shrine gem")

### Additional system requirements:
Ensure postgreSql is installed on your personal system.

## Getting started
-----

### ERD

[User] with scores -- makes a --> <Play> -- from the --> [Game method] which adds an award


### Installing the gem

Create a new rails app with:
`rails new slotwars --database=postgressql`

Add the [Devise](https://github.com/plataformatec/devise "Devise gem") gem and follow the instructions to install.

Add the [Shrine](https://github.com/janko-m/shrine "Shrine gem") gem and follow the instructions to install.

### Creating the slot machine

Create a model:
`rails g model Slots`
... and the controller:
`rails g controller Home index`
In the routes.rb add: `root 'home#index'`

copy things in:
controller
model
views

twitter api feed
