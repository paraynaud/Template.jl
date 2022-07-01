module Template

export f
export foo, bork

"""
    f()
Prints hello world!  
"""
f() = println("hello world!")

include("file1.jl")
include("file2.jl")

end
