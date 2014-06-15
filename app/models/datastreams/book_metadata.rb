class BookMetadata < ActiveFedora::OmDatastream
  
  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.author(index_as: :stored_searchable)
    t.published(index_as: :stored_searchable)
  end
  
  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
  
  def prefix
    
    # set a datastream prefix here for namespacing
    
  end
  
end