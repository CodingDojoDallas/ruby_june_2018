class DojosController < ApplicationController
  def result
  	if session[:count] == nil
  		session[:count] = 1
  	else
  		session[:count] += 1
  	end
  	p session[:count]
  	# p "yourname",session[:yourname], params[:user][:yourname]
  end

  def update
  	session[:yourname] = params[:yourname]
  	session[:location] = params[:location]
  	session[:language] = params[:language]
  	session[:comment] = params[:comment]
  	# p "yourname111",session[:yourname]
  	p session[:count]
  	redirect_to '/dojos/result'
  end
end

#WHY params cac go over the method!! page!!
