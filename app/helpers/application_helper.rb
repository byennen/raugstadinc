module ApplicationHelper
  
  def is_active?(page_type)
    "active" if @type == page_type
  end
  
end
