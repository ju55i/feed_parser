class FeedParser
  class Dsl
    def self.[](type)
      send(type)
    end
    def self.rss
      {
        :title => "/rss/channel/title",
        :url => "/rss/channel/link",
        :item => "/rss/channel/item",
        :item_guid => "guid",
        :item_link => "link",
        :item_title => "title",
        :item_categories => "category",
        :item_author => "creator",
        :item_description => "description",
        :item_content => "encoded",
      }
    end
    def self.atom
      {
        :title => "/feed/title",
        :url => "/feed/link[@rel='self']",
        :alternate_url => "/feed/link[@rel='alternate']",
        :item => "/feed/entry",
        :item_guid => "id",
        :item_link => "link",
        :item_title => "title",
        :item_categories => "category",
        :item_author => "author/name",
        :item_description => "summary",
        :item_content => "content",
      }
    end
    def self.rdf
      {
        :title => "/rdf:RDF/channel/title",
        :url => "/rdf:RDF/channel/@rdf:about",
        :item => "/rdf:RDF/item",
        :item_guid => "",
        :item_link => "link",
        :item_title => "title",
        :item_categories => "dc:subject",
        :item_author => "dc:creator",
        :item_description => "description",
        :item_content => "content:encoded",
      }
    end
  end
end
