class Book < ActiveFedora::Base
  
  has_metadata 'descMetadata', type: BookMetadata
  
  has_attributes :title, datastream: 'descMetadata', multiple: false
  has_attributes :author, datastream: 'descMetadata', multiple: true
  has_attributes :created_date, datastream: 'descMetadata', multiple: false
  
end