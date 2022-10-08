using Documenter, Interactive_TDC

DocMeta.setdocmeta!(Interactive_TDC, :DocTestSetup,
    :(using Interactive_TDC); recursive=true)

makedocs(
    sitename="Interactive_TDC",
    modules=[Interactive_TDC],
    format=Documenter.HTML(
        prettyurls=get(ENV, "CI", nothing) == "true",
        assets=["assets/aligned.css"]),
    pages=[
        "Home" => "index.md"
    ],
    strict=true
)

deploydocs(
    repo="github.com/FedericoLicandro/Interactive_TDC.jl.git",
    push_preview=true
)
