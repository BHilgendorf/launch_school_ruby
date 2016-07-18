def count_occurences(vehicles)
  vehicle_count = {}

  vehicles.each do |type|
    if vehicle_count.has_key?(type)
       vehicle_count[type] += 1
    else
      vehicle_count[type] = 1
    end
  end

  vehicle_count.each do |type, count|
  puts "#{type} => #{count}"
  end

end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 
            'motorcycle', 'motorcycle', 'car', 'truck']

count_occurences(vehicles)

