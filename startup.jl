ENV["PYTHON"] = "/home/aidishage/miniconda3/bin/python"
#ENV["CONDA_JL_HOME"]="/home/aidishage/miniconda3"
#ENV["CONDA_JL_HOME"]="/home/aidishage/miniconda3/envs/fenics"
#ENV["CONDA_JL_CONDA_EXE"] = "/home/aidishage/miniconda3/bin/conda"
ENV["MADNLP_HSL_SOURCE_PATH"] = "/home/aidishage/hsl"
ENV["JULIA_PARDISO"] = "/home/aidishage/myenv/lib/libpardiso600-GNU800-X86-64.so"
#ENV["MADNLP_MA27_SOURCE_PATH"] = "/home/aidishage/hsl/ma27/"
#ENV["MADNLP_MA57_SOURCE_PATH"] = "/home/aidishage/hsl/ma57/"
#ENV["MADNLP_MA77_SOURCE_PATH"] = "/home/aidishage/hsl/hsl_ma77/"
#ENV["MADNLP_MA86_SOURCE_PATH"] = "/home/aidishage/hsl/hsl_ma86/"
#ENV["MADNLP_MA97_SOURCE_PATH"] = "/home/aidishage/hsl/hsl_ma97/"
ENV["GUROBI_HOME"]="/opt/gurobi952/linux64"
ENV["HSL_MA57_PATH"]="/home/aidishage/hsl/hsl_ma57-5.3.2.tar.gz"
ENV["HSL_MA97_PATH"]="/home/aidishage/hsl/hsl_ma97-2.7.2.tar.gz"
ENV["JUPYTER"] = "/home/aidishage/.local/bin/jupyter"
#ENV["JULIA_PARDISO"] = "/usr/local/lib"
ENV["JULIA_PYTHONCALL_EXE"] = "@PyCall" # optional
ENV["JULIA_CONDAPKG_BACKEND"] = "Null"  # optional
ENV["JULIA_PARDISO"] = "/home/aidishage/myenv/lib"
#ENV["JULIA_PKG_SERVER"] = "https://pkg.julialang.org"
#try
#    using PkgServerClient
#catch e
#        @warn "error while importing PkgServerClient" e
#end
try
    using Revise
catch e
    @warn "Error initializing Revise" exception = (e, catch_backtrace())
end
atreplinit() do repl
    try
        @eval using OhMyREPL
    catch e
        @warn "error while importing OhMyREPL" e
    end
end

if VERSION >= v"1.4"
    try
        using PkgServerClient
    catch e
        @warn "error while importing PkgServerClient" e
    end
end
ENV["JULIA_PKG_SERVER"] = "https://mirrors.utsc.edu.cn/julia"
using InteractiveUtils

ENV["JULIA_EDITOR"] = "lvim"

InteractiveUtils.define_editor(
    r"lvim", wait=true) do cmd, path, line
    `$cmd +$line $path`
end
