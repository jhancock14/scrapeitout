# author: jhancock14 2013-2-8
# MIT License

require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Scraper

  def initialize
    url = "http://urlgoeshere"
    @data = Nokogiri::HTML(open(url))
  end

  # scrapes specified tag and returns its text
  def scrape_tag_text tag
    index = 0
    html_tags = @data.css(tag)[index]
    if @data.css(tag).count > 0 && html_tags != nil
      html_tags.each do |i|
        puts html_tags.text
      end
    else
      puts 'no ' + tag + ' tags found'
    end
  end

  # scrapes specified tag and returns image links if any
  def scrape_tag_image tag
      pics = @data.css(tag)
      if @data.css('img/@src').count > 0 && pics != nil
        pics.each do |i|
          puts pics.css('img/@src')
        end
      else
        puts 'no ' + tag + ' tags with images found'
      end
  end
end

Scraper.new.scrape_tag_image('html')
Scraper.new.scrape_tag_text('html')
