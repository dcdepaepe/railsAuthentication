class SpartanBasketball < ActiveRecord::Base
  validates_presence_of :player_name
  validates :player_number, :numericality => { :greater_than => 1, :less_than => 100 }
end
