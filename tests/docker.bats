#!/usr/bin/env bats
load test_helpers

@test "[$TEST_FILE] Check Docker client version" {
    run docker version
    [[ ${lines[0]} == "Client:" ]]
    [[ ${lines[1]} =~ "1.9.1" ]]
}

@test "[$TEST_FILE] Check if Docker daemon is accessible" {
    run docker version
    [[ ${lines[7]} =~ "Server:" ]]
    [[ ${lines[8]} =~ "Version:" ]]
}
