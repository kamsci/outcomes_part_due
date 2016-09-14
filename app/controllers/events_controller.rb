class EventsController < ApplicationController
  def index
    
    zip = '98101'
    country = 'USA'
    city = 'Seattle'

    if !params[':topic'] || params[':topic'] == ''
      @topic = 'Web'
    else
      @topic = params[':topic'].gsub(/\s+/, "")
    end

    begin
      data = RestClient.get 'https://api.meetup.com/2/open_events?sign=true&photo-host=public&zip=' + zip + '&country=' + country + '&topic=' + @topic + '&city=' + city + '&state=WA&page=20&key=23145310778c71694fbb51774f'
    rescue
      flash[:danger] = 'No Search Results, please try again'
      puts 'I am rescued'
    end
     #  @data = JSON.parse(data)

    if data == nil
      flash[:danger] = 'No Search Results, please try again'
    else
      @data = JSON.parse(data)
    end

  end
end
