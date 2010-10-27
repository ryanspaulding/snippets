module SnipHelper

	def build_link(snip_id)

		link << ""

		if request.port == "80"
		
			link <<	"<p><a href=\"http://#{request.host}/snip/#{snip_id}\">http://#{request.host}/snip/#{snip_id}</a></p>".html_safe
			link << "<pre>http://#{request.host}/snip/#{snip_id}</pre>".html_safe
		elsif request.port == "443"
			link <<	"<p><a href=\"https://#{request.host}/snip/#{snip_id}\">https://#{request.host}/snip/#{snip_id}</a></p>".html_safe
			link << "<pre>https://#{request.host}/snip/#{snip_id}</pre>".html_safe

		else
			link <<	"<p><a href=\"http://#{request.host}:#{request.port}/snip/#{snip_id}\">http://#{request.host}:#{request.port}/snip/#{snip_id}</a></p>".html_safe
			link << "<pre>http://#{request.host}:#{request.port}/snip/#{snip_id}</pre>".html_safe
		end

		return link
	end
end
