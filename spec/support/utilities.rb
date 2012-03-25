
#method for getting full title
def full_title(page_title)
	base_title = "Ruby on Rails Tutorial Sample App"
	return base_title if page_title.blank?
	return "#{base_title} | #{page_title}"
end
