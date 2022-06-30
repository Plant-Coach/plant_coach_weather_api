class Alert
  attr_reader :id, :source, :event, :start, :end, :description, :tags
  
  def initialize(data)
    @id = nil
    @source = data[:sender_name]
    @event = data[:event]
    @start = data[:start]
    @end = data[:end]
    @description = data[:description]
    @tags = data[:tags]
  end
end
