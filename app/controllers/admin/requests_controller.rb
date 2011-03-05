class Admin::RequestsController < ::AdminController
  def index
    @requests = Request.all
  end

end
