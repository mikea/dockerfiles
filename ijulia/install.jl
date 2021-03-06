Pkg.init()
Pkg.update()

for pkg in ["IJulia", 
            # JuliaPro
            "DataStructures",
            "Calculus",
            "DataFrames",
            "StatsBase",
            "Distributions",
            "HypothesisTests",
            "GLM",
            "JuMP",
            "Optim",
            "Roots",
#            "ODBC",
#            "JDBC",
            "Gadfly",
            "PyPlot",
            "Interact",
            "PyCall",
            "JSON",
            "HDF5",
            "JLD",
            # Other Packages
            "Iterators",
            "BenchmarkTools",
            "ProfileView",
            ]
  println("Installing ", pkg)
  Pkg.add(pkg)
  pkgsym = Symbol(pkg)
  eval(:(using $pkgsym))
end
