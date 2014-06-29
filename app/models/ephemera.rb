class Ephemera < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: EphemeraMetadata
  
  #associate with pages
  has_many :pages, :property=> :is_part_of
  
  has_attributes :title, datastream: 'descMetadata', multiple: false
  has_attributes :creator, datastream: 'descMetadata', multiple: true
  has_attributes :subject, datastream: 'descMetadata', multiple: true
  #has_attributes :description, datastream: 'descMetadata', multiple: true
  has_attributes :publisher, datastream: 'descMetadata', multiple: false
  has_attributes :date, datastream: 'descMetadata', multiple: false
  has_attributes :identifier, datastream: 'descMetadata', multiple: false
  has_attributes :format, datastream: 'descMetadata', multiple: true
  has_attributes :source, datastream: 'descMetadata', multiple: false
  has_attributes :relation, datastream: 'descMetadata', multiple: false
  has_attributes :coverage, datastream: 'descMetadata', multiple: true
  has_attributes :rights, datastream: 'descMetadata', multiple: true
  has_attributes :contributors, datastream: 'descMetadata', multiple: true
  #has_attributes :text, datastream: 'descMetadata', multiple: false
  #has_attributes :notes, datastream: 'descMetadata', multiple: true
  has_attributes :related_to, datastream: 'descMetadata', multiple: false
  has_attributes :technique, datastream: 'descMetadata', multiple: true
  has_attributes :date_created, datastream: 'descMetadata', multiple: false
  has_attributes :repository, datastream: 'descMetadata', multiple: true
  has_attributes :doc_type, datastream: 'descMetadata', multiple: true
  has_attributes :height, datastream: 'descMetadata', multiple: false
  has_attributes :width, datastream: 'descMetadata', multiple: false
  has_attributes :language, datastream: 'descMetadata', multiple: true
  has_attributes :audience, datastream: 'descMetadata', multiple: true
  has_attributes :tag, datastream: 'descMetadata', multiple: true

  


  
end