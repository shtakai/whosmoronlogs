class UdonJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "puts logging"
    logger.debug "logger.debug logging"
    puts args.first
    args.first.shits.create if args.first
  end
end
