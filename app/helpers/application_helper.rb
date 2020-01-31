module ApplicationHelper
  def sortable(column, title=nil, url)
    title ||= column.titleize
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    (column == sort_column && sort_direction == "asc") ? title << " <i class='fas fa-sort-amount-down-alt'></i>" : title << " <i class='fas fa-sort-amount-up'></i>"
    link_to "#{title}".html_safe, "#{url}?direction=#{direction}&sort=#{column}" << (params[:search] ? "&search=#{params[:search]}" : ''), remote: false, class: 'sortable'
  end

  def link_to_fa_button(options)
    url = options[:url]
    text = options[:text] ? "<span>&nbsp#{options[:text]}</span>" : ''
    title = options[:title] || nil
    remote = options[:remote].nil? ? true : options[:remote]
    data = options[:data] || nil
    icon = options[:icon] || nil
    id = options[:id] || nil
    html_class = "btn " << (options[:html_class] ? " #{options[:html_class]}" : '')
    target = options[:target] || nil
    method = options[:method] ||nil
    disabled = options[:disabled] || nil
    link_to "<span class='fa #{icon}'></span> #{text}".html_safe, url, title: title, remote: remote, data: data, id: id, class: html_class, target: target, method: method, disabled: disabled
  end

  def fa_button_no_active(options)
    text = options[:text] ? "<span>&nbsp#{options[:text]}</span>" : ''
    title = options[:title] || nil
    icon = options[:icon] || nil
    id = options[:id] || nil
    html_class = "btn" << (options[:html_class] ? " #{options[:html_class]}" : '')
    "<span disabled class='fa #{html_class} #{icon}'> #{text}</span>".html_safe
  end

  def button_tag_fa(options)
    text = options[:text] ? "<span>&nbsp#{options[:text]}</span>" : ''
    title = options[:title] || nil
    icon = options[:icon] || nil
    data = options[:data] || nil
    name = options[:name] || nil
    button_tag type: 'submit', data: data, name: name, title: title, class: 'btn btn-default' do
      "<i class='fa #{icon}'></i> #{text}".html_safe
    end
  end

  def flash_messages(flash)
    success, error, warning, info, alert, f_messages = '','','','','',''
    flash.each do |name, msg|

      case name
      when 'success'
        success << msg
      when 'error'
        error << msg
      when 'warning'
        warning << msg
      when 'alert'
        warning << msg
      when 'timedout'
        puts 'here'
        #todo review i18n for
      else
        info << msg
      end
    end

    f_messages << "<div class='alert alert-success' role='alert'><span class='fa fa-lg fa-check-circle'></span> #{success}</div>" if success.size > 0
    f_messages << "<div class='alert alert-danger' role='alert'><span class='fa fa-lg fa-exclamation-triangle'></span> #{error}</div>" if error.size > 0
    f_messages << "<div class='alert alert-warning' role='alert'><span class='fa fa-lg fa-exclamation-triangle'></span> #{warning}</div>" if warning.size > 0
    f_messages << "<div class='alert alert-info' role='alert'><span class='fa fa-lg fa-info-circle'></span> #{info}</div>" if info.size > 0

    f_messages.size > 0 ? f_messages.html_safe : nil
  end

  def link_to_add_row(name, path,  f, association, **args)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.simple_fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize, b: builder)
    end
    link_to(name, path , class: "add_fields " + args[:class], remote: args[:remote], id: args[:id], data: {id: id, fields: fields.gsub("\n", "")})
  end

end
