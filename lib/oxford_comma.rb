def oxford_comma(array)
     if array.length == 1
        array.join
     elsif array.length == 2 
        array.join(" and ")
     else
        array.collect do |x|
            if x == array[-1]
                array[-1] = "and " << x 
            end
        end
        array.join(", ")
    end
end