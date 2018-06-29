class TimesController < ApplicationController
  def main
  	# Time.now.strftime("%H:%M:%S")
  	@date = Time.now.strftime("%b %d,%Y")
  	@time = Time.now.strftime("%H:%M %p")

  	puts @date, @time, "This is time"
  end
end
