class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    # from actor name - actor.id then match to characters.actor_id and show_id then show.name
    characters.collect do |character|
      "#{character.name} - #{character.show.name}"
    end .join
  end
end
