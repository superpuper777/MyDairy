class PeriodsController < ApplicationController
  def index
    @periods = Period.all
  end
  def show
    @period = Period.find(params[:id])
  end

  def new
    @period = Period.new
  end

  def create
    @period = Period.new(params[:menses_start, :menses_end])
    if @period.save
      redirect_to @period, notice: "Created period."
    else
      render :new
    end
  end

  def edit
    @period = Period.find(params[:id])
  end

  def update
    @period= Period.find(params[:id])
    if @period.update_attributes(params[:menses_start, :menses_end])
      redirect_to @period, notice: "Updated period."
    else
      render :edit
    end
  end

end
