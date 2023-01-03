require 'securerandom'

def good
  ["88f4fbd642b69fac", "1cc77eae72", "34b56ab7"].sample
end

def bad
  ["2b5eba53a32699", "0444e582", "3e080b"].sample
end

def sku
  rand(1..100) > 12 ? good : bad
end

def skus
  4036.times do
   puts sku
  end
end

def units
  4036.times do
   puts rand(50..500)
  end
end

units
# skus
