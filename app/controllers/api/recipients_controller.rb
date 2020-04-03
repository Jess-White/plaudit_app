class Api::RecipientsController < ApplicationController

  before_action :authenticate_user

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
      render json: {errors: @recipients.errors.messages}, status: :unprocessable entity
    end 

    def show
      @recipient = Recipient.find(params[:id])
      render 'show.json.jb'
    end 

    def update
      @recipient = Recipient.find(params[:id])

      @recipient.







end

# create_table "recipients", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.string "title"
#     t.string "company"
#     t.string "address"
#     t.string "city"
#     t.string "state"
#     t.string "zip"
#     t.integer "referee_id"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end
