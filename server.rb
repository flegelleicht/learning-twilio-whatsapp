require 'sinatra'
require 'twilio-ruby.rb'
require 'dotenv'
Dotenv.load

require 'pp'

account_sid = ENV['TWILIO_ACCOUNT_SID']
auth_token = ENV['TWILIO_AUTH_TOKEN']

post '/' do
  pp request

  client = Twilio::REST::Client.new(account_sid, auth_token)
  client.messages.create(
    body: "Ahoy! Thanks so much for your message, which was: #{params['Body']}",
    from: 'whatsapp:+14155238886',
    to: params['From']
  )

  "ok"
end

post '/status' do
  require 'pp'
  pp request

  "ok"
end

