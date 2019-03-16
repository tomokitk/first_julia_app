module MyGenie

using Genie, Genie.Router, Genie.Renderer, Genie.AppServer

function main()
  Base.eval(Main, :(const UserApp = MyGenie))

  include("genie.jl")

  Base.eval(Main, :(const Genie = MyGenie.Genie))
  Base.eval(Main, :(using Genie))
end

main()

end
