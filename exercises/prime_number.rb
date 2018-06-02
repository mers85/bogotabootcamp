def is_prime?(n)
  if n <= 1
    return false
  end
  for div in 2..(n - 1)
    if n % div == 0
       return false
    end
  end
  return true
end
