class EphemeraPage < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: Datastreams::EphemeraPageMetadata
  
  #associate with ephemera
  belongs_to :ephemera, :property=> :is_part_of
  
  
  has_attributes :number, datastream: 'descMetadata', multiple: false
  has_attributes :text, datastream: 'descMetadata', multiple: false
  has_attributes :notes, datastream: 'descMetadata', multiple: false
  
  
  has_file_datastream "pageContent"
  
end