class BookPage < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: Datastreams::BookPageMetadata
  
  #associate with books 
  belongs_to :book, :property=> :is_part_of
  
  
  has_attributes :number, datastream: 'descMetadata', multiple: false
  has_attributes :text, datastream: 'descMetadata', multiple: false
  has_attributes :notes, datastream: 'descMetadata', multiple: false
  
  
  has_file_datastream "pageContent"
  
end