class LawyersController < ApplicationController

  def index
    @lawyers = Lawyer.order("created_at DESC")
  end

  def show
    @lawyer = Lawyer.find(params[:id])
  end

  def new
    @lawyer = Lawyer.new
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)
    if @lawyer.save
      redirect_to lawyers_path, notice: "The lawyer has been successfully created."
    else
      render action: "new"
    end
  end

  def edit
    @lawyer = Lawyer.find(params[:id])
  end

  def update
    @lawyer = Lawyer.find(params[:id])
    if @lawyer.update_attributes(lawyer_params)
      redirect_to lawyers_path, notice: "The lawyer has been successfully updated."
    else
      render action: "edit"
    end
  end

private

  def lawyer_params
    params.require(:lawyer).permit(:name, :title, :bio, :admissions, :image)
  end

end
