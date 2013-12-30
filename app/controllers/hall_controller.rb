class HallController < ApplicationController

  def index
	@tasks = Task.find(:all)
  end

end
