class EpisodesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @episodes = Episode.order released_at: :desc
    @un_watched_episodes = Episode.incomplete
    if !(current_user.episodes.nil?)
      @watched_episodes = current_user.episodes
    end
  end

  def complete
    episode = Episode.find(params[:episode_id])
    current_user.episodes << episode
    Episode.where(id: params[:episode_id]).update_all(watched: true)
    redirect_to request.referer
  end
end
