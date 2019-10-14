class Getip < Formula
  desc "URL Status Checker"
  homepage "https://github.com/ericem/two-pow-five/tree/master/getip"
  url "https://github.com/ericem/two-pow-five/raw/master/getip/release/getip-0.1.0.tar.gz"
  sha256 "fd6ec653bb61380807a7e9c6a1f1c7697d84fc161471fd4b9c5143d1788ee45c"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/getip/release"
    cellar :any
    sha256 "0a902e19b460e20f16fa235bd75dd9cf4e8f2f8903ee6419390d2f987c94e006" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
