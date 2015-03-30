class SpartanBasketball < ActiveRecord::Base
  validates_presence_of :player_name, :player_number
end
