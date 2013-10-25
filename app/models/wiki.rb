class Wiki < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  attr_accessible :summary, :title
end
