class BookMetadata < ActiveFedora::OmDatastream
  
  set_terminology do |t|
    t.root(path: "fields")
    t.title
    t.author
    t.created_date
  end
  
  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
  
  def prefix
    
    # set a datastream prefix here for namespacing
    
  end
  
end