class PodcastsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @podcast = Podcast.find params["id"]
  end

  def index
    @podcasts = Podcast.all
  end

  def destroy
  end
end
