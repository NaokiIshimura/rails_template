class DownloadController < ApplicationController
  def index
  end

  def donwlonad_data
    send_data 'hogehoge',
              :filename => 'hoge.txt',
              :type => 'text/plain',
              :disposition => 'attachment'
  end
end
