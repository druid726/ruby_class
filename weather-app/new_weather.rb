require 'yahoo_weatherman'

def get_weather(location)
  client = Weatherman::Client.new
  weather = client.lookup_by_location(location)
  
  today = Time.now.strftime('%w').to_i
  weather.forecasts.each do |forecast|
    day = forecast['date']
    
    weekday = day.strftime('%w').to_i
    
      if weekday == today
        dayName = 'Today'
      elsif weekday == today + 1
        dayName = 'Tomorrow'
      else dayName = day.strftime('%A')
      end
    
    puts dayName + ' is going to be ' + forecast['text'].downcase +
     ' with a low of ' + forecast['low'].to_s +
      ' and a high of ' + forecast['high'].to_s + ' degrees Celcius.'
  end
  
end

puts "What is your zip code?"
zipCode = gets.chomp
myWeather = get_weather(zipCode)