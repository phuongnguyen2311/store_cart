require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/movies.csv"),headers:true) do |row|
   
   Movie.find_or_create_by(title:row[0],release_year:row[1],price:row[2],desciption:row[3],imdb_id:row[4],poster_url:row[5],video_url:row[6])
	
end
