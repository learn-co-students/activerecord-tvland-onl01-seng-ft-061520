class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actor_list
      "#{first_name} #{last_name}"
    end
  end