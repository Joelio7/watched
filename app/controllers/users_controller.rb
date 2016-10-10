class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @un_watched_episodes = Episode.incomplete
    if !(current_user.episodes.nil?)
      @watched_episodes = current_user.episodes
    end
  end
  end
