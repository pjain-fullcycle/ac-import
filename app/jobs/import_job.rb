class ImportJob < ApplicationJob
  queue_as :default

  def perform(import_id, path)
    User.call(path)

    ActionCable.server.broadcast(
      "import_channel_#{import_id}",true
    )
  end
end
