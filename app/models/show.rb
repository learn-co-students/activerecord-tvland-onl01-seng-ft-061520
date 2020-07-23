class Show < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    belongs_to :network



    ## SOLUTION is wrong!!!!!!!!!!!!!!!!
    # def actors_list
    #     self.actors.map{|actor| actor.full_name}
    # end

    def actors_list
        self.characters.map{|character| character.actor.full_name}
    end


    # Define a method called #actors_list that returns an Array of the full names of each actor associated with the a show. 

    ## My Original Solution ##
#     def actors_list
# 
#         all_actor_ids = []

#         self.characters.map do |char|
#             all_actor_ids << char.actor_id
#         end

#         all_actor_ids.map do |i|
#             actor_name = Actor.where("id = ?", i)
#             actor_name[0].full_name
#         end
#     end
end