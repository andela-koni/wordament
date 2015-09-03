class WelcomeController < ApplicationController

  def index
    @user_input
  end

  def process_form
    @user_input = params[:user_input]
    render :index


    yodatranslate = HTTParty.get("https://yoda.p.mashape.com/yoda?sentence=#{@user_input}", headers:{"X-Mashape-Key" => "5LWnhavymkmsh6qvJgKB31zRESQ6p1tjcwUjsnjVgqZE80gBPD","Accept" => "text/plain"})

  end

end