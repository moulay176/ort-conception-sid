def fizzbuzz(n)

  tab=[]

  i = 1

  while i <= n
    if i%3 == 0 and i%5 == 0
      tab.append("fizzbuzz")   
    elsif i%3 == 0 
      tab.append("fizz")
    elsif i%5 == 0 
      tab.append("buzz")
    else
      tab.append(i)
    end
    i=i+1
  end

  p(tab)
  
end

fizzbuzz(15)