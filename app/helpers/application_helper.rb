module ApplicationHelper
  def active_sidebar(controller)
    controller_name.eql?(controller) ? 'active' : ''
  end
end
