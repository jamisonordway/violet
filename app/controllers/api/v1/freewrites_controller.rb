class Api::V1::FreewritesController < ApplicationController
  def index
    render json: Freewrite.all
  end

  def create
    freewrite = Freewrite.create(title: params[:title], description: params[:text])
    render json: freewrite
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

  def article_params
    params.require(:freewrite).permit(:id, :title, :text)
  end
end
