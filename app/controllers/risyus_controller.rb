class RisyusController < ApplicationController
  def index
    @ris = Risyu.joins(:subject).select("risyus.*, subjects.*")
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  def import_csv
    Risyu.import_csv(params[:csv_file])
    redirect_to risyus_path
  end

end
