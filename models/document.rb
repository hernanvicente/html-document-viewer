class Document
  include Mongoid::Document

  field :name,        type: String
  field :author,      type: String
  field :description, type: String
  field :html_code,   type: String

  validates :author, :description, :name, :html_code, presence: true

end
