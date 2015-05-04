require 'formula'

class Nim < Formula
  homepage "http://nim-lang.org/"

  url "http://nim-lang.org/download/nim-0.11.0.tar.xz"
  sha1 '5cbad487c94d0dd4b8cbd52486dd43b1ccf671fb'
  version "0.11.0"

  def install
    system "/bin/sh", "build.sh"
    system "/bin/sh", "install.sh", prefix
    (prefix/"nim").install "compiler"
    bin.install_symlink prefix/"nim/bin/nim"
  end
end
