# learning-twilio-whatsapp

## Installation

    $ bundle install

## Usage

Set up an ngrok account first and get your [auth
token](https://dashboard.ngrok.com/auth)

    $ ngrok authtoken AUTH_TOKEN
    $ ngrok http 3000

This will give you a unique world-reachable url to your machine.

Start the server in another shell

    $ bundle exec ruby server -p 3000

