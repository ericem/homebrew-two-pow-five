class Getipservr < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/getipservr"
  url "https://github.com/ericem/two-pow-five/raw/master/getipservr/release/getipservr-0.1.0.tar.gz"
  sha256 "c0caef311f0229c88483a30d0a0a2f03062a2da1ca3e0f1756daf5211622ecba"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/getipservr/release"
    cellar :any
    sha256 "a9b52b63697e0f08993fe65ffd72d666c9f743dde3c9f5482b5235270ff65d50" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
