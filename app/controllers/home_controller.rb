class HomeController < ApplicationController
  def index
    if params[:search]
      @channels = Channel.search(params[:search])
      id = []
      @channels.each do |channel|
        id << channel.shows.pluck(:id)
      end
      id << Show.search(params[:search]).pluck(:id)  
      @shows = Show.find(id.flatten.uniq)
    else
      @shows = Show.all
    end
  end
end
