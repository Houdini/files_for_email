class RequestsController < ApplicationController
  def create
    @request = Request.new(params[:request])

    if @request.save
      redirect_to(root_path, :notice => t(:request_created))
    else
      @files = DataFile.all
      render 'welcome/index'
    end
  end

end
