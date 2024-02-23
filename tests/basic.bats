#!/usr/bin/env bats

load test_helper

@test "display version information" {
  run tfc --version
  assert_success
}

@test "display help message" {
  run tfc --help
  assert_success
}
