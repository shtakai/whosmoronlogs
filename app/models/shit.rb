class Shit < ApplicationRecord
  belongs_to :udon

  after_create :emit_shit_job

  private

  def emit_shit_job
    ShitJob.perform_now("Fucked up shit job#{SecureRandom.uuid}")
  end
end
