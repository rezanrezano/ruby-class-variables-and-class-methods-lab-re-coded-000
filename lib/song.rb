class Song
attr_accessor :name , :artist,:genre,:count


@@count=0
@@artists=[]
@@genres=[]
def initialize(name,artist,genre)
   @name=name
   @artist=artist
    @genre=genre
    @@count+=1
@@artists<<@artist
@@genres<<@genre
 end
 def self.count
   @@count
 end
 def self.artists
   @@artists.uniq
 end
 def self.genres
   @@genres.uniq
 end
 def self.genre_count
   result={}
   @@genres.each do |genre|
     if result[genre]
       result[genre]+=1
     else
       result[genre]=1
   end
end
   result
 end
 def self.artist_count
   result={}
   @@artists.each do |artist|
     if result[artist]
       result[artist]+=1
     else
       result[artist]=1
   end
end
   result
 end
  end
