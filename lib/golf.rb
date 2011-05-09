class Golf
  def Golf::hole1 a
   a.inject{ |m,e| m*e }
  end
  def Golf::hole7 a
    a
  end
  def Golf::hole8 n
   r=[]
   (1..n).each { |n| r << f(n) }
   r
  end
  def Golf::f n
    if n == 0 || n == 1
      n
    else
      f(n-1) + f(n-2)
    end
  end
end
