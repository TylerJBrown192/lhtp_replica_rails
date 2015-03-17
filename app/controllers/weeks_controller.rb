class WeeksController < ApplicationController
  def show
    @section = Section.find(params[:section_id])
    @week = @section.week.find(params[:id])
  end

  def new
    @section = Section.find(params[:section_id])
    @week = @section.weeks.new
  end

  def create
    @section = Section.find(params[:section_id])
    @week = @section.weeks.new(week_params)
    if @week.save
      flash[:notice] = "Week successfully added!"
      redirect_to sections_path(@week.section)
    else
      render :new
    end
  end

  def edit
    @week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    if @week.update(week_params)
      flash[:notice] = "Week successfully updated!"
      redirect_to sections_path
    else
      render :edit
    end
  end

  def destroy
    @week = Week.find(params[:id])
    @week.destroy
    flash[:notice] = "Week deleted."
    redirect_to sections_path(@week.section)
  end

private
  def week_params
    params.require(:week).permit(:name, :section_id)
  end
end
