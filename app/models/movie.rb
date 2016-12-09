class Movie < ActiveRecord::Base

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :directors
  has_one :poster, foreign_key: :id
  has_one :annotation, foreign_key: :id
  has_many :trailers
  has_many :reviews

  delegate :watched,   to: :annotation
  delegate :ignore,    to: :annotation
  delegate :watchlist, to: :annotation

end
