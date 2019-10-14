class PositionSerializer < ActiveModel::Serializer
  attributes :id, :name, :ticker, :volume, :price
  has_one :portfolio
end
