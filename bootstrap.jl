  cd(@__DIR__)
  using Pkg
  pkg"activate ."

  function main()
    include("MyGenie.jl")
  end

  main()
