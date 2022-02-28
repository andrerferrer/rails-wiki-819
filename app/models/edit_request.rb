class EditRequest < ApplicationRecord
  belongs_to :section
  enum status: { pending: 0, approved: 1, rejected: -1 }
end
