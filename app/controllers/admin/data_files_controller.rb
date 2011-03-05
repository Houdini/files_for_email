class Admin::DataFilesController < ::AdminController

  def index
    @data_files = DataFile.all
  end

  def show
    @data_file = DataFile.find params[:id]
  end

  def new
    @data_file = DataFile.new
  end

  def edit
    @data_file = DataFile.find params[:id]
  end

  def create
    @data_file = DataFile.new params[:data_file]

    if @data_file.save
      redirect_to [:admin, @data_file], :notice => 'Data file was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @data_file = DataFile.find params[:id]

    if @data_file.update_attributes(params[:data_file])
      redirect_to [:admin, @data_file], :notice => 'Data file was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @data_file = DataFile.find params[:id]
    @data_file.destroy

    redirect_to admin_data_files_url
  end
end
