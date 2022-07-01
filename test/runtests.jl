using Test

@testset "first round" begin
  @test 2 == 2
end

using Template
@testset "test foo" begin
  @test foo(5.0) == 10.0
  @test foo(4.0) == foo(foo(2.0))

  @test foo(5) == 10
  @test foo(4) == foo(foo(2))
end

@testset "test bork" begin
  x = rand(5)
  @test bork(x) == 5
  @test bork(x) != 6
end
