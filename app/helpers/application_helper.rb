module ApplicationHelper
	# returns the full tiitle on the per-pge basis.
	def full_title (page_title)
		base_title = "Ruby on rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
