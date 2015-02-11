# scrapeitout

scrapeitout is a ruby script with two methods to scrape text or images from a website's html tags.

example usage:

This will return all the text inside <html>
scrape_tag_text('html')

This will return all the images inside the <body> tag
scrape_tag_image('body')

This will return all the imagess inside the the tag with class <div class="example_class">
scrape_tag_image('div.example_class')