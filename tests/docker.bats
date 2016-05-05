#!/usr/bin/env bats
load test_helpers

@test "[$TEST_FILE] Check Docker client version" {
    run docker version
    [[ ${lines[0]} == "Client version: 1.7.1" ]]
}

@test "[$TEST_FILE] Check if Docker daemon is accessible" {
    run docker version
    [[ ${lines[5]} =~ "Server version:" ]]
}
