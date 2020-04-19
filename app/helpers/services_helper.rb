module ServicesHelper
  # Action Text renders headings as <h1>
  # I don't want it conflicting with service.title which should be <h1>
  # So render other headings as <h2>
  def content_for_service(service)
    service.content.to_s.gsub('h1>', 'h2>').html_safe
  end
end
