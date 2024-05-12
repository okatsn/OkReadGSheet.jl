using Suppressor
@testset "readgsheet.jl" begin
    url = "https://docs.google.com/spreadsheets/d/1TUk6gxnq-9hU50h30Rdb7xOXaH5NFKnmW67AD9myTkA/edit?usp=sharing"

    df = readgsheet(url)
    for k in ["ID", "Name", "Value"]
        @test k in names(df)
    end
    @test df.ID[1] == 10112345
    @test df.Name[2] == "Blas"

    # Make sure nothing is printed.
    msg = @capture_out readgsheet(url)
    @test msg == ""
end
