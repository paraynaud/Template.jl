using Documenter, Template

makedocs(
  modules = [Template],
  doctest = true,
  # linkcheck = true,
  strict = true,
  format = Documenter.HTML(
    assets = ["assets/style.css"],
    prettyurls = get(ENV, "CI", nothing) == "true",
  ),
  sitename = "Template.jl",
  pages = Any["Home" => "index.md", "Tutorial" => "tutorial.md", "Reference" => "reference.md"],
)

deploydocs(repo = "github.com/paraynaud/Template.jl.git", devbranch = "main")

# To create a gh page see :
# https://docs.github.com/en/pages/quickstart
# To deploy the documentation you have to
# https://juliadocs.github.io/Documenter.jl/stable/man/hosting/
# julia> using DocumenterTools
# julia> DocumenterTools.genkeys(user="my_user_name", repo="MyPackage.jl")