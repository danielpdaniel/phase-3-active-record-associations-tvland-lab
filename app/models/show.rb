class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    actors = []
    self.characters.each do |character|
        # actors << Actor.where(id: character.actor_id).full_name
        actors << character.actor.full_name
    end
    actors
  end

  def sorry 
    "We're sorry about passing on John Mulaney's pilot"
  end
end