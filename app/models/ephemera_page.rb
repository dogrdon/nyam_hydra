class EphemeraPage < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: Datastreams::EphemeraPageMetadata
  
  #associate with ephemera
  belongs_to :ephemera, :property=> :is_part_of
  
  
  has_attributes :cdmid, datastream: 'descMetadata', multiple: false
  has_attributes :text, datastream: 'descMetadata', multiple: false
  has_attributes :notes, datastream: 'descMetadata', multiple: false
  has_attributes :child_of, datastream: 'descMetadata', multiple: false
  has_attributes :object_type, datastream: 'descMetadata', multiple: false
  has_attributes :filename, datastream: 'descMetadata', multiple: false
  
  
  has_file_datastream "pageContent"
  
end