# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mcpicentral < Formula
  desc "Minecraft Pi centralized API"
  homepage "https://github.com/MCPI-Devs/mcpi-central"
  url "https://github.com/MCPI-Devs/mcpi-central/archive/v0.2.1.zip"
  version "0.2.1"
  sha256 "78f32c898a215f29600a8848cde0a0af17b94e51aff99b57b565c0cea81ffcf0"
  license "GPL-2.0-or-later"
  depends_on "python"
  #depends_on "gamer4life1/mcpi-tap/python"
  #depends_on "tcl-tk"

  # depends_on "cmake" => :build

  def install
    system "mkdir -p /home/linuxbrew/.linuxbrew/Cellar/python@3.8/3.8.5/lib/python3.8/site-packages/mcpicentral/"
    system "cp -a ./src/. /home/linuxbrew/.linuxbrew/Cellar/python@3.8/3.8.5/lib/python3.8/site-packages"
    system "cp -a ./src/. #{prefix}/lib
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test MCPIL`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
