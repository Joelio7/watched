class Episode < ApplicationRecord
  belongs_to :season
  belongs_to :user
  def self.incomplete
    where(watched: false).order('id DESC')
  end

  def self.complete
    where(watched: true).order('id DESC')
  end
end
