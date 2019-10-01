class Certinfo < Formula
  desc "Certificate Information Viewer"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certinfo"
  url "https://github.com/ericem/two-pow-five/raw/master/certinfo/release/certinfo-0.1.0.tar.gz"
  sha256 "a7f83662100eb02a24d820c7edfa16d91059458009d20315593f40125877ecc7"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certinfo/release"
    cellar :any
    sha256 "21e666ad5aa2158263ff9bd5f21507317ba8053f5aa5b70db6fbecf439f28618" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
