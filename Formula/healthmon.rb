class Healthmon < Formula
  desc "Process Health Monitor"
  homepage "https://github.com/ericem/two-pow-five/tree/master/healthmon"
  url "https://github.com/ericem/two-pow-five/raw/master/healthmon/release/healthmon-0.1.0.tar.gz"
  sha256 "cda8c90dce4a291f6afb6fc721dd2ceb6dd937de3b2161c3ba6b623f8ddedd33"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/healthmon/release"
    cellar :any
    sha256 "9eea9d60a33a1ac34ece01b680de0a49e1f091f7cb85cf046119779b67d5fca8" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
