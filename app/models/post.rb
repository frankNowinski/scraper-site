require 'nokogiri'
require 'open-uri'

class Post
  attr_accessor :clips, :url

  def initialize(url)
    @doc = Nokogiri::HTML(open(url))
  end

  def call
    @clips = @doc.search("div.mozaique div.thumb-block div.thumb")
    binding.pry
    @clips.each do |clip|
      get_clip(clip)
    end
  end

  def get_clip(clip)
    binding.pry
  end
end
