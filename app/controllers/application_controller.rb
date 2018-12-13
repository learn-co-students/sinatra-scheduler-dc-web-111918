class ApplicationController < Sinatra::Base
  set :views, 'app/views'

  get '/' do
    erb :'index.html'
  end

  get '/courses' do
    @courses = Course.all
    erb :'courses'
  end

  get '/courses/:id' do
    # binding.pry
    @course = Course.find(params[:id])
    erb :'show'
  end

end
