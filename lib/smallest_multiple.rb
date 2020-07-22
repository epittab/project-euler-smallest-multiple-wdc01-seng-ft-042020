# Implement your procedural solution here!

def factor(num)

    factor_hash = {}
    i = 2
    
    while (i <= num) do
        if (num % i == 0)
            num /= i
            if (factor_hash[i])
                factor_hash[i] += 1
            else
                factor_hash[i] = 1
            end
        else
            i += 1
        end
    end
    return factor_hash
end


def main(min, max)

    factorization_hash = {}

    (min..max).each do |num|
        factor(num).each do |k, v|
            if (factorization_hash[k])
                if factorization_hash[k] < v
                    factorization_hash[k] = v
                end
            else
                factorization_hash[k] = v
            end
        end
    end

    total = 1

    factorization_hash.each do |k, v|
        total *= k**v
    end

    return total
 
end


p main(1, 20)