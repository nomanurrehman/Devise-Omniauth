module DeviseHelper
  
  def devise_error_messages!

    return "" unless devise_error_messages?

    messages = resource.errors.map { | key, message | "<h4><i class=\"icon fa fa-check\"></i> Alert!</h4>".concat(message) }

    html = <<-HTML
    <div class="alert alert-success alert-dismissible">
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
      #{messages}
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    !resource.errors.empty?
  end

end
