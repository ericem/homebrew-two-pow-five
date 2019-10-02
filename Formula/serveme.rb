class Serveme < Formula
  desc "Super Simple Static File Server"
  homepage "https://github.com/ericem/two-pow-five/tree/master/serveme"
  url "https://github.com/ericem/two-pow-five/raw/master/serveme/release/serveme-0.1.0.tar.gz"
  sha256 "3663a6c596114098baf51d7f8701891848fdee11db9010b2ed64a525248c5bbd"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/serveme/release"
    cellar :any
    sha256 "34c18600dae4e43d228be1b3e88195679d1498376ede39e467a2902a3bd1d317 " => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
