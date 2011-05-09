class Golf
  def self.hole1(a)
    a.inject(1){|m,e| e*=m }
  end
  
  def self.hole2(s)
    s.split(" ").sort_by{|w| w[1,1]}.join(" ")
  end

  def self.hole3(n)
    r = n
    for c in 1..(n-1) do r = r * c; end
    r
  end
  
  def self.hole4(a)
    a.map{|s|
      s.gsub(/man\(.*\)/, 'hat(\0)').gsub(/dog\((.*?)\)/, 'dog(\1(bone))').gsub(/cat/, 'dead')
    }
  end

  def self.hole5(a)
    o = []
    a.length.times do |i|
      parts = a.length - i
      o += parts.times.map{|j| a[j,i+1]}
    end
    o
  end
  
  def self.hole6(n)
    r = []
    for c in 1..n do
      t = c%3
      f = c%5
      r << (t == 0 && f == 0 ? "fizzbuzz" : (t == 0 ? "fizz" : (f == 0 ? "buzz" : c)))
    end
    r
  end  
end
  
