class Api::V1::FreewritesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Freewrite.all
  end

  def create
    freewrite = current_user.freewrites.create(
      title: freewrite_params[:title],
      description: freewrite_params[:text]
    )

    respond_to do |format|
      format.json { redirect_to freewrites_path }
    end
  end

  def destroy
    Freewrite.destroy(params[:id])
  end

  def update
    freewrite = Freewrite.find(params[:id])

    freewrite.update(title: params[:freewrite][:title])
    freewrite.update(description: params[:freewrite][:text])

    render json: freewrite
  end

  private

  def freewrite_params
    params.require(:freewrite).permit(:id, :title, :text)
  end
end
