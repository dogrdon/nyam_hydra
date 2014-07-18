class Datastreams::EphemeraPageMetadata < ActiveFedora::OmDatastream
  
  set_terminology do |t|
    t.root(path: "fields")
    t.text(index_as: :stored_searchable)
    t.cdmid
    t.notes
    t.child_of
    t.object_type
    t.filename
  end
  
  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
  
  def prefix
    
    #prefix here for namespace
    
  end
  
end