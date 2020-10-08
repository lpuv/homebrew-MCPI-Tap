# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mcpiproxy < Formula
  desc "A Minecraft Pi Proxy to allow players to connect to remote servers."
  homepage "https://github.com/MCPI-Devs/proxy"
  url "https://github.com/MCPI-Devs/proxy/archive/v0.2.0.zip"
  version "0.2.0"
  sha256 "0d17326d04275fa3f2e70329d0854274d881e4c4fe603d9e712299d1d11eeea4"
  license "GPL-2.0-or-later"
  #depends_on "gamer4life1/mcpi-tap/mcpicentral"
  depends_on "gamer4life1/mcpi-tap/custompython"
  #depends_on "tcl-tk"

  # depends_on "cmake" => :build

  def install
     #system "mkdir -p /home/linuxbrew/.linuxbrew/Cellar/custompython/3.7.9/lib/python3.7/site-packages"
     system "cp ./proxy.py /home/linuxbrew/.linuxbrew/Cellar/custompython/3.7.9/lib/python3.7/site-packages/mcpip.py"
     system "chmod a+x /home/linuxbrew/.linuxbrew/Cellar/custompython/3.7.9/lib/python3.7/site-packages/mcpip.py"
     system "mkdir -p #{prefix}/bin"
     system "ln -s /home/linuxbrew/.linuxbrew/Cellar/custompython/3.7.9/lib/python3.7/site-packages/mcpip.py #{prefix}/bin/mcpip"
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
