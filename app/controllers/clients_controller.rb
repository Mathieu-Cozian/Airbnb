class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all
  end

  def show
    # TO DO
  end

  def new
    @client = Client.new
    @client.build_user
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to @client, notice: "Client was successfully created."
    else
      render :new, alert: "client was not created."
    end
  end

  def edit
    # TO DO
  end

  def update
    if client.update(client_params)
      redirect_to clients_path, notice: "Client was successfully updated."
    else
      render :edit, alert: "client was not updated."
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path, notice: "Client was successfully destroyed."
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:nb_apartments, user_attributes: [:email, :password, :password_confirmation])
  end
end
