class PositionSerializer < ActiveModel::Serializer
  attributes :id, :ticker, :volume, :price
  has_one :portfolio
end
