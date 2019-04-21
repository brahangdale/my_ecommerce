module ApplicationHelper
	def link_to_add_photo(title, f, associattion)
		partial = "photo_field"
		options = {}
		html_options = {}
		locals = {}

		new_object = f.object.class.reflect_on_association(associattion).klass.new
		fields = f.fields_for(associattion, new_object, child_index: 'new_record') do |photo|
		  render(partial, locals.merge!( builder: photo))
		end

		# The rendered fields are sent with the link within the data-form-prepend attr
		html_options['data-form-prepend'] = raw CGI::escapeHTML( fields )
		html_options['class'] = 'add-new-photo'
		html_options['href'] = 'javascript://'

		content_tag(:a, title, html_options)
	end
end