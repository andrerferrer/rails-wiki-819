class Section < ApplicationRecord
  belongs_to :post
  has_many :edit_requests
end
