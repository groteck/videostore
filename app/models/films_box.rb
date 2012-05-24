class FilmsBox < ActiveRecord::Base
  belongs_to :user
  belongs_to :film
  belongs_to :rent
end
