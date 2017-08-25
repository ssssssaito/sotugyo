class RisyusController < ApplicationController
  def index
    @ris = Risyu.joins(:subject).select("risyus.*, subjects.*")
    @sen = Risyu.joins(:subject).where("subjects.sub_num like ?", "GC5%").select("risyus.*, subjects.*")
    @senki = Risyu.joins(:subject).where("subjects.sub_num like ?", "[A-G]*").select("risyus.*, subjects.*")
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
