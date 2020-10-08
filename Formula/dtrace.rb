# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DTract < Formula
  desc "DTrace is a comprehensive dynamic tracing framework originally created by Sun Microsystems for troubleshooting kernel and application problems on production systems in real time. "
  homepage "http://dtrace.org/"
  url "ftp://crispeditor.co.uk/pub/release/website/dtrace/dtrace-20160613.tar.bz2"
  version "20160613"
  sha256 "1eeb8a10c3be6b57c2cc915f839fddb279380cd6f3462b312348c25331545a5b"
  license "CDDL"
  depends_on "perl"
  depends_on "make"

  # depends_on "cmake" => :build

  def install
    system "tools/get-deps.pl"
    system "make all"
    system "make install"
    system "make load"
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
