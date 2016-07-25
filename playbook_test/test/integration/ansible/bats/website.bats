#!/usr/bin/env bats

@test "Curl the website" {
  run curl http://web
  [ "$status" -eq 0 ]
}
#@test "git binary is found in PATH" {
#  run which git
#  [ "$status" -eq 0 ]
#}
