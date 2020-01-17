class Players < ApplicationRecord
  validates_presence_of :name, :email, :current_ranking

end