class Review < ActiveRecord::Base
  has_attached_file :image, styles: {thumb: "300x300#"}
  validates_attachment :image, content_type: {content_type: ["image/jpg", "image/jpeg", "image/png"]}
end
