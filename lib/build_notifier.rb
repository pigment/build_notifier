require 'rubygems'
require 'sinatra/base'
 
class BuildNotifier < Sinatra::Base
 
  get "/" do
    "Build notifier running"
  end
 
  get "/build/:status" do
    case params[:status]
    when 'success'
      `afplay ~/Library/Sounds/railscasts.aiff -v 6`
    when 'failure'
      `afplay ~/Library/Sounds/qi.aiff -v 6`
    end
  end 
 
end