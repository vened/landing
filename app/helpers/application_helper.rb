module ApplicationHelper

  def module_to(modules, position)
    html = ""
    for mod in modules
      #html += mod.name == position ? "<h2>#{mod.title}</h2>" : ""
      #html += mod.name == position ? mod.body : ""
      html += mod.name == position ? mod.body : ""
    end
    html.html_safe
  end
  
end
