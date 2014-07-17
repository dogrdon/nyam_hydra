class EphemeraMetadata < ActiveFedora::OmDatastream
  
  set_terminology do |t|
    t.root(path: "fields")
    t.title(index_as: :stored_searchable)
    t.creator(index_as: :stored_searchable)
    t.subject(index_as: :stored_searchable, :facetable)
    t.description(index_as: :stored_searchable)
    t.publisher(index_as: :stored_searchable)
    t.date(index_as: :stored_searchable, :facetable)
    t.tag(index_as: :stored_searchable)
    t.contributor(index_as: :stored_searchable)
    t.coverage(index_as: :stored_searchable, :facetable)
    t.text(index_as: :stored_searchable)
    t.notes(index_as: :stored_searchable)
    t.cdmid
    t.child_of
    t.object_type
    t.identifier
    t.format
    t.source
    t.relation
    t.related_to
    t.technique
    t.rights
    t.date_created
    t.repository
    t.doc_type
    t.width
    t.height
    t.language
    t.audience
    t.cdmcreated
    t.cdmmodified
    
  
  end
  
  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end
  
  def prefix
    
    # set a datastream prefix here for namespacing
    
  end
  
end