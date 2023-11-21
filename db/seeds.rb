cup_path = 'doc/cup.txt'

File.foreach(Rails.root.join(cup_path)) do |line|
  TrackCategory.create(name: line.chomp)
end

track_path = 'doc/track.txt'

i = 1
j = 1
File.foreach(Rails.root.join(track_path)) do |line|
  if j == 5
    i += 1
    j = 1
  end
  Track.create(name: line.chomp, track_category_id: i)
  j += 1
end

mogi_path = 'doc/mogi_type.txt'

File.foreach(Rails.root.join(mogi_path)) do |line|
  MogiType.create(name: line.chomp)
end