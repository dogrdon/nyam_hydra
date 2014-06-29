class Page < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: Datastreams::PageMetadata
  
  #associate with books and ephemera
  belongs_to :book, :property=> :is_part_of
  belongs_to :ephemera, :property=> :is_part_of
  
  
  has_attributes :number, datastream: 'descMetadata', multiple: false
  has_attributes :text, datastream: 'descMetadata', multiple: false
  has_attributes :notes, datastream: 'descMetadata', multiple: false
  has_attributes :description, datastream: 'descMetadata', multiple: true
  
  
  has_file_datastream "pageContent"
  
end