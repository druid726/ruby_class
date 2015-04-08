require 'rubygems'
require 'twilio-ruby'

account_sid = 'ACd740475db05790abd02e53b6cffb42f7'
auth_token = 'e7094ae72bae21a8298721417bf44456'

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "+1 347-586-0788",
  :to => "+1 917-538-2489",
  :body => "I will so stoked if this works"
  )

puts message.to

