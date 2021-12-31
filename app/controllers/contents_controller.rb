class ContentsController < ApplicationController
  def index
    contents = Content.all
    render json: contents
  end

  private 

  def the_content_exists?
    params[:id] && Content.exists?(params[:id])
  end

  def content_params
    params.require(:content).permit(:title, :year, :content_type, :details)
  end
end
