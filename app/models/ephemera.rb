class Ephemera < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: EphemeraMetadata
  
  #associate with pages
  has_many :pages, :property=> :is_part_of
  
  has_attributes :title, datastream: 'descMetadata', multiple: false
  has_attributes :creator, datastream: 'descMetadata', multiple: true
  has_attributes :subject, datastream: 'descMetadata', multiple: true
  has_attributes :description, datastream: 'descMetadata', multiple: true
  has_attributes :publisher, datastream: 'descMetadata', multiple: false
  has_attributes :date, datastream: 'descMetadata', multiple: false
  has_attributes :identifier, datastream: 'descMetadata', multiple: false
  has_attributes :format, datastream: 'descMetadata', multiple: true
  has_attributes :source, datastream: 'descMetadata', multiple: false
  has_attributes :relation, datastream: 'descMetadata', multiple: false
  has_attributes :coverage, datastream: 'descMetadata', multiple: false
  has_attributes :rights, datastream: 'descMetadata', multiple: true
  has_attributes :contributor, datastream: 'descMetadata', multiple: true

  


  
end