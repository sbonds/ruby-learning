def yield_number
    yield 4
end

______________

yield_number { |number| array << number }

p array