class Admin::WelcomeController < ::AdminController
  def index
    @total_requests = Request.count
    @total_files = DataFile.count
  end

end
