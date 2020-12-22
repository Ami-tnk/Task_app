class FindersController < ApplicationController
  def finder
    @model = params["finder"]["model"]
    @value = params["finder"]["value"]
    @how = params["finder"]["how"]
    @datas = finder_for(@model, @value, @how)
  end

  def match(model, value)
    if model == 'user'
      User.where(name: value)
    elsif model == 'task'
      Task.where(name: value)
    end
  end

  def partial(model, value)
    if model == 'user'
      User.where("name LIKE?", "%#{value}%")
    elsif model == 'task'
      Task.where("name LIKE?", "%#{value}%")
    end
  end

  def finder_for(model, value, how)
    case how
    when 'match'
      match(model,value)
    when 'partial'
      partial(model,value)
    end
  end

end
