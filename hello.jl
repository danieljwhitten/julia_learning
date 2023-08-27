#%%
function plus_two(x)
    return x+2
end

times_two(x) = x*2

squared = x ->x^2
#%% learning functions
myWeight(earthWeight, g=9.81) = earthWeight*g/9.81

"""
showing the specification of positional and keyword arguments to functions
"""
function positionalVsKeyword(a, b=2; c, d=4)
    a+b+c+d
end

"""
assess then size of a number (and test if/else specs)
"""
function numSize(x)
    if x<1
        print("$x < 1")
    elseif x<3
        print("$x < 3")
    elseif x<100
        print("$x < 100")
    else
        print("$x is huge!!!")
    end
end  

#%%

"""
Make strings pretty, but ignore numbers
"""
function prettyString(x)
    if typeof(x) == String
        print("\\_,.~$x~.,_/\n")
    else
        type = typeof(x)
        print("$x is not a string, it is a $type - it remains ugly.\n")
    end
end


"""
prettify strings from a list, but only the first 5 elements
"""
function pretty5Strings(x)
    for (i,s) in enumerate(x)
        if i <= 5
            prettyString(s)
        end
    end
end

"""
check type of array and weed out non-strings before prettifying
"""
function prettyOnlyStrings(x::Vector)
    if typeof(x) != Vector{String} 
        out = filter(x -> typeof(x) == String, x)
    else
        out = x
    end
    pretty5Strings(out)
end

#%%