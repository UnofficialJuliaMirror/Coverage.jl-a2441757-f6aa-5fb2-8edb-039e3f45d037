#######################################################################
# Coverage.jl
# Input: Code coverage and memory allocations
# Output: Useful things
# https://github.com/JuliaCI/Coverage.jl
#######################################################################
module Coverage
    using CoverageCore
    using LibGit2

    export FileCoverage
    export LCOV
    export analyze_malloc
    export amend_coverage_from_src!
    export clean_file
    export clean_folder
    export get_summary
    export merge_coverage_counts
    export process_cov
    export process_file
    export process_folder

    const CovCount = CoverageCore.CovCount
    const FileCoverage = CoverageCore.FileCoverage
    const amend_coverage_from_src! = CoverageCore.amend_coverage_from_src!
    const clean_file = CoverageCore.clean_file
    const clean_folder = CoverageCore.clean_folder
    const get_summary = CoverageCore.get_summary
    const iscovfile = CoverageCore.iscovfile
    const merge_coverage_counts = CoverageCore.merge_coverage_counts
    const process_cov = CoverageCore.process_cov
    const process_file = CoverageCore.process_file
    const process_folder = CoverageCore.process_folder

    include("coveralls.jl")
    include("codecovio.jl")
    include("lcov.jl")
    include("memalloc.jl")
    include("parser.jl")
end
