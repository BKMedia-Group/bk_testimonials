class Testimonial < ActiveRecord::Base
  attr_accessible :body, :company, :name, :position, :published

  scope :published, where(published: true)
end
