class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :success ]

  def home
  end
end
