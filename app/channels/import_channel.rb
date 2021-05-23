class ImportChannel < ApplicationCable::Channel
  def subscribed
    # import id is sent from button click in web client
    stream_from "import_channel_#{params[:import_id]}"
  end

  def unsubscribed; end
end
