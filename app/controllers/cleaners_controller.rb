class CleanersController < ApplicationController
  # GET /cleaners
  def index
    @cleaners = Cleaner.all
  end

  # GET /cleaners/:id
  def show
  end

  # GET /cleaners/new
  def new
    @cleaner = Cleaner.new
    @cleaner.build_user # Prepare a nested user form (if needed)
  end

  # POST /cleaners
  def create
    @cleaner = Cleaner.new(cleaner_params)

    if @cleaner.save
      redirect_to @cleaner, notice: 'Cleaner was successfully created.'
    else
      render :new
    end
  end

  # GET /cleaners/:id/edit
  def edit
  end

  # PATCH/PUT /cleaners/:id
  def update
    if @cleaner.update(cleaner_params)
      redirect_to @cleaner, notice: 'Cleaner was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cleaners/:id
  def destroy
    @cleaner.destroy
    redirect_to cleaners_url, notice: 'Cleaner was successfully deleted.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cleaner
    @cleaner = Cleaner.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cleaner_params
    params.require(:cleaner).permit(:service_area, :special_equipment, user_attributes: [:name, :email, :password])
  end
end
