module OkReadGSheet

using JSON, GoogleDrive
include("readgsheet.jl")
export readgsheet, get_data, get_GSID, set_data!


end
