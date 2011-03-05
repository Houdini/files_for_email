class WelcomeController < ApplicationController
  def index
    @request = Request.new
    @files = DataFile.all
  end

end
