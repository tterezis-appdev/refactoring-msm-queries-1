# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
def movie
  a_id=self.actor_id

  matching_movies=Actor.where({:id=> a_id})

  return matching_movies.at(0) 
end

end
