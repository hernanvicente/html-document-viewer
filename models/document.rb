class Document
  include Mongoid::Document
  embeds_many :images, cascade_callbacks: true
  accepts_nested_attributes_for :images

  field :name,        type: String
  field :author,      type: String
  field :description, type: String
  field :html_code,   type: String

  validates :author, :description, :name, :html_code, presence: true

end
