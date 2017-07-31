module ApplicationHelper
  def header(text)
    content_for(:header) { text.to_s }
  end


  def page_title(text)
    content_for(:page_title) { "CUPGE Toulouse -- " + text }
  end

end
