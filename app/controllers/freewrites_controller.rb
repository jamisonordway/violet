class FreewritesController < ApplicationController
  def index
    @freewrites = Freewrite.where(user: current_user)
  end
end
