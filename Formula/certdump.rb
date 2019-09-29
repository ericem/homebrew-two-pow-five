class Certdump < Formula
  desc "Certificate Dumper"
  homepage "https://github.com/ericem/two-pow-five/tree/master/certdump"
  url "https://github.com/ericem/two-pow-five/raw/master/certdump/release/certdump-0.2.0.tar.gz"
  sha256 "8ad091d34203f58ca76be6ed20cbda36394fb1013b9e93c6137402cd4538be31"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/certdump/release"
    cellar :any
    sha256 "b4b177f4b22e2cdf92f1d7bd1def4b4e4b4b98025076bab45759023211ec4e74" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
