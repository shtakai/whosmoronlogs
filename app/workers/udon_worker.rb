class UdonWorker
  include Sidekiq::Worker

  def perform(*args)
    # TODO: add logging
  end
end
