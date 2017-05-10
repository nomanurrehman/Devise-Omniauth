module ApplicationHelper
  def get_alert_class(key)
    digest = HashWithIndifferentAccess.new(notice: 'success', error: 'danger')
    digest[key].present? ? digest[key] : key
  end
end
