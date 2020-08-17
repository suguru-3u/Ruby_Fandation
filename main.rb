class Task
  attr_accessor :task

  def initialize(task:)
    self.task = task
  end

  def info
    return "抱えているタスクは#{self.task}です。"
  end

end
