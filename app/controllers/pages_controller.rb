class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  def home
  end

  def cleaner
    @cleaner = User.where(role: "cleaner")
  end

end
