class ShitJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "puts logging"
    logger.debug "logger.debug logging"
  end
end
