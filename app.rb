require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get '/hello' do
        # name = params[:name]
        # return "Hello #{name}"
        return erb(:hello)
    end

    post '/submit' do
        name = params[:name]
        message = params[:message]
        return "Thanks #{name}, you sent this message: #{message}"
    end

    get '/names' do
        names = "Julia, Mary, Karim"
        return names
    end

    post '/sort-names' do   
        names = "Joe,Alice,Zoe,Julia,Kieran"
        sorted_names = names.split(",")
        array_names = sorted_names.sort!
        return array_names.join(",")
    end
end
