class Gallery < ActiveRecord::Base
  has_attached_file :image, styles: {medium: "1280x800>", thumb: "200x200#"}
  validates_attachment :image, content_type: {content_type: ["image/jpg", "image/jpeg", "image/png"]}
end
