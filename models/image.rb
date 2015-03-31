class Image
  include Mongoid::Document
  embedded_in :document
  mount_uploader :file, ImageUploader
end
