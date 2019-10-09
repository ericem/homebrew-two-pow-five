class Healthstatus < Formula
  desc "Process Health Status"
  homepage "https://github.com/ericem/two-pow-five/tree/master/healthstatus"
  url "https://github.com/ericem/two-pow-five/raw/master/healthstatus/release/healthstatus-0.1.0.tar.gz"
  sha256 "34349f9a0f648dcfee596b2a70eaf82d3c79787ec633de642fd552f4a6e0514f"

 bottle do
    root_url "https://github.com/ericem/two-pow-five/raw/master/healthstatus/release"
    cellar :any
    sha256 "e9912f3ed8acb7064fc5363301b4d6184f1cd855b413b1792c0088bbbf010d6c" => :mojave
  end

  depends_on "crystal" => :build
  depends_on "openssl"
  depends_on "libevent"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

end
