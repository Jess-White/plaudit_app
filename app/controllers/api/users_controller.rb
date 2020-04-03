class Api::UsersController < ApplicationController

  def index
    @users = User.all

    @users = @users.order(id: :asc)

    render 'index.json.jb'
  end 

  def create
    @user = User.new( 
                      title: params[:title],
                      company_name: params[:company_name],
                      company_address: params[:company_address],
                      company_city: params[:company_city],
                      company_zip: params[:company_zip],
                      email: params[:email],
                      background: params[:background],
                      first_name: params[:first_name],
                      last_name: params[:last_name],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation]
                      )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end 
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jb'
  end 

  def update
    @user = User.find(params[:id])

    @user.title = params[:title] || @user.title
    @user.company_name = params[:company_name] || @user.company_name
    @user.company_address = params[:company_address] || @user.company_address
    @user.company_city = params[:company_city] || @user.company_city
    @user.company_zip = params[:company_zip] || @user.company_zip
    @user.email = params[:email] || @user.email
    @user.background = params[:background] || @user.background
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation

    @user.save
    render 'show.json.jb'
  end 

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "User successfully destroyed"}
  end 
end 
