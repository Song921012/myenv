using PkgTemplates

tem = Template(;
    user = "Song921012",
    authors = "Pengfei Song",
    julia = v"1.6",
    plugins = [
        License(; name = "MIT"),
        GitHubActions(),
        TravisCI(),
        Codecov(),
        Coveralls(),
        AppVeyor(),
        Documenter{GitHubActions}(),
    ]
)
tem("Mathepia")
