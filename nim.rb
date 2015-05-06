require 'formula'

class Nim < Formula
  homepage "http://nim-lang.org/"

  url "http://nim-lang.org/download/nim-0.11.2.tar.xz"
  sha1 '2693022e35e31196d14ec2d1fbf11a90abac34cf'
  version "0.11.2"

  def install
    system "/bin/sh", "build.sh"
    prefix.install "compiler", "bin", "lib", "config", "doc"
  end
end
