require 'rubygems'
require 'twilio-ruby'

account_sid = 'ACd740475db05790abd02e53b6cffb42f7'
auth_token = 'e7094ae72bae21a8298721417bf44456'

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Ask the Magic 8 Ball your question:"
question = gets.chomp

answers = [
  'It is certain', 
  'It is decidedly so', 
  'Without a doubt', 
  'Yes definitely', 
  'You may rely on it', 
  'As I see it, yes', 
  'Most likely', 
  'Outlook good', 
  'Yes', 
  'Signs point to yes', 
  'Reply hazy try again', 
  'Ask again later', 
  'Better not tell you now', 
  'Cannot predict now', 
  'Concentrate and ask again', 
  'Don\'t count on it', 
  'My reply is no', 
  'My sources say no', 
  'Outlook not so good', 
  'Very doubtful'].sample
  
  answer_message = "Question: #{question} Answer: #{answers}"

  message = @client.account.messages.create(
  :from => "+1 347-586-0788",
  :to => "+1 917-538-2489",
  :body => "#{answer_message}"
  )

puts message.to
