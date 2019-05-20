class Notebook < ApplicationRecord
  validates :marca, :valor, presence: true
end
