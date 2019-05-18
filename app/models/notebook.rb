class Notebook < ApplicationRecord
  attr_acessor :marca, :valor

  validates_presence_of :marca, :valor
end
