class Api::RecipientsController < ApplicationController

  # before_action :authenticate_user

  def index
    @recipients = Recipient.all

    @recipients = @recipients.order(id: :asc)

    render 'index.json.jb'

  end 

  def create
    @recipient = Recipient.new(
                                first_name: params[:first_name],
                                last_name: params[:last_name],
                                title: params[:title],
                                company: params[:company],
                                address: params[:address],
                                city: params[:city],
                                state: params[:state],
                                zip: params[:zip],
                                referee_id: params[:referee_id]
                                )
    if @recipient.save
      render "show.json.jb"
    else
      render json: {errors: @recipients.errors.full_messages}, status: :unprocessable_entity
    end
  end 

  def show
    @recipient = Recipient.find(params[:id])
    render 'show.json.jb'
  end 

  def update
    @recipient = Recipient.find(params[:id])

    @recipient.first_name = params[:first_name] || @recipient.first_name
    @recipient.last_name = params[:last_name] || @recipient.last_name
    @recipient.title = params[:title] || @recipient.title
    @recipient.company = params[:company] || @recipient.company
    @recipient.address = params[:address] || @recipient.address
    @recipient.city = params[:city] || @recipient.city
    @recipient.state = params[:state] || @recipient.state
    @recipient.zip = params[:zip] || @recipient.zip
    @recipient.referee_id = params[:referee_id] || @recipient.referee_id

    @recipient.save
    render 'show.json.jb'
  end 

  def destroy
    recipient = Recipient.find(params[:id])
    recipient.destroy
    render json: {message: "Recipient successfully destroyed"}
  end 
end

