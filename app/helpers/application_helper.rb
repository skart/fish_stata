module ApplicationHelper
	def formatted_date(date)
  		date.strftime("%b %d")
	end
	def formatted_date_long(date)
  		date.strftime("%B %d, %Y")
	end
end