function fish_right_prompt
  switch $fish_bind_mode
    case insert
      set_color green
      echo insert
    case visual
      set_color magenta
      echo visual
    case default
      set_color blue
      echo normal
  end

  set_color normal
  set_color -b normal
end
