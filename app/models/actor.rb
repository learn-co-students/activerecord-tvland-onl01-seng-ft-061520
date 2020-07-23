class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


    # Write a method in the Actor class, #full_name, that returns the first and last name of an actor.
    def full_name
        self.first_name + " " + self.last_name  
    end




    ## SOLUTION
    # def list_roles
    #     characters.collect do |character|
    #         "#{character.name} - #{character.show.name}"
    #     end
    # end


    # Write a method, #list_roles, that lists all of the characters that actor has alongside the show that the character is in. 
    # ex Sterling K. Brown:   ['Randall Pearson - This is Us']
    ## NOTE: self.characters[0].name => Randall Pearson
    ## NOTE: self.characters[0].show.name => This is Us
    def list_roles

        char_names = []
        show_names = []
        characters_with_shows = []
        index = 0

        self.characters.map do |c|
            char_names << c.name
        end
        self.shows.map do |s|
            show_names << s.name
        end

        while index < char_names.length
            characters_with_shows << (char_names[index] + " - " + show_names[index])
            index += 1
        end

        characters_with_shows.map do |c_and_s|
            c_and_s
        end
    end

end