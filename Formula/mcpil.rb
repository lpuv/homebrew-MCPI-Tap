# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mcpil < Formula
  desc "Launcher for mcpi built in Python and C"
  homepage "https://github.com/MCPI-Devs/MCPIL"
  url "https://github.com/MCPI-Devs/MCPIL/archive/master.zip"
  version "0.6.2"
  sha256 "67fddc14b523bd89f0b18f76cbf1b4542460d84b7414db68d43a5906c0150df8"
  license "GPL-2.0-or-later"
  depends_on "gamer4life1/mcpi-tap/python"
  depends_on "tcl-tk"

  # depends_on "cmake" => :build

  def install
    system "mkdir #{prefix}/bin/"
    system "cp ./src/mcpil.py #{prefix}/bin/mcpil"
    #system "cp ./src/mcpim.py #{prefix}/lib/python3/dist-packages/"
    system "cp ./src/mcpim.py #{prefix}/bin/mcpim"
    system "chmod a+x #{prefix}/bin/mcpil"
    system "chmod a+x #{prefix}/bin/mcpim"
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    #system "./configure", "--disable-debug",
    #                      "--disable-dependency-tracking",
    #                      "--disable-silent-rules",
    #                      "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
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
