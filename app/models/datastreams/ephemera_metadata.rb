class EphemeraMetadata < ActiveFedora::OmDatastream
  
  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.creator(index_as: :stored_searchable)
    t.subject(index_as: :stored_searchable)
    t.description(index_as: :stored_searchable)
    t.publisher(index_as: :stored_searchable)
    t.date(index_as: :stored_searchable)
    t.identifier
    t.format
    t.source
    t.relation
    t.coverage
    t.rights
    t.contributor
  
  end
  
  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
  
  def prefix
    
    # set a datastream prefix here for namespacing
    
  end
  
end