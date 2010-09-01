require 'rubygems'
require 'sinatra/base'
 
class BuildNotifier < Sinatra::Base
 
  get "/" do
    "Build notifier running"
  end
 
  get "/build/:status" do
    case params[:status]
    when 'success'
      "Build succeeded"
    when 'failure'
      "Build failed"
    end
  end 
 
end