class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    a_list = []
    self.actors.each do |a|
      a_list << a.full_name
    end
    a_list
  end
end
