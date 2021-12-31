class ContentsController < ApplicationController
  def index
    contents = Content.all
    render json: contents
  end

  def show
    if the_content_exists?
      content = Content.find_by_id(params[:id])
      render json: content
    else
      render json: {error: "Content not found."}
    end
  end

  def create
    content = Content.new(content_params)

    if content.save
      render json: content
    end
  end

  def destroy
    content = Content.find_by_id(params[:id])
    title = content.title
    content.destroy
    render json: {alert: "#{title} was deleted."}
  end

  private 

  def the_content_exists?
    params[:id] && Content.exists?(params[:id])
  end

  def content_params
    params.require(:content).permit(:title, :year, :content_type, :details)
  end
end
