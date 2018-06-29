class MainsController < ApplicationController
  def redirect 
    redirect_to '/mains'
  end

  def display
    if session[:count]
      session[:count] += 1
    else
      session[:count] = 0
    end
    render 'home'
  end
  
  def mains
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:language] = params[:language]
    session[:comment] = params[:comment]

    redirect_to '/mains/results'
  end
end
