class Movie < ActiveRecord::Base

	def poster
		"http://ia.media-imdb.com/images/M/#{poster_url}"
	end
	def imdb
		 "http://www.imdb.com/title/#{imdb_id}/"
	end
	def video
		"http://www.imdb.com/video/imdb/#{video_id}/?ref_=tt_ov_vi"
	end
	
	def cart_action(current_user_id)
      if $redis.sismember "cart#{current_user_id}", id
        "Remove from"
      else
        "Add to"
      end
    end
end
