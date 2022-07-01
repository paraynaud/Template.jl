To create a gh-page see :
https://docs.github.com/en/pages/quickstart

To deploy the documentation you have to see
https://juliadocs.github.io/Documenter.jl/stable/man/hosting/

```julia
using DocumenterTools
DocumenterTools.genkeys(user="my_user_name", repo="MyPackage.jl")
```

To build locally the documentation you must activate the `docs/` environnement:
```julia
julia> ] activate docs/
```
and then include the `make.jl` file
```julia
include("docs/make.jl")
```
The generated .html files are stored in `docs/build/`, an editor (like vs-code) will display the result.

**Warning:** Template doesn't have access to the module `Template.jl`.
You can add it by using:
```julia
julia> ]
pkg> dev ../Template.jl
```
Make sure to remove the `Template` dependency in `src/notice.md` when you push new stuff.
