class Api::RefereesController < ApplicationController

  # before_action :authenticate_user

  def index 
    @referees = Referee.all

    @referees = @referees.order(id: :asc)

    render 'index.json.jb'
  end 

  def create
    @referee = Referee.new(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                             title: params[:title], 
                             start_date: params[:start_date],
                             end_date: params[end_date],
                             notes: params[:notes],
                             email: params[:email] 
                            )
    if @referee.save
      render "show.json.jb"
    else
      render json: {errors: @referee.errors.messages}, status: :unprocessable_entity
    end 
  end 

  def show
    @referee = Referee.find(params[:id])
    render 'show.json.jb'
  end 

  def update
    @referee = Referee.find(params[:id])

    @referee.first_name = params[:first_name] || @referee.first_name
    @referee.last_name = params[:last_name] || @referee.last_name
    @referee.title = params[:title] || @referee.title
    @referee.start_date = params[:start_date] || @referee.start_date
    @referee.end_date = params[:end_date] || @referee.end_date
    @referee.notes = params[:notes] || @referee.notes
    @referee.email = params[:email] || @referee.email

    @referee.save
    render 'show.json.jb'
  end 

  def destroy
    referee = Referee.find(params[:id])
    referee.destroy
    render json: {message: "Referee successfully destroyed"}
  end 
end
