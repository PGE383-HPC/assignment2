#!/usr/bin/env julia
#
# Copyright 2025 John T. Foster
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
using Test

@testset "Solution Tests" begin
    root_path = dirname(@__FILE__)*"/../" 
    
    @testset "test_for_files1_lorem2" begin
        @test isfile(root_path*"./files1/lorem2.txt")
    end

    @testset "test_for_files1_lorem3" begin
        @test isfile(root_path*"./files1/lorem3.txt")
    end

    @testset "test_for_files2_lorem2" begin
        @test isfile(root_path*"./files2/lorem2.txt")
    end

    @testset "test_for_files2_lorem3" begin
        @test isfile(root_path*"./files2/lorem3.txt")
    end

    @testset "test_lorem3_content_1" begin
        lines = readlines(root_path*"./files1/lorem3.txt")
        @test lines[10][7:13] == "numquam"
    end

    @testset "test_lorem3_content_2" begin
        lines = readlines(root_path*"./files2/lorem3.txt")
        @test lines[8][18:22] == "velit"
    end

    @testset "test_lorem3_content_1_private" begin
        lines = readlines(root_path*"./files1/lorem3.txt")
        @test lines[1][32:38] == "dolorem"
    end

    @testset "test_lorem3_content_2_private" begin
        lines = readlines(root_path*"./files2/lorem3.txt")
        @test lines[8][18:22] == "velit"
    end

end
