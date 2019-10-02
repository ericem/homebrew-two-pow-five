class Serveme < Formula
  desc "Super Simple Static File Server"
  homepage "https://github.com/ericem/two-pow-five/tree/master/serveme"
  url "https://github.com/ericem/two-pow-five/raw/master/serveme/release/serveme-0.1.0.tar.gz"
  sha256 "6173aa68c4410e161ebc9a0f3665f0f25c882caea50113ae586e94a0ff523134"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/serveme/release"
    cellar :any
    sha256 "af345f2d2e330d3e18461acc57c328c063437c16bf48c6cae00534cd738c6e6b" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
