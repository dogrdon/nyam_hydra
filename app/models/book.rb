class Book < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: BookMetadata
  
  #associate with pages
  has_many :pages, :property=> :is_part_of
  
  has_attributes :title, datastream: 'descMetadata', multiple: false
  has_attributes :author, datastream: 'descMetadata', multiple: true
  has_attributes :published, datastream: 'descMetadata', multiple: false
  
end