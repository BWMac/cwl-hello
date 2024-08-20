#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool

requirements:
  - class: DockerRequirement
    dockerPull: bwmac2/ubuntu:22.04

baseCommand: [echo, "Hello World"]

inputs:
  dummy_file:
    type: File
    inputBinding:
      position: 1

outputs:
  hello_output:
    type: stdout

stdout: output.txt
