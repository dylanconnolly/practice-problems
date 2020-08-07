def decompress_rl_elist(nums)
    things = nums.each_slice(2).map do |slice|
      array = Array.new
      (array << slice[1]) * slice[0]
    end.flatten
end

decompress_rl_elist([1,2,3,4])
