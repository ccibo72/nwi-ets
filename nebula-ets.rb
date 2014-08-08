require 'sinatra'

class YakApp < Sinatra::Base
  get '/' do
    def youtube_embed(youtube_url)
      if youtube_url[/youtu\.be\/([^\?]*)/]
        youtube_id = $1
      else
        youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
        youtube_id = $5
      end
      %Q{<iframe title="YouTube video player" width="1280" height="720" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe>}
    end
    "<h1>Nebulaworks:  Explore the Stars from Cloud Foundry</h1>"+youtube_embed('youtu.be/PlU1cwJLINc')
  end
end
