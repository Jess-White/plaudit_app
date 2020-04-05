class Api::LettersController < ApplicationController

  # before_action :authenticate_user

  def index 
    @letters = Letter.all

    @letters = @letters.order(id: :asc)

    render 'index.json.jb'

  end 

  def create
    @letter = Letter.new(
                          user_id: params[:user_id],
                          referee_id: params[:referee_id],
                          title: params[:title],
                          recipient_info: params[:recipient_info],
                          date: params[:date],
                          section_background: params[:section_background],
                          section_relationship: params[:section_relationship],
                          section_strengths: params[:section_strengths],
                          section_closer: params[:section_closer]
                          )
    if @letter.save
      render "show.json.jb"
    else
      render json: {errors: @letter.errors.messages}, status: :unprocessable_entity
    end 
  end 

  def show
    @letter = Letter.find(params[:id])
    render 'show.json.jb'
  end 

  def update
    @letter = Letter.find(params[:id])

    @letter.user_id = params[:user_id] || @letter.user_id
    @letter.referee_id = params[:referee_id] || @letter.referee_id
    @letter.title = params[:title] || @letter.title
    @letter.recipient_info = params[:recipient_info] || @letter.recipient_info
    @letter.date = params[:date] || @letter.date
    @letter.section_background = params[:section_background] || @letter.section_background
    @letter.section_relationship = params[:section_relationship] || @letter.section_relationship
    @letter.section_strengths = params[:section_strengths] || @letter.section_strengths
    @letter.section_closer = params[:section_closer] || @section_closer

    @letter.save
    render 'show.json.jb'
  end 

  def destroy
    letter = Letter.find(params[:id])
    letter.destroy
    render json: {message: "Letter successfully destroyed"}
  end 
end
